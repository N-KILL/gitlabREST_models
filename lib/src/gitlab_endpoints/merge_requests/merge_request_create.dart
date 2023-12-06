import 'dart:convert';

import 'package:gitlab_rest_models/src/models/API/merge_request/merge_request_req.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

/// This function [createGitLabMergeRequest] send a `POST` request into a
/// `gitlab project` based on his `API URL`, the `Project ID` and the `access
/// token` of the user who want to Create the `Merge Request`. <br>
/// If you want to automate this, its better crete a `Project Token` with the
/// correct permissions. <br> <br>
/// Info about how create merge request from the API works: <br>
/// https://docs.gitlab.com/ee/api/merge_requests.html#create-mr <br><br>
/// Info about how to create a personal token: <br>
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
/// Info about how to create a project token: <br>
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
Future<bool> createGitLabMergeRequest({
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  required MergeReqRequestAPIModel mrData,
}) async {
  /// Logger service from (https://pub.dev/packages/logger)
  final logger = Logger();

  // This is the project url where we are going to send the request.
  final projectURL =
      Uri.parse('$gitlabApiUrl/projects/$projectId/merge_requests/');

  // TODO(Nacho): See if I can copy the default name of gitLab
  // Draft: Resolve <"issueName">

  // This is the title of the Merge Request, generated in base of the name
  // of the branches source, and target. This used only when the mrData title
  // is null or an empty string
  final mrTitle = 'Merge: ${mrData.sourceBranch} into ${mrData.targetBranch}';

  final sendBody = {
    'source_branch': mrData.sourceBranch,
    'target_branch': mrData.targetBranch,
    // If mr.data title is empty, or null, we gonna use the generated one
    'title':
        mrData.title == null || mrData.title == '' ? mrTitle : mrData.title,
    'allow_collaboration': mrData.allowCollaboration,
    // Premium feature
    'approvals_before_merge ': mrData.approvalsBeforeMerge,
    'allow_maintainer_to_push': mrData.allowMaintainerToPush,
    'assignee_id': mrData.assigneeId,
    'assignee_ids': mrData.assigneeIds,
    'description': mrData.description,
    'labels': mrData.labels,
    'milestone_id': mrData.milestoneId,
    'remove_source_branch': mrData.removeSourceBranch,
    'reviewer_ids': mrData.reviewerIds,
    // This need a default value: 'false', because with null, it trows '500'
    'squash': mrData.squash ?? false,
    'target_project_id': mrData.targetProjectId,
  };

  // We send the 'POST' request to modify an existing post into the project.
  final response = await http.post(
    projectURL,
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    },
    body: jsonEncode(sendBody),
  );

  /// If the merge request can be created it will return a 200 status code
  /// If not will return an error in his body
  if (response.statusCode == 201) {
    logger.i('Merge Request created correctly, MR name: ${sendBody['title']}');
    return true;
  } else {
    logger
        .e('Error: ${response.statusCode}' '\n' 'Error msg: ${response.body}');
    return false;
  }
}

// TODO(Nacho): Remove this test!!
// void main() {
//   const gitlabApiUrl = 'https://gitlab.com/api/v4';
//   const projectId = '51929660';
//   const accessToken = 'glpat-yqXm2jRtyFZsfTsszRS-';

//   final mrData = MergeReqRequestAPIModel(
//     id: '1',
//     sourceBranch: '8-issue-from-dart',
//     targetBranch: 'main',
//   );

//   createGitLabMergeRequest(
//     gitlabApiUrl: gitlabApiUrl,
//     projectId: projectId,
//     accessToken: accessToken,
//     mrData: mrData,
//   );
// }

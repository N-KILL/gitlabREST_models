import 'dart:convert';
import 'package:gitlab_rest_models/src/models/API/issues/request/issues_req_body.dart';
import 'package:gitlab_rest_models/src/models/API/issues/response/issues_res_body.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

/// This function [createGitLabIssue] send a `POST` request into a `gitlab
/// project` to create an `issue`, based on his `API URL`, the `Project ID` and
/// the `access token` given. And will return the `IID` (Internal ID) of the
/// issue, which can be used to read the issue data<br>
/// If you want to automate this, its better create a `Project Token` with the
/// correct permissions. <br> <br>
/// Info about how this works: <br>
/// https://docs.gitlab.com/ee/api/issues.html#new-issue <br><br>
/// Info about how to create a personal token: <br>
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
/// Info about how to create a project token: <br>
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
Future<IssueAPIResponseModel?> createGitLabIssue({
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  required IssueAPIRequestModel body,
}) async {
  /// Logger service from (https://pub.dev/packages/logger)
  final logger = Logger();

  // This is the project url where we are going to send the request.
  final projectURL = Uri.parse('$gitlabApiUrl/projects/$projectId/issues');

  // This is the body of the request
  final sendBody = {
    'title': body.issueTitle,
    'description': body.description,
    'assignee_id': body.assignedToId,
    'assignee_ids': body.assignedToIds,
    'confidential': body.isConfidential,
    'created_at': body.createdAt,
    'discussion_to_resolve': body.discussionToResolve,
    'due_date': body.dueDate,
    'epic_id ': body.epicId,
    'epic_iid': body.epicInternalId,
    'id': body.issueId,
    'iid': body.issueInternalId,
    'issue_type': body.issueType?.name,
    'labels': body.issueLabels,
    'merge_request_to_resolve_discussions_of': body.mergeRequestInternalId,
    'milestone_id': body.milestoneId,
    'weight': body.weight,
  };

  // We send the 'POST' request to create a new issue in the project.
  final response = await http.post(
    projectURL,
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    },
    body: json.encode(sendBody),
  );

  // Create a map from the response
  final responseMap = jsonDecode(response.body) as Map<String, dynamic>;

  // If the issue is created will return a '201' status.
  // If the issue has an error while trying to create, it will be returned on
  // console.
  if (response.statusCode == 201) {
    // read the iid of the new issue in this var
    final responseIdd = responseMap['iid'] as int;

    logger.i('Issue created correctly, issue iid: $responseIdd');
    return IssueAPIResponseModel.fromJson(response.body);
  } else {
    logger
        .e('Error: ${response.statusCode}' '\n' 'Error msg: ${response.body}');
    return null;
  }
}

// TODO(Nacho): Remove this test!!
// void main() async {
//   const gitlabApiUrl = 'https://gitlab.com/api/v4';
//   const projectId = '51929660';
//   const accessToken = 'glpat-yqXm2jRtyFZsfTsszRS-';

//   const myId = 14547350;

//   final bodyDos = IssueAPIRequestModel(
//     issueTitle: 'Test issue types?',
//     assignedToId: myId,
//     description: 'Issue Description',
//     dueDate: '24-01-01',
//     isConfidential: false,
//     issueLabels: ['test', 'test2'],
//     issueType: IssueTypes.issue,
//   );
//   print(
//     await createGitLabIssue(
//       gitlabApiUrl: gitlabApiUrl,
//       projectId: projectId,
//       accessToken: accessToken,
//       body: bodyDos,
//     ),
//   );
// }

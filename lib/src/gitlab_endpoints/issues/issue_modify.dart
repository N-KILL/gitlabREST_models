import 'dart:convert';
import 'package:gitlab_rest_models/src/models/API/issues/request/issues_req_body.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

/// Logger service from (https://pub.dev/packages/logger)
final logger = Logger();

/// This function [modifyGitLabIssue] send a `PUT` request into a `gitlab
/// project` to modify an `issue`, based on his `API URL`, the `Project ID` and
/// the `access token` given. <br>
/// If you want to automate this, its better create a `Project Token` with the
/// correct permissions. <br> <br>
/// Info about how this works: <br>
/// https://docs.gitlab.com/ee/api/issues.html#edit-issue <br>
/// Info about how to create a personal token: <br><br>
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
/// Info about how to create a project token: <br>
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
Future<bool> modifyGitLabIssue({
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  required int issueId,
  required IssueAPIRequestModel body,
}) async {
  // This is the project url where we are going to send the request.
  final projectURL =
      Uri.parse('$gitlabApiUrl/projects/$projectId/issues/$issueId');

  // TODO(Nacho): Handle premium features

  // This is the body of the request
  final sendBody = {
    'add_labels': body.issueLabelsToAdd,
    'assignee_ids': body.assignedToId,
    'confidential': body.isConfidential,
    'description': body.description,
    'discussion_locked': body.discussionStatus,
    'due_date': body.dueDate,
    // 'epic_id':body.epicId, //! Premium
    // 'epic_iid':body.epicInternalId, //! Premium
    'id': body.issueId,
    'issue_iid': body.issueInternalId,
    'issue_type': body.issueType,
    'labels': body.issueLabels,
    'milestone_id': body.milestoneId,
    'remove_labels': body.issueLabelsToRemove,
    'state_event': body.stateEvent,
    'title': body.issueTitle,
    'updated_at': DateTime.now().toString(),
    'weight ': body.weight,
  };

  // We send the 'PUT' request to modify an existing issue in the project.
  final response = await http.put(
    projectURL,
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    },
    body: json.encode(sendBody),
  );

  // If the issue is created will return a '200' status and it will.
  // If the issue has an error while trying to create, it will be returned on
  // console.
  if (response.statusCode == 200) {
    logger.i('Issue modified correctly');
    return true;
  } else {
    logger
        .e('Error: ${response.statusCode}' '\n' 'Error msg: ${response.body}');
    return false;
  }
}

// TODO(Nacho): Remove this test!!
void main() {
  const gitlabApiUrl = 'https://gitlab.com/api/v4';
  const projectId = '51929660';
  const accessToken = 'glpat-yqXm2jRtyFZsfTsszRS-';

  const myId = 14547350;

  final bodyDos = IssueAPIRequestModel(
    issueTitle: 'testData',
    assignedToId: myId,
    description: 'Issue Description',
    dueDate: '24-01-01',
    isConfidential: false,
    issueInternalId: '1337',
    issueLabels: ['test', 'test2'],
    issueType: 'issue',
  );
  modifyGitLabIssue(
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    accessToken: accessToken,
    issueId: 5,
    body: bodyDos,
  );
}

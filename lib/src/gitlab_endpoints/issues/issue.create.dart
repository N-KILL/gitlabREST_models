// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:gitlab_rest_models/src/models/API/issues/issues.dart';
import 'package:http/http.dart' as http;

/// This function [createGitLabIssue] send a `POST` request into a `gitlab` 
/// project based on his `API URL`, the `Project ID` and the `access token` of 
/// the user who want to create the issue. <br> 
/// If you want to automate this, its 
/// better crete a `Project Token` which the correct permissions. <br> <br> 
/// Info about how to create a personal token: <br> 
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br> 
/// Info about how to create a project token: <br> 
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br> 
Future<void> createGitLabIssue({
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  required IssueAPIModel body,
}) async {
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
    'issue_type': body.issueType,
    'labels': body.issueLabels, 
    'merge_request_to_resolve_discussions_of': body.mergeRequestInternalId,
    'milestone_id': body.milestoneId,
    'weight': body.weight,
  };

  // This is the project url where we are going to send the request.
  final projectURL = Uri.parse('$gitlabApiUrl/projects/$projectId/issues');

  // We send the 'POST' request to create a new post into the project.
  final response = await http.post(
    projectURL,
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    },
    body: json.encode(sendBody),
  );

  /// If the issue is created will return a '201' status and it will.
  /// If the issue has an error while trying to create, it will be returned on
  /// console.
  if (response.statusCode == 201) {
    print('Issue created');
  } else {
    print('Error: ${response.statusCode}');
    print('Error msg: ${response.body}');
  }
}


// TODO(Nacho): Remove this test!!
void main() {
  const gitlabApiUrl = 'https://gitlab.com/api/v4';
  const projectId = '51929660';
  const accessToken = 'glpat-eeTGhz_qPCz44VYtymtj';

  const myId = 14547350;

  final bodyDos = IssueAPIModel(
    issueTitle: 'testData',
    assignedToId: myId,
    description: 'Issue Description',
    dueDate: '24-01-01',
    isConfidential: false,
    issueInternalId: '1337',
    issueLabels: ['test', 'test2'],
    issueType: 'issue',
  );
  createGitLabIssue(
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    accessToken: accessToken,
    body: bodyDos,
  );
}

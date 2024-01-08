import 'dart:convert';
import 'package:gitlab_rest_models/gitlab_rest_models.dart';
import 'package:gitlab_rest_models/src/helpers/generate_issue_body.dart';
import 'package:gitlab_rest_models/src/models/API/issues/request/issues_req_body.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

/// This function [modifyGitLabIssue] send a `PUT` request into a `gitlab
/// project` to modify an `issue`, based on his `API URL`, the `Project ID` and
/// the `access token` given. If you hav premium on `gitlab` remind to set the
/// bool premium on `True`, if you not, the vars `epicId`, and `epicInternalId`
/// will be ignored<br>
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
  required int issueIId,
  required IssueAPIRequestModel body,
  bool premium = false,
}) async {
  /// Logger service from (https://pub.dev/packages/logger)
  final logger = Logger();

  // This is the project url where we are going to send the request.
  final projectURL =
      Uri.parse('$gitlabApiUrl/projects/$projectId/issues/$issueIId');

  // This is the body of the request
  final sendBody = generateBody(body: body, premium: premium);

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

// void main() {
//   const gitlabApiUrl = 'https://gitlab.com/api/v4';
//   const projectId = '51929660';
//   const accessToken = 'glpat-s2axRR49k4dm5j6GTRJZ';

//   const myId = 14547350;

//   final bodyDos = IssueAPIRequestModel();
//   modifyGitLabIssue(
//     gitlabApiUrl: gitlabApiUrl,
//     projectId: projectId,
//     accessToken: accessToken,
//     issueIId: 1348,
//     body: bodyDos,
//   );
// }

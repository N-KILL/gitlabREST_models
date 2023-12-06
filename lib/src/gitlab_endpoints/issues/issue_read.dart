import 'package:gitlab_rest_models/src/models/API/issues/response/issues_res_body.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

/// This function [readGitLabIssue] send a `GET` request into a `gitlab
/// project` to delete an `issue`, based on his `API URL`, the `Project ID` and
/// the `access token` given. Once we receive the issue data, we map into
/// an [IssueAPIResponseModel] object <br>
/// If you want to automate this, its better crete a `Project Token` with the
/// correct permissions. <br> <br>
/// Info about how this works: <br>
/// https://docs.gitlab.com/ee/api/issues.html#single-project-issue<br><br>
/// Info about how to create a personal token: <br>
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
/// Info about how to create a project token: <br>
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
Future<IssueAPIResponseModel?> readGitLabIssue({
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  required int issueIId,
}) async {
  /// Logger service from (https://pub.dev/packages/logger)
  final logger = Logger();

  // This is the project url where we are going to send the request.
  final projectURL =
      Uri.parse('$gitlabApiUrl/projects/$projectId/issues/$issueIId');

  // We send the 'GET' request to read an existing issue of the project based
  // on his IID.
  final response = await http.get(
    projectURL,
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    },
  );

  // If the issue can be read will return a '200' status and it will be mapped
  // into an [IssueAPIResponseModel].
  // If the issue has an error while trying to create, it will be returned on
  // console.
  if (response.statusCode == 200) {
    logger.i('Issue found, creating IssueAPIResponseModel');
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

//   await readGitLabIssue(
//     gitlabApiUrl: gitlabApiUrl,
//     projectId: projectId,
//     accessToken: accessToken,
//     issueIId: 8,
//   );
// }

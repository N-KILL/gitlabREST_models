import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

/// Logger service from (https://pub.dev/packages/logger)
final logger = Logger();

/// This function [deleteGitLabIssue] send a `DELETE` request into a `gitlab
/// project` to delete an `issue`, based on his `API URL`, the `Project ID` and
/// the `access token` given. <br>
/// If you want to automate this, its better crete a `Project Token` with the
/// correct permissions. <br> <br>
/// Info about how this works: <br>
/// https://docs.gitlab.com/ee/api/issues.html#delete-an-issue<br>
/// Info about how to create a personal token: <br><br>
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
/// Info about how to create a project token: <br>
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
Future<bool> deleteGitLabIssue({
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  required int issueIId,
}) async {
  // This is the project url where we are going to send the request.
  final projectURL =
      Uri.parse('$gitlabApiUrl/projects/$projectId/issues/$issueIId');

  // We send the 'DELETE' request to delete an existing issue into the project
  // based on his IID.
  final response = await http.delete(
    projectURL,
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    },
  );

  /// If the issue is deleted successfully will return a '204' status.
  /// If the issue has an error while trying to create, it will be returned on
  /// console.
  if (response.statusCode == 204) {
    logger.i('Issue deleted correctly');
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

  deleteGitLabIssue(
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    accessToken: accessToken,
    issueIId: 7,
  );
}

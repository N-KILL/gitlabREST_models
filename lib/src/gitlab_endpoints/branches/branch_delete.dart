import 'package:gitlab_rest_models/src/helpers/generate_branch_url.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

/// This function [deleteGitLabBranches] send a `DELETE` request into a `gitlab
/// project` based on his `API URL`, the `Project ID` and the `access token` of
/// the user who want to Create the `Branch`. <br>
/// You need a [branchName] to select what branch you want to delete if you want
/// to delete all the merged branches, set the  [removeMergedBranches] on `True`
/// (If you set it on `True`, the [branchName] value will be ignored) <br>
/// Info about how this works: <br>
/// https://docs.gitlab.com/ee/api/branches.html#delete-repository-branch<br><br>
/// If you want to automate this, its better crete a `Project Token` with the
/// correct permissions. <br>
/// Info about how to create a personal token: <br>
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
/// Info about how to create a project token: <br>
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
Future<bool> deleteGitLabBranches({
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  bool removeMergedBranches = false,
  String? branchName,
}) async {
  /// Logger service from (https://pub.dev/packages/logger)
  final logger = Logger();

  // This is the project url where we are going to send the request.
  final projectURL = Uri.parse(
    generateBranchUrl(
      gitlabApiUrl: gitlabApiUrl,
      projectId: projectId,
      removeMergedBranches: removeMergedBranches,
      branchName: branchName,
    ),
  );

  // We send the 'DELETE' request to create a the branch in the project.
  final response = await http.delete(
    projectURL,
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    },
  );

  // If the branch is deleted will return a '204' status.
  // If the issue has an error while trying to create, it will be returned on
  // console.
  if (response.statusCode == 204) {
    if (branchName != null) {
      logger.i('Branch deleted correctly, deleted branch: $branchName');
    } else {
      logger.i('Deleted all the merged branches');
    }
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
//   const accessToken = 'glpat-s2axRR49k4dm5j6GTRJZ';

//   deleteGitLabBranches(
//     gitlabApiUrl: gitlabApiUrl,
//     projectId: projectId,
//     accessToken: accessToken,
//     branchName: '1338-new-issue-2',
//   );
// }

import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

/// This function is for read a gitlab commit information, and return the list
/// of files related to that commit. To use this, you will need, the url of the
/// API, the ID of your project, an accessToken, and the commit SHA.
/// If you want to automate this, its better create a `Project Token` with the
/// correct permissions. <br> <br>
/// Info about how this works: <br>
/// https://docs.gitlab.com/ee/api/commits.html#get-the-diff-of-a-commit <br><br>
/// Info about how to create a personal token: <br>
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
/// Info about how to create a project token: <br>
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
Future<List<String>?> getGitLabCommitFiles({
  // This are for the API permission, and connection
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  // This are for the commit data
  required String commitSha,
}) async {
  // This is the project url where we are going to send the request.
  final projectURL = Uri.parse(
    '$gitlabApiUrl/projects/$projectId/repository/commits/$commitSha/diff',
  );

  // Send the request, and store the response inside of a variable
  final response = await http.get(
    projectURL,
    headers: {'Private-Token': accessToken},
  );

  // If the response is good (Has status 200)
  if (response.statusCode == 200) {
    // Decode the response body
    final commitInfo = json.decode(response.body);

    // If the response is a type [List]
    if (commitInfo is List) {
      // Create a variable to storage the file information
      final fileData = <String>[];

      // For each item on the commitInfo List
      for (final item in commitInfo) {
        // Get the ['diff'] key from each item inside of commitInfo
        final commitFileData = item['diff'];

        // Add to the fileData list,
        fileData.add(commitFileData.toString());
      }

      // Return the list with the files related to the commit as [String]
      return fileData;
    }

    // If not, by default will return null
    return null;
  }

  // If not, by default will return null.
  log(response.statusCode);
  return null;
}

// void main() async {
//   const gitlabApiUrl = 'https://gitlab.com/api/v4';
//   const projectId = '51929660';
//   const accessToken = 'glpat-s2axRR49k4dm5j6GTRJZ';
//   const commitSha = '8a175b8976be98889e762f7e05b9d6eee0aab3c8';

//   final data = await getGitLabCommitFiles(
//     accessToken: accessToken,
//     gitlabApiUrl: gitlabApiUrl,
//     projectId: projectId,
//     commitSha: commitSha,
//   );

//   print(data);
// }

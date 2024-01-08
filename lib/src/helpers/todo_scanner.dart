import 'package:gitlab_rest_models/src/gitlab_endpoints/commits/get_commit_files.dart';
import 'package:gitlab_rest_models/src/helpers/description_formatter.dart';
import 'package:gitlab_rest_models/src/models/to_do/to_do.dart';

/// This function scan a commit files, and read the 'TODOs' of the file and
/// return a [List] of [ToDo] objects. <br>
/// To work, need the:
/// - [gitlabApiUrl] usually this value its the same of the project
/// 'https://gitlab.com/api/v4' <br>
/// - [projectId] its the id of the project, look on the project config
/// - [accessToken] <br>
/// Info about how to create a personal token: <br>
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
/// Info about how to create a project token: <br>
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
/// - [commitSha] this the id of the commit
Future<List<ToDo>?> todoScanner({
  // This are for the API permission, and connection
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  // This are for the commit data
  required String commitSha,
}) async {
  // Call the function [getGitLabCommitFiles], which return a list of files
  // related to the commit
  final data = await getGitLabCommitFiles(
    accessToken: accessToken,
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    commitSha: commitSha,
  );

  // This is the list of 'ToDo' we return at the end of the function
  final todoList = <ToDo>[];

  // With the files we're going to re read the files, looking for a 'TODO'
  if (data != null) {
    // For each file inside of data
    for (final file in data) {
      // If the file contains a 'TODO' commentary on it
      if (file.contains('/ TODO')) {
        // Split the [String] in each line break, and filter the lines, this
        // will have, only existing lines on the file, ignoring deletions, and
        // the alert of 'No newline at end of file'
        final lines = file
            .split('\n')
            .where(
              (line) =>
                  !line.startsWith('-') &&
                  //! (This is not an error, the line has to be read this way)
                  // ignore: unnecessary_string_escapes
                  !line.contains('\ No newline at end of file'),
            )
            .toList();

        // Aux to store all the index, of the 'TODO' lines
        final todoIndexes = <int>[];

        // Aux to store all the index, of the non 'TODO' commentary lines
        final commentaryIndexes = <int>[];

        // Find all the lines with commentary on it
        final commentaryLine =
            lines.where((lines) => lines.contains('//')).toList();

        // For each line with a 'comment' on it
        for (final line in commentaryLine) {
          // We are going to find his index, based on the content of the line
          // And if the line contains a 'TODO'
          final todoLineIndex = lines.indexWhere(
            (element) => element.contains(line) && element.contains('/ TODO'),
          );

          // We are going to find his index, based on the content of the line
          // And if the line not contains a 'TODO'
          final commentLineIndex = lines.indexWhere(
            (element) => element.contains(line) && !element.contains('/ TODO'),
          );

          //? indexWhere can't return false or null, in case, nothing satisfy
          //? the conditions, will return -1, so we verify if the value is
          //? different to -1

          // In case the value is valid, we re going to add the value into the
          // aux list
          if (todoLineIndex != -1) {
            todoIndexes.add(todoLineIndex);
          }

          // In case the value is valid, we re going to add the value into the
          // aux list
          if (commentLineIndex != -1) {
            commentaryIndexes.add(commentLineIndex);
          }
        }

        // For each 'TODO' we found, we re going to read his description.
        // Considering that the description will be the comment lines followed
        // by the 'TODO' comment
        for (final todoLine in todoIndexes) {
          //? This helper is used to remember the difference between 'TODO'index
          //? and comment index, because comment can be multiple lines and 
          //?'TODO' comment is only one. So, on each line we are going to add +1
          //? in the index, but it will be considered part of the description
          // This is an aux used to compare the lines.
          var aux = 1;

          // Aux to store the description
          var description = '';

          // For each comment which is not a 'TODO comment'
          for (final comment in commentaryIndexes) {
            // If the 'commentaryIndex' is following to the 'TODO' comment index
            // , thats mean is the description of it.
            if (comment == (todoLine + aux)) {
              // Add one into the AUX to keep reading inside the for
              aux = aux + 1;

              description = description + lines[comment];
            }
          }

          // Create a [ToDo] instance
          final myToDo = ToDo(
            name: todoFormatter(name: lines[todoLine]),
            description: todoFormatter(description: description),
            assignedUserName: todoFormatter(username: lines[todoLine]),
            priority: int.parse(todoFormatter(priority: lines[todoLine])),
          );

          // Add the [ToDo] object, into the list that the function returns
          todoList.add(myToDo);
        }
      }
    }

    // Return the list of the [ToDo] object
    return todoList;
  }

  // If data is null, return null
  return null;
}

void main() async {
  const gitlabApiUrl = 'https://gitlab.com/api/v4';
  const projectId = '51929660';
  const accessToken = 'glpat-s2axRR49k4dm5j6GTRJZ';
  const commitSha = '7426c3401e62721aca43bc74e2abba00b5b1b3cc';

  final data = await todoScanner(
    accessToken: accessToken,
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    commitSha: commitSha,
  );

  var aux = 0;

  if (data != null) {
    for (final element in data) {
      aux = aux + 1;
      print("Data $aux:");
      print("Name: ${element.name}");
      print("Description: ${element.description}");
      print("User: ${element.assignedUserName}");
      print("Priority: ${element.priority} \n");
    }
  }
}

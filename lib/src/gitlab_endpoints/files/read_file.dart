import 'package:http/http.dart' as http;

// TODO(Nacho): Ver si es necesario dejar esto o borrarlo

/// This function is for read a gitlab file
Future<String?> readGitLabFile({
  // This are for the API permission, and connection
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  // This are for the file path
  required String filePath,
}) async {
  // This is the project url where we are going to send the request.
  final projectURL = Uri.parse(
    '$gitlabApiUrl/projects/$projectId/repository/files/$filePath/raw',
  );

  // Create the request to read de file
  final response = await http.get(
    projectURL,
    headers: {'Private-Token': accessToken},
  );

  if (response.statusCode == 200) {
    print(response.statusCode);
    return response.body;
  } else {
    print(response.statusCode);
    return null;
  }
}

void main() async {
  const gitlabApiUrl = 'https://gitlab.com/api/v4';
  const projectId = '51929660';
  const accessToken = 'glpat-s2axRR49k4dm5j6GTRJZ';
  const filePath = '.pubspec.yaml';

  final data = await readGitLabFile(
    accessToken: accessToken,
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    filePath: filePath,
  );

  print(data);
}

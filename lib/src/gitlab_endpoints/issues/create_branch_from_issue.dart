// ignore_for_file: avoid_print

import 'package:gitlab_rest_models/src/gitlab_endpoints/branches/branch_create.dart';
import 'package:gitlab_rest_models/src/gitlab_endpoints/issues/issue_read.dart';
import 'package:gitlab_rest_models/src/helpers/slug_parse.dart';
import 'package:gitlab_rest_models/src/models/API/issues/response/issues_res_body.dart';

/// This function [createGitLabBranchFromIssue] send a `POST` request into a
/// `gitlab project` from the function [createGitLabBranch] this need
/// the `apiUrl` the `Project ID` and an `access token` for the user who want
/// to Create the `Branch`. <br>
/// Also, you need a `fromRefBranch`, which is the the `Branch name` or
/// `commit SHA` to create branch from. The name will be created based on the
/// issue information <br>
/// Info about how this works: <br>
/// https://docs.gitlab.com/ee/api/branches.html#create-repository-branch
/// If you want to automate this, its better crete a `Project Token` with the
/// correct permissions. <br> <br>
/// Info about how to create a personal token: <br>
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
/// Info about how to create a project token: <br>
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html <br>
Future<bool> createGitLabBranchFromIssue({
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  required IssueAPIResponseModel issue,
  required String fromRefBranch,
}) async {
  // Create an `slug` from the name of the issue with the `slugParse` function
  final slugParseName = slugParse(issue.title);

  // Create the `Branch name` with the format `gitLab` usually do.
  // Example: 'IID' + '-' + 'Name of the Issue on slug format'
  final branchName = '${issue.iid}-$slugParseName';

  // We call the function 'createGitLabBranch' to create the branch, and return
  // his value
  return createGitLabBranch(
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    accessToken: accessToken,
    branchName: branchName,
    fromRefBranch: fromRefBranch,
  );
}

// TODO(Nacho): Remove this test!!
void main() async {
  const gitlabApiUrl = 'https://gitlab.com/api/v4';
  const projectId = '51929660';
  const accessToken = 'glpat-yqXm2jRtyFZsfTsszRS-';

  final issueData = await readGitLabIssue(
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    accessToken: accessToken,
    issueIId: 1337,
  );

  await createGitLabBranchFromIssue(
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    accessToken: accessToken,
    issue: issueData!,
    fromRefBranch: 'main',
  );
}

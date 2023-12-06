import 'package:gitlab_rest_models/src/gitlab_endpoints/branches/branch_create.dart';
import 'package:gitlab_rest_models/src/gitlab_endpoints/issues/issue_read.dart';
import 'package:gitlab_rest_models/src/gitlab_endpoints/merge_requests/merge_request_create.dart';
import 'package:gitlab_rest_models/src/helpers/slug_parse.dart';
import 'package:gitlab_rest_models/src/models/API/issues/response/issues_res_body.dart';
import 'package:gitlab_rest_models/src/models/API/merge_request/merge_request_req.dart';
import 'package:logger/logger.dart';

/// Logger service from (https://pub.dev/packages/logger)
final logger = Logger();

/// This function [createGitLabBranchAndMRFromIssue] send a request into a
/// `gitlab project` API from the function [createGitLabBranch] (Use the
/// `createBranchFromRefBranch` value to decide from which branch you want
/// to create the new one, and the `issue` is used only for grab the name)
/// and then create a `merge request` for the `issue` from the function.
/// (Use the `mergeReqTargetBranch` to select to which branch you want
/// to create te `Merge Request`)
/// [createGitLabMergeRequest] <br>
/// Info about how this works: <br>
/// https://docs.gitlab.com/ee/api/branches.html#create-repository-branch<br>
/// https://docs.gitlab.com/ee/api/merge_requests.html#create-mr<br><br>
/// If you want to automate this, its better crete a `Project Token` with the
/// correct permissions. <br> <br>
/// Info about how to create a personal token: <br>
/// https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html <br>
/// Info about how to create a project token: <br>
/// https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html
Future<bool> createGitLabBranchAndMRFromIssue({
  // This are for the API permission, and connection
  required String gitlabApiUrl,
  required String projectId,
  required String accessToken,
  // This are for the creation of the branch
  required IssueAPIResponseModel issue,
  required String createBranchFromRefBranch,
  // This is for the creation of the merge request
  required String mergeReqTargetBranch,
  bool allowCollaboration = false,
  bool allowMaintainerToPush = false,
  int? assigneeId,
  int? approvalsBeforeMerge,
  List<int>? assigneeIds,
  String? description,
  int? milestoneId,
  bool removeSourceBranch = false,
  List<int>? reviewerIds,
  bool squash = false,
  int? targetProjectId,
  String? title,
}) async {
  // Create an `slug` from the name of the issue with the `slugParse` function
  final slugParseName = slugParse(issue.title);

  // Create the `Branch name` with the format `gitLab` usually do.
  // Example: 'IID' + '-' + 'Name of the Issue on slug format'
  final branchName = '${issue.iid}-$slugParseName';

  // We call the function 'createGitLabBranch' to create the branch, and storage
  // his value in the 'isBranchCreated' var.
  final isBranchCreated = await createGitLabBranch(
    gitlabApiUrl: gitlabApiUrl,
    projectId: projectId,
    accessToken: accessToken,
    branchName: branchName,
    fromRefBranch: createBranchFromRefBranch,
  );

  // We create a 'MergeReqRequestAPIModel' instance for the
  // 'createGitLabMergeRequest' function, with the source, and the target branch
  final mrData = MergeReqRequestAPIModel(
    sourceBranch: branchName,
    targetBranch: mergeReqTargetBranch,
    labels: issue.labels,
    allowCollaboration: allowCollaboration,
    allowMaintainerToPush: allowMaintainerToPush,
    approvalsBeforeMerge: approvalsBeforeMerge,
    assigneeId: assigneeId,
    assigneeIds: assigneeIds,
    description: description,
    milestoneId: milestoneId,
    removeSourceBranch: removeSourceBranch,
    reviewerIds: reviewerIds,
    squash: squash,
    targetProjectId: targetProjectId,
    title: title,
  );

  // if 'isBranchCreated' is true, we try to create the Merge Request, with the
  // function 'createGitLabMergeRequest', and return his value which is a bool
  if (isBranchCreated) {
    logger.i('Attempting to create the merge request');
    return createGitLabMergeRequest(
      gitlabApiUrl: gitlabApiUrl,
      projectId: projectId,
      accessToken: accessToken,
      mrData: mrData,
    );
  } else {
    return false;
  }
}

// TODO(Nacho): Remove this test!!
// void main() async {
//   const gitlabApiUrl = 'https://gitlab.com/api/v4';
//   const projectId = '51929660';
//   const accessToken = 'glpat-yqXm2jRtyFZsfTsszRS-';

//   final issueData = await readGitLabIssue(
//     gitlabApiUrl: gitlabApiUrl,
//     projectId: projectId,
//     accessToken: accessToken,
//     issueIId: 1338,
//   );

//   await createGitLabBranchAndMRFromIssue(
//     gitlabApiUrl: gitlabApiUrl,
//     projectId: projectId,
//     accessToken: accessToken,
//     issue: issueData!,
//     createBranchFromRefBranch: 'main',
//     mergeReqTargetBranch: 'main',
//   );
// }

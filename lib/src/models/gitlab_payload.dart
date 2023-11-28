import 'package:dart_mappable/dart_mappable.dart';
import 'package:gitlab_rest_models/src/models/commit/commit.dart';
import 'package:gitlab_rest_models/src/models/project/project.dart';
import 'package:gitlab_rest_models/src/models/repository/repository.dart';

part 'gitlab_payload.mapper.dart';

///
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GitLabPayload with GitLabPayloadMappable {
  ///
  GitLabPayload({
    required this.operationType,
    required this.eventName,
    required this.beforeCommitSHA,
    required this.afterCommitSHA,
    required this.branch,
    required this.isBranchProtected,
    required this.checkoutSha,
    required this.message,
    required this.performerUserId,
    required this.performerUserAvatar,
    required this.performerUserEmail,
    required this.performerUserName,
    required this.performerUserUsername,
    required this.relatedProjectId,
    required this.projectDetails,
    required this.commitsDetails,
    required this.commitAmount,
    //required this.pushOptions,
    required this.repositoryDetails,
  });

  /// Is the type of operation has been made, it can be:
  /// "Push","Tag","Issue","Comment","Merge" "request","Wiki page","Pipeline",
  /// "Job event","Deployment","Feature flag","Release", "Emoji"
  @MappableField(key: 'object_kind')
  String operationType;

  ///
  String eventName;

  /// Its the SHA code before this commit was done
  @MappableField(key: 'before')
  String beforeCommitSHA;

  /// Its the SHA code after this commit
  @MappableField(key: 'after')
  String afterCommitSHA;

  ///
  @MappableField(key: 'ref')
  String branch;

  ///
  @MappableField(key: 'ref_protected')
  bool isBranchProtected;

  /// Its the SHA code after this commit
  String checkoutSha;

  // TODO (Nacho): Ver cuando se genera el mensaje
  ///
  String? message;

  ///
  @MappableField(key: 'user_id')
  int performerUserId;

  ///
  @MappableField(key: 'user_name')
  String performerUserName;

  ///
  @MappableField(key: 'user_username')
  String performerUserUsername;

  ///
  @MappableField(key: 'user_email')
  String? performerUserEmail;

  ///
  @MappableField(key: 'user_avatar')
  String performerUserAvatar;

  ///
  @MappableField(key: 'project_id')
  int relatedProjectId;

  ///
  @MappableField(key: 'project')
  GitLabProject projectDetails;

  ///
  @MappableField(key: 'commits')
  List<GitLabCommit> commitsDetails;

  ///
  @MappableField(key: 'total_commits_count')
  int commitAmount;

  // TODO(Nacho): Ver que trae este valor

  ///
  // PushOptions pushOptions;

  ///
  @MappableField(key: 'repository')
  GitLabRepository repositoryDetails;

  /// FromJson method, convert a json type object into this GitLabPayload Object
  static const fromJson = GitLabPayloadMapper.fromJson;
}

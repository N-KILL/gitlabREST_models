import 'package:dart_mappable/dart_mappable.dart';
import 'package:gitlab_rest_models/src/models/labels/labels.dart';

// TODO(Nacho): Resolver valores dinamico

part 'object.mapper.dart';

///
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ObjectAttributes with ObjectAttributesMappable {
  ///
  ObjectAttributes({
    required this.authorId,
    required this.closedAt,
    required this.confidential,
    required this.createdAt,
    required this.description,
    required this.discussionLockedStatus,
    required this.dueDate,
    required this.id,
    required this.internalId,
    required this.lastEditionDate,
    required this.lastEditedUserId,
    required this.relatedMilestoneId,
    required this.movedToId,
    required this.issueSimilarTo,
    required this.relatedProjectId,
    required this.relativePosition,
    required this.issueStateId,
    required this.estimatedTime,
    required this.issueName,
    required this.lastTimeUpdated,
    required this.updatedUserId,
    required this.weight,
    required this.healthStatus,
    required this.issueUrl,
    required this.totalTimeSpent,
    required this.timeChange,
    required this.totalTimeSpentSimple,
    required this.humanTimeChange,
    required this.timeEstimateSimple,
    required this.assignedUsersIds,
    required this.assigneeUserId,
    required this.labels,
    required this.issueState,
    required this.severity,
    required this.customerRelationsContacts,
    required this.actionType,
  });

  ///
  int authorId;

  ///
  DateTime? closedAt;

  ///
  bool confidential;

  ///
  String createdAt;

  ///
  String description;

  /// Bool value who indicate if the issue is locked or not. If the issue is new
  /// it will came as a null value, once this value is modified it will be true
  /// or false, as usual.
  @MappableField(key: 'discussion_locked')
  bool? discussionLockedStatus;

  /// If the Issue have a due date this will be here, if it not have one this
  /// value will be null
  DateTime? dueDate;

  /// Id of the issue, this value is used to identify the issue. As any id it is
  /// unique
  int id;

  /// Internal ID is the iid value on GitLab, this is used to identify issues,
  /// pipelines, etc. This is an unique value, who works inside of a project.
  /// For more info:
  /// https://gitlab.com/gitlab-org/gitlab/-/blob/1cb9fe25/doc/api/README.md#id-vs-iid
  @MappableField(key: 'iid')
  int internalId;

  /// This value is the las date of edition, it can came as a null value
  /// if the issue is new
  @MappableField(key: 'last_edited_at')
  DateTime? lastEditionDate;

  /// This value will save the id of the user who perform the last edition
  /// to the issue. )
  @MappableField(key: 'last_edited_by_id')
  int? lastEditedUserId;

  /// This is the milestone id related to the issue, if is not milestone related
  /// it will came as a null value
  @MappableField(key: 'milestone_id')
  int? relatedMilestoneId;

  // TODO(Nacho): Verificar esta doc

  /// This value indicates when the issue is moved into another project, it will
  /// show the id of this other project
  int? movedToId;

  /// If an issue is marked as duplicated of another issue by a quick actions
  /// this value will show the id of that another issue. More info about how
  /// mark as duplicated works:
  /// https://archives.docs.gitlab.com/15.1/ee/user/project/issues/managing_issues.html
  @MappableField(key: 'duplicated_to_id')
  int? issueSimilarTo;

  /// Id of the project related to the issue
  @MappableField(key: 'project_id')
  int relatedProjectId;

  /// When an issue is created the system assigns a relative position order 
  /// value that is greater than the maximum value of that issue’s project or 
  /// root group. This means the issue is at the bottom of any issue list that 
  /// it appears in. For more info about: 
  /// https://docs.gitlab.com/ee/user/project/issue_board.html
  int? relativePosition;

  /// Issue State indicates if the issue can be open or closed based on his 
  /// value: 1 - open, 2 - closed
  @MappableField(key: 'state_id')
  int issueStateId;

  /// Estimated time is a value that indicated the estimated time assigned to 
  /// the issue on GitLab. This value came on seconds. 
  /// Example: 18000, are the same as 5h
  @MappableField(key: 'time_estimate')
  int estimatedTime;

  /// Is the name of the issue
  @MappableField(key: 'title')
  String issueName;

  // TODO(Nacho): Ver si esta fecha se parsea o rompe

  /// Last time this issue receive an update 
  @MappableField(key: 'updated_at')
  String lastTimeUpdated;

  /// Id of the user who perform the last update
  @MappableField(key: 'updated_by_id')
  int? updatedUserId;

  // TODO(Nacho): Ver como se utiliza este valor (Es del plan premium)

  ///
  dynamic weight;

  // TODO(Nacho): Ver como se utiliza este valor, no me aparece.

  /// Indicates the health state of an issue, for more info about issue state:  
  /// https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#health-status
  String? healthStatus;

  /// Direct url to the issue gitlab page
  @MappableField(key: 'url')
  String issueUrl;

  /// Value that indicated the total time spend on an issue, it came in seconds
  /// example: 18000 = 5h
  int totalTimeSpent;

  // TODO(Nacho): Ver como se utiliza este valor

  ///
  int timeChange;

  /// This value will storage the total time spent, but simplified, can came as 
  /// days, hours, etc. Example: "5h"
  @MappableField(key: 'human_total_time_spent')
  String? totalTimeSpentSimple;

  // TODO(Nacho): Ver como se utiliza este valor

  ///
  dynamic humanTimeChange;

  /// This value storage the estimated time on a simplified way. Example: "5h"
  @MappableField(key: 'human_time_estimate')
  String? timeEstimateSimple;

  /// This list storage the ids of the GitLab users assigned to the issue
  @MappableField(key: 'assignee_ids')
  List<int> assignedUsersIds;

  /// This value storage the id of the GitLab user assigned to the issue
  @MappableField(key: 'assignee_id')
  int? assigneeUserId;

  /// This list storage the different labels used on the issue
  List<Label> labels;

  /// This value saves the issue state, it can be "closed" or "open"
  @MappableField(key: 'state')
  String issueState;

  /// This value saves the issue severity, for more info about severity value:
  /// https://about.gitlab.com/handbook/engineering/quality/issue-triage/
  String severity;

  // TODO(Nacho): Ver como se utiliza este valor

  ///
  List<dynamic> customerRelationsContacts;

  /// This value storage the type of action realized on this payload
  @MappableField(key: 'action')
  String actionType;

  /// FromJson method, convert a json type object into this ObjectAttributes
  /// Object
  static const fromJson = ObjectAttributesMapper.fromJson;
}

import 'package:dart_mappable/dart_mappable.dart';

part 'issues_res_body.mapper.dart';

// TODO(Nacho): Create the doc of this entire file, delete unnecessary stuff, add necessary stuff

/// This [IssueAPIResponseModel] Class, is created to map a `GitLab API`
/// response when you do a `GET` method.
/// For more information about `GitLab API` related to `Issues`:
/// https://docs.gitlab.com/ee/api/issues.html
@MappableClass(caseStyle: CaseStyle.snakeCase)
class IssueAPIResponseModel with IssueAPIResponseModelMappable {
  ///
  IssueAPIResponseModel({
    required this.id,
    required this.iid,
    required this.projectId,
    required this.title,
    required this.description,
    required this.state,
    required this.createdAt,
    required this.updatedAt,
    required this.closedAt,
    required this.closedBy,
    required this.labels,
    required this.milestone,
    required this.assignees,
    required this.type,
    required this.assignee,
    required this.userNotesCount,
    required this.mergeRequestsCount,
    required this.upvotes,
    required this.downvotes,
    required this.dueDate,
    required this.confidential,
    required this.discussionLocked,
    required this.issueType,
    required this.webUrl,
    // required this.timeStats,
    // required this.taskCompletionStatus,
    required this.blockingIssuesCount,
    required this.hasTasks,
    required this.taskStatus,
    // required this.links,
    // required this.references,
    required this.severity,
    required this.subscribed,
    required this.movedToId,
    required this.serviceDeskReplyTo,
  });

  ///
  int id;

  ///
  int iid;

  ///
  int projectId;

  ///
  String title;

  ///
  String? description;

  ///
  String state;

  ///
  DateTime createdAt;

  ///
  DateTime updatedAt;

  ///
  DateTime? closedAt;

  ///
  int? closedBy;

  ///
  List<String> labels;

  ///
  int? milestone;

  ///
  List<int?> assignees;

  ///
  String type;

  ///
  int? assignee;

  ///
  int userNotesCount;

  ///
  int mergeRequestsCount;

  ///
  int upvotes;

  ///
  int downvotes;

  ///
  DateTime? dueDate;

  ///
  bool confidential;

  ///
  bool? discussionLocked;

  ///
  String issueType;

  ///
  String webUrl;

  ///
  /// TimeStats timeStats;

  ///
  ///TaskCompletionStatus taskCompletionStatus;

  ///
  int blockingIssuesCount;

  ///
  bool hasTasks;

  ///
  String taskStatus;

  ///
  /// Links links;

  ///
  /// References references;

  ///
  String severity;

  ///
  bool subscribed;

  ///
  int? movedToId;

  ///
  String? serviceDeskReplyTo;

  /// FromJson method, convert a json type object into this
  /// [IssueAPIResponseModel] Object
  static const fromJson = IssueAPIResponseModelMapper.fromJson;
}

///
class Links {
  ///
  Links({
    required this.self,
    required this.notes,
    required this.awardEmoji,
    required this.project,
    required this.closedAsDuplicateOf,
  });

  ///
  String self;

  ///
  String notes;

  ///
  String awardEmoji;

  ///
  String project;

  ///
  int closedAsDuplicateOf;
}

///
class References {
  ///
  References({
    required this.short,
    required this.relative,
    required this.full,
  });

  ///
  String short;

  ///
  String relative;

  ///
  String full;
}

///
class TaskCompletionStatus {
  
  ///
  TaskCompletionStatus({
    required this.count,
    required this.completedCount,
  });

  ///
  int count;

  ///
  int completedCount;
}

///
class TimeStats {
  
  ///
  TimeStats({
    required this.timeEstimate,
    required this.totalTimeSpent,
    required this.humanTimeEstimate,
    required this.humanTotalTimeSpent,
  });
  ///
  int timeEstimate;
  
  ///
  int totalTimeSpent;
  
  ///
  dynamic humanTimeEstimate;
  
  ///
  dynamic humanTotalTimeSpent;

}

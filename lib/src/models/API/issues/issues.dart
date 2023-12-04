import 'package:dart_mappable/dart_mappable.dart';

part 'issues.mapper.dart';

/// This [IssueAPIModel] Class, is created to be used the `API` as a Body of the
/// request, with this model, you can interact with any `Issue` from your
/// `gitLab` project. <br>
/// For more information about `GitLab API` related to `Issues`:
/// https://docs.gitlab.com/ee/api/issues.html
@MappableClass()
class IssueAPIModel with IssueAPIModelMappable {
  /// Constructor
  IssueAPIModel({
    this.issueTitle,
    this.description,
    this.assignedToId,
    this.assignedToIds,
    this.isConfidential,
    this.discussionToResolve,
    this.createdAt,
    this.dueDate,
    this.epicId,
    this.epicInternalId,
    this.issueId,
    this.issueInternalId,
    this.issueType,
    this.issueLabels,
    this.mergeRequestInternalId,
    this.milestoneId,
  });

  /// The title of an issue
  String? issueTitle;

  /// The description of an issue. Limited to 1,048,576 characters.
  String? description;

  /// The ID of the user to assign the issue to. Only appears on `GitLab` Free.
  int? assignedToId;

  /// The IDs of the users to assign the issue to.<br>
  /// `Premium Feature`
  List<int>? assignedToIds;

  /// Set an issue to be confidential. Default is `false`.
  bool? isConfidential;

  /// The ID of a discussion to resolve. This fills out the issue with a default
  /// description and mark the discussion as resolved. Use in combination with
  /// [mergeRequestInternalId].
  String? discussionToResolve;

  /// When the issue was created. Date time string, `ISO 8601` formatted, for
  /// example 2016-03-11T03:45:40Z. Requires `administrator` or `project`/`group`
  /// `owner` rights.
  String? createdAt;

  /// The due date. Date time string in the format `YYYY-MM-DD`, for example:
  /// `2016-03-11`
  String? dueDate;

  /// ID of the epic to add the issue to. Valid values are greater than or equal
  /// to 0.<br>
  /// `Premium Feature`
  int? epicId;

  /// IID of the epic to add the issue to. Valid values are greater than or
  /// equal to 0. (deprecated, scheduled for removal in API version 5)<br>
  /// `Premium Feature`
  int? epicInternalId;

  /// The global ID or URL-encoded path of the project owned by the
  /// authenticated user
  String? issueId;

  /// The internal ID of the project’s issue (requires `administrator` or
  /// `project owner` rights)
  String? issueInternalId;

  /// The type of issue. One of `issue`, `incident`, or `test_case`.
  /// Default is issue.
  String? issueType;

  /// Comma-separated label names for an issue
  List<String>? issueLabels;

  /// The IID of a merge request in which to resolve all issues. This fills out
  /// the issue with a default description and mark all discussions as resolved.
  /// When passing a description or title, these values take precedence over the
  /// default values.
  int? mergeRequestInternalId;

  /// The global ID of a milestone to assign issue. To find the milestone_id
  /// associated with a milestone, view an issue with the milestone assigned
  /// and use the API to retrieve the issue’s details.
  int? milestoneId;

  /// The weight of the issue. Valid values are greater than or equal to 0. <br>
  /// `Premium Feature`
  int? weight;

  /// FromJson method, convert a json type object into this IssueAPIModel object
  static const fromJson = IssueAPIModelMapper.fromJson;
}

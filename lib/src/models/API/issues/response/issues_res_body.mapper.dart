// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'issues_res_body.dart';

class IssueAPIResponseModelMapper
    extends ClassMapperBase<IssueAPIResponseModel> {
  IssueAPIResponseModelMapper._();

  static IssueAPIResponseModelMapper? _instance;
  static IssueAPIResponseModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IssueAPIResponseModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'IssueAPIResponseModel';

  static int _$id(IssueAPIResponseModel v) => v.id;
  static const Field<IssueAPIResponseModel, int> _f$id = Field('id', _$id);
  static int _$iid(IssueAPIResponseModel v) => v.iid;
  static const Field<IssueAPIResponseModel, int> _f$iid = Field('iid', _$iid);
  static int _$projectId(IssueAPIResponseModel v) => v.projectId;
  static const Field<IssueAPIResponseModel, int> _f$projectId =
      Field('projectId', _$projectId, key: 'project_id');
  static String _$title(IssueAPIResponseModel v) => v.title;
  static const Field<IssueAPIResponseModel, String> _f$title =
      Field('title', _$title);
  static dynamic _$description(IssueAPIResponseModel v) => v.description;
  static const Field<IssueAPIResponseModel, dynamic> _f$description =
      Field('description', _$description);
  static String _$state(IssueAPIResponseModel v) => v.state;
  static const Field<IssueAPIResponseModel, String> _f$state =
      Field('state', _$state);
  static DateTime _$createdAt(IssueAPIResponseModel v) => v.createdAt;
  static const Field<IssueAPIResponseModel, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static DateTime _$updatedAt(IssueAPIResponseModel v) => v.updatedAt;
  static const Field<IssueAPIResponseModel, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');
  static dynamic _$closedAt(IssueAPIResponseModel v) => v.closedAt;
  static const Field<IssueAPIResponseModel, dynamic> _f$closedAt =
      Field('closedAt', _$closedAt, key: 'closed_at');
  static dynamic _$closedBy(IssueAPIResponseModel v) => v.closedBy;
  static const Field<IssueAPIResponseModel, dynamic> _f$closedBy =
      Field('closedBy', _$closedBy, key: 'closed_by');
  static List<dynamic> _$labels(IssueAPIResponseModel v) => v.labels;
  static const Field<IssueAPIResponseModel, List<dynamic>> _f$labels =
      Field('labels', _$labels);
  static dynamic _$milestone(IssueAPIResponseModel v) => v.milestone;
  static const Field<IssueAPIResponseModel, dynamic> _f$milestone =
      Field('milestone', _$milestone);
  static List<dynamic> _$assignees(IssueAPIResponseModel v) => v.assignees;
  static const Field<IssueAPIResponseModel, List<dynamic>> _f$assignees =
      Field('assignees', _$assignees);
  static String _$type(IssueAPIResponseModel v) => v.type;
  static const Field<IssueAPIResponseModel, String> _f$type =
      Field('type', _$type);
  static dynamic _$assignee(IssueAPIResponseModel v) => v.assignee;
  static const Field<IssueAPIResponseModel, dynamic> _f$assignee =
      Field('assignee', _$assignee);
  static int _$userNotesCount(IssueAPIResponseModel v) => v.userNotesCount;
  static const Field<IssueAPIResponseModel, int> _f$userNotesCount =
      Field('userNotesCount', _$userNotesCount, key: 'user_notes_count');
  static int _$mergeRequestsCount(IssueAPIResponseModel v) =>
      v.mergeRequestsCount;
  static const Field<IssueAPIResponseModel, int> _f$mergeRequestsCount = Field(
      'mergeRequestsCount', _$mergeRequestsCount,
      key: 'merge_requests_count');
  static int _$upvotes(IssueAPIResponseModel v) => v.upvotes;
  static const Field<IssueAPIResponseModel, int> _f$upvotes =
      Field('upvotes', _$upvotes);
  static int _$downvotes(IssueAPIResponseModel v) => v.downvotes;
  static const Field<IssueAPIResponseModel, int> _f$downvotes =
      Field('downvotes', _$downvotes);
  static dynamic _$dueDate(IssueAPIResponseModel v) => v.dueDate;
  static const Field<IssueAPIResponseModel, dynamic> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date');
  static bool _$confidential(IssueAPIResponseModel v) => v.confidential;
  static const Field<IssueAPIResponseModel, bool> _f$confidential =
      Field('confidential', _$confidential);
  static dynamic _$discussionLocked(IssueAPIResponseModel v) =>
      v.discussionLocked;
  static const Field<IssueAPIResponseModel, dynamic> _f$discussionLocked =
      Field('discussionLocked', _$discussionLocked, key: 'discussion_locked');
  static String _$issueType(IssueAPIResponseModel v) => v.issueType;
  static const Field<IssueAPIResponseModel, String> _f$issueType =
      Field('issueType', _$issueType, key: 'issue_type');
  static String _$webUrl(IssueAPIResponseModel v) => v.webUrl;
  static const Field<IssueAPIResponseModel, String> _f$webUrl =
      Field('webUrl', _$webUrl, key: 'web_url');
  static int _$blockingIssuesCount(IssueAPIResponseModel v) =>
      v.blockingIssuesCount;
  static const Field<IssueAPIResponseModel, int> _f$blockingIssuesCount = Field(
      'blockingIssuesCount', _$blockingIssuesCount,
      key: 'blocking_issues_count');
  static bool _$hasTasks(IssueAPIResponseModel v) => v.hasTasks;
  static const Field<IssueAPIResponseModel, bool> _f$hasTasks =
      Field('hasTasks', _$hasTasks, key: 'has_tasks');
  static String _$taskStatus(IssueAPIResponseModel v) => v.taskStatus;
  static const Field<IssueAPIResponseModel, String> _f$taskStatus =
      Field('taskStatus', _$taskStatus, key: 'task_status');
  static String _$severity(IssueAPIResponseModel v) => v.severity;
  static const Field<IssueAPIResponseModel, String> _f$severity =
      Field('severity', _$severity);
  static bool _$subscribed(IssueAPIResponseModel v) => v.subscribed;
  static const Field<IssueAPIResponseModel, bool> _f$subscribed =
      Field('subscribed', _$subscribed);
  static dynamic _$movedToId(IssueAPIResponseModel v) => v.movedToId;
  static const Field<IssueAPIResponseModel, dynamic> _f$movedToId =
      Field('movedToId', _$movedToId, key: 'moved_to_id');
  static dynamic _$serviceDeskReplyTo(IssueAPIResponseModel v) =>
      v.serviceDeskReplyTo;
  static const Field<IssueAPIResponseModel, dynamic> _f$serviceDeskReplyTo =
      Field('serviceDeskReplyTo', _$serviceDeskReplyTo,
          key: 'service_desk_reply_to');

  @override
  final Map<Symbol, Field<IssueAPIResponseModel, dynamic>> fields = const {
    #id: _f$id,
    #iid: _f$iid,
    #projectId: _f$projectId,
    #title: _f$title,
    #description: _f$description,
    #state: _f$state,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #closedAt: _f$closedAt,
    #closedBy: _f$closedBy,
    #labels: _f$labels,
    #milestone: _f$milestone,
    #assignees: _f$assignees,
    #type: _f$type,
    #assignee: _f$assignee,
    #userNotesCount: _f$userNotesCount,
    #mergeRequestsCount: _f$mergeRequestsCount,
    #upvotes: _f$upvotes,
    #downvotes: _f$downvotes,
    #dueDate: _f$dueDate,
    #confidential: _f$confidential,
    #discussionLocked: _f$discussionLocked,
    #issueType: _f$issueType,
    #webUrl: _f$webUrl,
    #blockingIssuesCount: _f$blockingIssuesCount,
    #hasTasks: _f$hasTasks,
    #taskStatus: _f$taskStatus,
    #severity: _f$severity,
    #subscribed: _f$subscribed,
    #movedToId: _f$movedToId,
    #serviceDeskReplyTo: _f$serviceDeskReplyTo,
  };

  static IssueAPIResponseModel _instantiate(DecodingData data) {
    return IssueAPIResponseModel(
        id: data.dec(_f$id),
        iid: data.dec(_f$iid),
        projectId: data.dec(_f$projectId),
        title: data.dec(_f$title),
        description: data.dec(_f$description),
        state: data.dec(_f$state),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        closedAt: data.dec(_f$closedAt),
        closedBy: data.dec(_f$closedBy),
        labels: data.dec(_f$labels),
        milestone: data.dec(_f$milestone),
        assignees: data.dec(_f$assignees),
        type: data.dec(_f$type),
        assignee: data.dec(_f$assignee),
        userNotesCount: data.dec(_f$userNotesCount),
        mergeRequestsCount: data.dec(_f$mergeRequestsCount),
        upvotes: data.dec(_f$upvotes),
        downvotes: data.dec(_f$downvotes),
        dueDate: data.dec(_f$dueDate),
        confidential: data.dec(_f$confidential),
        discussionLocked: data.dec(_f$discussionLocked),
        issueType: data.dec(_f$issueType),
        webUrl: data.dec(_f$webUrl),
        blockingIssuesCount: data.dec(_f$blockingIssuesCount),
        hasTasks: data.dec(_f$hasTasks),
        taskStatus: data.dec(_f$taskStatus),
        severity: data.dec(_f$severity),
        subscribed: data.dec(_f$subscribed),
        movedToId: data.dec(_f$movedToId),
        serviceDeskReplyTo: data.dec(_f$serviceDeskReplyTo));
  }

  @override
  final Function instantiate = _instantiate;

  static IssueAPIResponseModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IssueAPIResponseModel>(map);
  }

  static IssueAPIResponseModel fromJson(String json) {
    return ensureInitialized().decodeJson<IssueAPIResponseModel>(json);
  }
}

mixin IssueAPIResponseModelMappable {
  String toJson() {
    return IssueAPIResponseModelMapper.ensureInitialized()
        .encodeJson<IssueAPIResponseModel>(this as IssueAPIResponseModel);
  }

  Map<String, dynamic> toMap() {
    return IssueAPIResponseModelMapper.ensureInitialized()
        .encodeMap<IssueAPIResponseModel>(this as IssueAPIResponseModel);
  }

  IssueAPIResponseModelCopyWith<IssueAPIResponseModel, IssueAPIResponseModel,
          IssueAPIResponseModel>
      get copyWith => _IssueAPIResponseModelCopyWithImpl(
          this as IssueAPIResponseModel, $identity, $identity);
  @override
  String toString() {
    return IssueAPIResponseModelMapper.ensureInitialized()
        .stringifyValue(this as IssueAPIResponseModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            IssueAPIResponseModelMapper.ensureInitialized()
                .isValueEqual(this as IssueAPIResponseModel, other));
  }

  @override
  int get hashCode {
    return IssueAPIResponseModelMapper.ensureInitialized()
        .hashValue(this as IssueAPIResponseModel);
  }
}

extension IssueAPIResponseModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IssueAPIResponseModel, $Out> {
  IssueAPIResponseModelCopyWith<$R, IssueAPIResponseModel, $Out>
      get $asIssueAPIResponseModel =>
          $base.as((v, t, t2) => _IssueAPIResponseModelCopyWithImpl(v, t, t2));
}

abstract class IssueAPIResponseModelCopyWith<
    $R,
    $In extends IssueAPIResponseModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get labels;
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get assignees;
  $R call(
      {int? id,
      int? iid,
      int? projectId,
      String? title,
      dynamic description,
      String? state,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic closedAt,
      dynamic closedBy,
      List<dynamic>? labels,
      dynamic milestone,
      List<dynamic>? assignees,
      String? type,
      dynamic assignee,
      int? userNotesCount,
      int? mergeRequestsCount,
      int? upvotes,
      int? downvotes,
      dynamic dueDate,
      bool? confidential,
      dynamic discussionLocked,
      String? issueType,
      String? webUrl,
      int? blockingIssuesCount,
      bool? hasTasks,
      String? taskStatus,
      String? severity,
      bool? subscribed,
      dynamic movedToId,
      dynamic serviceDeskReplyTo});
  IssueAPIResponseModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _IssueAPIResponseModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IssueAPIResponseModel, $Out>
    implements IssueAPIResponseModelCopyWith<$R, IssueAPIResponseModel, $Out> {
  _IssueAPIResponseModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IssueAPIResponseModel> $mapper =
      IssueAPIResponseModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get labels =>
      ListCopyWith($value.labels, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(labels: v));
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get assignees => ListCopyWith($value.assignees,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(assignees: v));
  @override
  $R call(
          {int? id,
          int? iid,
          int? projectId,
          String? title,
          Object? description = $none,
          String? state,
          DateTime? createdAt,
          DateTime? updatedAt,
          Object? closedAt = $none,
          Object? closedBy = $none,
          List<dynamic>? labels,
          Object? milestone = $none,
          List<dynamic>? assignees,
          String? type,
          Object? assignee = $none,
          int? userNotesCount,
          int? mergeRequestsCount,
          int? upvotes,
          int? downvotes,
          Object? dueDate = $none,
          bool? confidential,
          Object? discussionLocked = $none,
          String? issueType,
          String? webUrl,
          int? blockingIssuesCount,
          bool? hasTasks,
          String? taskStatus,
          String? severity,
          bool? subscribed,
          Object? movedToId = $none,
          Object? serviceDeskReplyTo = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (iid != null) #iid: iid,
        if (projectId != null) #projectId: projectId,
        if (title != null) #title: title,
        if (description != $none) #description: description,
        if (state != null) #state: state,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (closedAt != $none) #closedAt: closedAt,
        if (closedBy != $none) #closedBy: closedBy,
        if (labels != null) #labels: labels,
        if (milestone != $none) #milestone: milestone,
        if (assignees != null) #assignees: assignees,
        if (type != null) #type: type,
        if (assignee != $none) #assignee: assignee,
        if (userNotesCount != null) #userNotesCount: userNotesCount,
        if (mergeRequestsCount != null) #mergeRequestsCount: mergeRequestsCount,
        if (upvotes != null) #upvotes: upvotes,
        if (downvotes != null) #downvotes: downvotes,
        if (dueDate != $none) #dueDate: dueDate,
        if (confidential != null) #confidential: confidential,
        if (discussionLocked != $none) #discussionLocked: discussionLocked,
        if (issueType != null) #issueType: issueType,
        if (webUrl != null) #webUrl: webUrl,
        if (blockingIssuesCount != null)
          #blockingIssuesCount: blockingIssuesCount,
        if (hasTasks != null) #hasTasks: hasTasks,
        if (taskStatus != null) #taskStatus: taskStatus,
        if (severity != null) #severity: severity,
        if (subscribed != null) #subscribed: subscribed,
        if (movedToId != $none) #movedToId: movedToId,
        if (serviceDeskReplyTo != $none) #serviceDeskReplyTo: serviceDeskReplyTo
      }));
  @override
  IssueAPIResponseModel $make(CopyWithData data) => IssueAPIResponseModel(
      id: data.get(#id, or: $value.id),
      iid: data.get(#iid, or: $value.iid),
      projectId: data.get(#projectId, or: $value.projectId),
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description),
      state: data.get(#state, or: $value.state),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      closedAt: data.get(#closedAt, or: $value.closedAt),
      closedBy: data.get(#closedBy, or: $value.closedBy),
      labels: data.get(#labels, or: $value.labels),
      milestone: data.get(#milestone, or: $value.milestone),
      assignees: data.get(#assignees, or: $value.assignees),
      type: data.get(#type, or: $value.type),
      assignee: data.get(#assignee, or: $value.assignee),
      userNotesCount: data.get(#userNotesCount, or: $value.userNotesCount),
      mergeRequestsCount:
          data.get(#mergeRequestsCount, or: $value.mergeRequestsCount),
      upvotes: data.get(#upvotes, or: $value.upvotes),
      downvotes: data.get(#downvotes, or: $value.downvotes),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      confidential: data.get(#confidential, or: $value.confidential),
      discussionLocked:
          data.get(#discussionLocked, or: $value.discussionLocked),
      issueType: data.get(#issueType, or: $value.issueType),
      webUrl: data.get(#webUrl, or: $value.webUrl),
      blockingIssuesCount:
          data.get(#blockingIssuesCount, or: $value.blockingIssuesCount),
      hasTasks: data.get(#hasTasks, or: $value.hasTasks),
      taskStatus: data.get(#taskStatus, or: $value.taskStatus),
      severity: data.get(#severity, or: $value.severity),
      subscribed: data.get(#subscribed, or: $value.subscribed),
      movedToId: data.get(#movedToId, or: $value.movedToId),
      serviceDeskReplyTo:
          data.get(#serviceDeskReplyTo, or: $value.serviceDeskReplyTo));

  @override
  IssueAPIResponseModelCopyWith<$R2, IssueAPIResponseModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _IssueAPIResponseModelCopyWithImpl($value, $cast, t);
}

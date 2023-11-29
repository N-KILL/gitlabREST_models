// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'issue_details.dart';

class IssueDetailsMapper extends ClassMapperBase<IssueDetails> {
  IssueDetailsMapper._();

  static IssueDetailsMapper? _instance;
  static IssueDetailsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IssueDetailsMapper._());
      LabelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'IssueDetails';

  static int _$authorUserId(IssueDetails v) => v.authorUserId;
  static const Field<IssueDetails, int> _f$authorUserId =
      Field('authorUserId', _$authorUserId, key: 'author_id');
  static String? _$closedAt(IssueDetails v) => v.closedAt;
  static const Field<IssueDetails, String> _f$closedAt =
      Field('closedAt', _$closedAt, key: 'closed_at');
  static bool _$confidentialState(IssueDetails v) => v.confidentialState;
  static const Field<IssueDetails, bool> _f$confidentialState =
      Field('confidentialState', _$confidentialState, key: 'confidential');
  static String _$creationDate(IssueDetails v) => v.creationDate;
  static const Field<IssueDetails, String> _f$creationDate =
      Field('creationDate', _$creationDate, key: 'created_at');
  static String _$description(IssueDetails v) => v.description;
  static const Field<IssueDetails, String> _f$description =
      Field('description', _$description);
  static bool? _$discussionLockedStatus(IssueDetails v) =>
      v.discussionLockedStatus;
  static const Field<IssueDetails, bool> _f$discussionLockedStatus = Field(
      'discussionLockedStatus', _$discussionLockedStatus,
      key: 'discussion_locked');
  static String? _$dueDate(IssueDetails v) => v.dueDate;
  static const Field<IssueDetails, String> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date');
  static int _$id(IssueDetails v) => v.id;
  static const Field<IssueDetails, int> _f$id = Field('id', _$id);
  static int _$internalId(IssueDetails v) => v.internalId;
  static const Field<IssueDetails, int> _f$internalId =
      Field('internalId', _$internalId, key: 'iid');
  static String? _$lastEditionDate(IssueDetails v) => v.lastEditionDate;
  static const Field<IssueDetails, String> _f$lastEditionDate =
      Field('lastEditionDate', _$lastEditionDate, key: 'last_edited_at');
  static int? _$lastEditedUserId(IssueDetails v) => v.lastEditedUserId;
  static const Field<IssueDetails, int> _f$lastEditedUserId =
      Field('lastEditedUserId', _$lastEditedUserId, key: 'last_edited_by_id');
  static int? _$relatedMilestoneId(IssueDetails v) => v.relatedMilestoneId;
  static const Field<IssueDetails, int> _f$relatedMilestoneId =
      Field('relatedMilestoneId', _$relatedMilestoneId, key: 'milestone_id');
  static int? _$movedToId(IssueDetails v) => v.movedToId;
  static const Field<IssueDetails, int> _f$movedToId =
      Field('movedToId', _$movedToId, key: 'moved_to_id');
  static int? _$issueSimilarTo(IssueDetails v) => v.issueSimilarTo;
  static const Field<IssueDetails, int> _f$issueSimilarTo =
      Field('issueSimilarTo', _$issueSimilarTo, key: 'duplicated_to_id');
  static int _$relatedProjectId(IssueDetails v) => v.relatedProjectId;
  static const Field<IssueDetails, int> _f$relatedProjectId =
      Field('relatedProjectId', _$relatedProjectId, key: 'project_id');
  static int? _$relativePosition(IssueDetails v) => v.relativePosition;
  static const Field<IssueDetails, int> _f$relativePosition =
      Field('relativePosition', _$relativePosition, key: 'relative_position');
  static int _$issueStateId(IssueDetails v) => v.issueStateId;
  static const Field<IssueDetails, int> _f$issueStateId =
      Field('issueStateId', _$issueStateId, key: 'state_id');
  static int _$estimatedTime(IssueDetails v) => v.estimatedTime;
  static const Field<IssueDetails, int> _f$estimatedTime =
      Field('estimatedTime', _$estimatedTime, key: 'time_estimate');
  static String _$issueName(IssueDetails v) => v.issueName;
  static const Field<IssueDetails, String> _f$issueName =
      Field('issueName', _$issueName, key: 'title');
  static String _$lastTimeUpdated(IssueDetails v) => v.lastTimeUpdated;
  static const Field<IssueDetails, String> _f$lastTimeUpdated =
      Field('lastTimeUpdated', _$lastTimeUpdated, key: 'updated_at');
  static int? _$updatedUserId(IssueDetails v) => v.updatedUserId;
  static const Field<IssueDetails, int> _f$updatedUserId =
      Field('updatedUserId', _$updatedUserId, key: 'updated_by_id');
  static dynamic _$weight(IssueDetails v) => v.weight;
  static const Field<IssueDetails, dynamic> _f$weight =
      Field('weight', _$weight);
  static String? _$healthStatus(IssueDetails v) => v.healthStatus;
  static const Field<IssueDetails, String> _f$healthStatus =
      Field('healthStatus', _$healthStatus, key: 'health_status');
  static String _$issueUrl(IssueDetails v) => v.issueUrl;
  static const Field<IssueDetails, String> _f$issueUrl =
      Field('issueUrl', _$issueUrl, key: 'url');
  static int _$totalTimeSpent(IssueDetails v) => v.totalTimeSpent;
  static const Field<IssueDetails, int> _f$totalTimeSpent =
      Field('totalTimeSpent', _$totalTimeSpent, key: 'total_time_spent');
  static int _$timeChange(IssueDetails v) => v.timeChange;
  static const Field<IssueDetails, int> _f$timeChange =
      Field('timeChange', _$timeChange, key: 'time_change');
  static String? _$totalTimeSpentSimple(IssueDetails v) =>
      v.totalTimeSpentSimple;
  static const Field<IssueDetails, String> _f$totalTimeSpentSimple = Field(
      'totalTimeSpentSimple', _$totalTimeSpentSimple,
      key: 'human_total_time_spent');
  static dynamic _$humanTimeChange(IssueDetails v) => v.humanTimeChange;
  static const Field<IssueDetails, dynamic> _f$humanTimeChange =
      Field('humanTimeChange', _$humanTimeChange, key: 'human_time_change');
  static String? _$timeEstimateSimple(IssueDetails v) => v.timeEstimateSimple;
  static const Field<IssueDetails, String> _f$timeEstimateSimple = Field(
      'timeEstimateSimple', _$timeEstimateSimple,
      key: 'human_time_estimate');
  static List<int> _$assignedUsersIds(IssueDetails v) => v.assignedUsersIds;
  static const Field<IssueDetails, List<int>> _f$assignedUsersIds =
      Field('assignedUsersIds', _$assignedUsersIds, key: 'assignee_ids');
  static int? _$assigneeUserId(IssueDetails v) => v.assigneeUserId;
  static const Field<IssueDetails, int> _f$assigneeUserId =
      Field('assigneeUserId', _$assigneeUserId, key: 'assignee_id');
  static List<Label> _$labels(IssueDetails v) => v.labels;
  static const Field<IssueDetails, List<Label>> _f$labels =
      Field('labels', _$labels);
  static String _$issueState(IssueDetails v) => v.issueState;
  static const Field<IssueDetails, String> _f$issueState =
      Field('issueState', _$issueState, key: 'state');
  static String _$severity(IssueDetails v) => v.severity;
  static const Field<IssueDetails, String> _f$severity =
      Field('severity', _$severity);
  static List<dynamic> _$customerRelationsContacts(IssueDetails v) =>
      v.customerRelationsContacts;
  static const Field<IssueDetails, List<dynamic>> _f$customerRelationsContacts =
      Field('customerRelationsContacts', _$customerRelationsContacts,
          key: 'customer_relations_contacts');
  static String? _$actionType(IssueDetails v) => v.actionType;
  static const Field<IssueDetails, String> _f$actionType =
      Field('actionType', _$actionType, key: 'action');

  @override
  final Map<Symbol, Field<IssueDetails, dynamic>> fields = const {
    #authorUserId: _f$authorUserId,
    #closedAt: _f$closedAt,
    #confidentialState: _f$confidentialState,
    #creationDate: _f$creationDate,
    #description: _f$description,
    #discussionLockedStatus: _f$discussionLockedStatus,
    #dueDate: _f$dueDate,
    #id: _f$id,
    #internalId: _f$internalId,
    #lastEditionDate: _f$lastEditionDate,
    #lastEditedUserId: _f$lastEditedUserId,
    #relatedMilestoneId: _f$relatedMilestoneId,
    #movedToId: _f$movedToId,
    #issueSimilarTo: _f$issueSimilarTo,
    #relatedProjectId: _f$relatedProjectId,
    #relativePosition: _f$relativePosition,
    #issueStateId: _f$issueStateId,
    #estimatedTime: _f$estimatedTime,
    #issueName: _f$issueName,
    #lastTimeUpdated: _f$lastTimeUpdated,
    #updatedUserId: _f$updatedUserId,
    #weight: _f$weight,
    #healthStatus: _f$healthStatus,
    #issueUrl: _f$issueUrl,
    #totalTimeSpent: _f$totalTimeSpent,
    #timeChange: _f$timeChange,
    #totalTimeSpentSimple: _f$totalTimeSpentSimple,
    #humanTimeChange: _f$humanTimeChange,
    #timeEstimateSimple: _f$timeEstimateSimple,
    #assignedUsersIds: _f$assignedUsersIds,
    #assigneeUserId: _f$assigneeUserId,
    #labels: _f$labels,
    #issueState: _f$issueState,
    #severity: _f$severity,
    #customerRelationsContacts: _f$customerRelationsContacts,
    #actionType: _f$actionType,
  };

  static IssueDetails _instantiate(DecodingData data) {
    return IssueDetails(
        authorUserId: data.dec(_f$authorUserId),
        closedAt: data.dec(_f$closedAt),
        confidentialState: data.dec(_f$confidentialState),
        creationDate: data.dec(_f$creationDate),
        description: data.dec(_f$description),
        discussionLockedStatus: data.dec(_f$discussionLockedStatus),
        dueDate: data.dec(_f$dueDate),
        id: data.dec(_f$id),
        internalId: data.dec(_f$internalId),
        lastEditionDate: data.dec(_f$lastEditionDate),
        lastEditedUserId: data.dec(_f$lastEditedUserId),
        relatedMilestoneId: data.dec(_f$relatedMilestoneId),
        movedToId: data.dec(_f$movedToId),
        issueSimilarTo: data.dec(_f$issueSimilarTo),
        relatedProjectId: data.dec(_f$relatedProjectId),
        relativePosition: data.dec(_f$relativePosition),
        issueStateId: data.dec(_f$issueStateId),
        estimatedTime: data.dec(_f$estimatedTime),
        issueName: data.dec(_f$issueName),
        lastTimeUpdated: data.dec(_f$lastTimeUpdated),
        updatedUserId: data.dec(_f$updatedUserId),
        weight: data.dec(_f$weight),
        healthStatus: data.dec(_f$healthStatus),
        issueUrl: data.dec(_f$issueUrl),
        totalTimeSpent: data.dec(_f$totalTimeSpent),
        timeChange: data.dec(_f$timeChange),
        totalTimeSpentSimple: data.dec(_f$totalTimeSpentSimple),
        humanTimeChange: data.dec(_f$humanTimeChange),
        timeEstimateSimple: data.dec(_f$timeEstimateSimple),
        assignedUsersIds: data.dec(_f$assignedUsersIds),
        assigneeUserId: data.dec(_f$assigneeUserId),
        labels: data.dec(_f$labels),
        issueState: data.dec(_f$issueState),
        severity: data.dec(_f$severity),
        customerRelationsContacts: data.dec(_f$customerRelationsContacts),
        actionType: data.dec(_f$actionType));
  }

  @override
  final Function instantiate = _instantiate;

  static IssueDetails fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IssueDetails>(map);
  }

  static IssueDetails fromJson(String json) {
    return ensureInitialized().decodeJson<IssueDetails>(json);
  }
}

mixin IssueDetailsMappable {
  String toJson() {
    return IssueDetailsMapper.ensureInitialized()
        .encodeJson<IssueDetails>(this as IssueDetails);
  }

  Map<String, dynamic> toMap() {
    return IssueDetailsMapper.ensureInitialized()
        .encodeMap<IssueDetails>(this as IssueDetails);
  }

  IssueDetailsCopyWith<IssueDetails, IssueDetails, IssueDetails> get copyWith =>
      _IssueDetailsCopyWithImpl(this as IssueDetails, $identity, $identity);
  @override
  String toString() {
    return IssueDetailsMapper.ensureInitialized()
        .stringifyValue(this as IssueDetails);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            IssueDetailsMapper.ensureInitialized()
                .isValueEqual(this as IssueDetails, other));
  }

  @override
  int get hashCode {
    return IssueDetailsMapper.ensureInitialized()
        .hashValue(this as IssueDetails);
  }
}

extension IssueDetailsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IssueDetails, $Out> {
  IssueDetailsCopyWith<$R, IssueDetails, $Out> get $asIssueDetails =>
      $base.as((v, t, t2) => _IssueDetailsCopyWithImpl(v, t, t2));
}

abstract class IssueDetailsCopyWith<$R, $In extends IssueDetails, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get assignedUsersIds;
  ListCopyWith<$R, Label, LabelCopyWith<$R, Label, Label>> get labels;
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get customerRelationsContacts;
  $R call(
      {int? authorUserId,
      String? closedAt,
      bool? confidentialState,
      String? creationDate,
      String? description,
      bool? discussionLockedStatus,
      String? dueDate,
      int? id,
      int? internalId,
      String? lastEditionDate,
      int? lastEditedUserId,
      int? relatedMilestoneId,
      int? movedToId,
      int? issueSimilarTo,
      int? relatedProjectId,
      int? relativePosition,
      int? issueStateId,
      int? estimatedTime,
      String? issueName,
      String? lastTimeUpdated,
      int? updatedUserId,
      dynamic weight,
      String? healthStatus,
      String? issueUrl,
      int? totalTimeSpent,
      int? timeChange,
      String? totalTimeSpentSimple,
      dynamic humanTimeChange,
      String? timeEstimateSimple,
      List<int>? assignedUsersIds,
      int? assigneeUserId,
      List<Label>? labels,
      String? issueState,
      String? severity,
      List<dynamic>? customerRelationsContacts,
      String? actionType});
  IssueDetailsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IssueDetailsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IssueDetails, $Out>
    implements IssueDetailsCopyWith<$R, IssueDetails, $Out> {
  _IssueDetailsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IssueDetails> $mapper =
      IssueDetailsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get assignedUsersIds =>
      ListCopyWith(
          $value.assignedUsersIds,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(assignedUsersIds: v));
  @override
  ListCopyWith<$R, Label, LabelCopyWith<$R, Label, Label>> get labels =>
      ListCopyWith($value.labels, (v, t) => v.copyWith.$chain(t),
          (v) => call(labels: v));
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get customerRelationsContacts => ListCopyWith(
          $value.customerRelationsContacts,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(customerRelationsContacts: v));
  @override
  $R call(
          {int? authorUserId,
          Object? closedAt = $none,
          bool? confidentialState,
          String? creationDate,
          String? description,
          Object? discussionLockedStatus = $none,
          Object? dueDate = $none,
          int? id,
          int? internalId,
          Object? lastEditionDate = $none,
          Object? lastEditedUserId = $none,
          Object? relatedMilestoneId = $none,
          Object? movedToId = $none,
          Object? issueSimilarTo = $none,
          int? relatedProjectId,
          Object? relativePosition = $none,
          int? issueStateId,
          int? estimatedTime,
          String? issueName,
          String? lastTimeUpdated,
          Object? updatedUserId = $none,
          Object? weight = $none,
          Object? healthStatus = $none,
          String? issueUrl,
          int? totalTimeSpent,
          int? timeChange,
          Object? totalTimeSpentSimple = $none,
          Object? humanTimeChange = $none,
          Object? timeEstimateSimple = $none,
          List<int>? assignedUsersIds,
          Object? assigneeUserId = $none,
          List<Label>? labels,
          String? issueState,
          String? severity,
          List<dynamic>? customerRelationsContacts,
          Object? actionType = $none}) =>
      $apply(FieldCopyWithData({
        if (authorUserId != null) #authorUserId: authorUserId,
        if (closedAt != $none) #closedAt: closedAt,
        if (confidentialState != null) #confidentialState: confidentialState,
        if (creationDate != null) #creationDate: creationDate,
        if (description != null) #description: description,
        if (discussionLockedStatus != $none)
          #discussionLockedStatus: discussionLockedStatus,
        if (dueDate != $none) #dueDate: dueDate,
        if (id != null) #id: id,
        if (internalId != null) #internalId: internalId,
        if (lastEditionDate != $none) #lastEditionDate: lastEditionDate,
        if (lastEditedUserId != $none) #lastEditedUserId: lastEditedUserId,
        if (relatedMilestoneId != $none)
          #relatedMilestoneId: relatedMilestoneId,
        if (movedToId != $none) #movedToId: movedToId,
        if (issueSimilarTo != $none) #issueSimilarTo: issueSimilarTo,
        if (relatedProjectId != null) #relatedProjectId: relatedProjectId,
        if (relativePosition != $none) #relativePosition: relativePosition,
        if (issueStateId != null) #issueStateId: issueStateId,
        if (estimatedTime != null) #estimatedTime: estimatedTime,
        if (issueName != null) #issueName: issueName,
        if (lastTimeUpdated != null) #lastTimeUpdated: lastTimeUpdated,
        if (updatedUserId != $none) #updatedUserId: updatedUserId,
        if (weight != $none) #weight: weight,
        if (healthStatus != $none) #healthStatus: healthStatus,
        if (issueUrl != null) #issueUrl: issueUrl,
        if (totalTimeSpent != null) #totalTimeSpent: totalTimeSpent,
        if (timeChange != null) #timeChange: timeChange,
        if (totalTimeSpentSimple != $none)
          #totalTimeSpentSimple: totalTimeSpentSimple,
        if (humanTimeChange != $none) #humanTimeChange: humanTimeChange,
        if (timeEstimateSimple != $none)
          #timeEstimateSimple: timeEstimateSimple,
        if (assignedUsersIds != null) #assignedUsersIds: assignedUsersIds,
        if (assigneeUserId != $none) #assigneeUserId: assigneeUserId,
        if (labels != null) #labels: labels,
        if (issueState != null) #issueState: issueState,
        if (severity != null) #severity: severity,
        if (customerRelationsContacts != null)
          #customerRelationsContacts: customerRelationsContacts,
        if (actionType != $none) #actionType: actionType
      }));
  @override
  IssueDetails $make(CopyWithData data) => IssueDetails(
      authorUserId: data.get(#authorUserId, or: $value.authorUserId),
      closedAt: data.get(#closedAt, or: $value.closedAt),
      confidentialState:
          data.get(#confidentialState, or: $value.confidentialState),
      creationDate: data.get(#creationDate, or: $value.creationDate),
      description: data.get(#description, or: $value.description),
      discussionLockedStatus:
          data.get(#discussionLockedStatus, or: $value.discussionLockedStatus),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      id: data.get(#id, or: $value.id),
      internalId: data.get(#internalId, or: $value.internalId),
      lastEditionDate: data.get(#lastEditionDate, or: $value.lastEditionDate),
      lastEditedUserId:
          data.get(#lastEditedUserId, or: $value.lastEditedUserId),
      relatedMilestoneId:
          data.get(#relatedMilestoneId, or: $value.relatedMilestoneId),
      movedToId: data.get(#movedToId, or: $value.movedToId),
      issueSimilarTo: data.get(#issueSimilarTo, or: $value.issueSimilarTo),
      relatedProjectId:
          data.get(#relatedProjectId, or: $value.relatedProjectId),
      relativePosition:
          data.get(#relativePosition, or: $value.relativePosition),
      issueStateId: data.get(#issueStateId, or: $value.issueStateId),
      estimatedTime: data.get(#estimatedTime, or: $value.estimatedTime),
      issueName: data.get(#issueName, or: $value.issueName),
      lastTimeUpdated: data.get(#lastTimeUpdated, or: $value.lastTimeUpdated),
      updatedUserId: data.get(#updatedUserId, or: $value.updatedUserId),
      weight: data.get(#weight, or: $value.weight),
      healthStatus: data.get(#healthStatus, or: $value.healthStatus),
      issueUrl: data.get(#issueUrl, or: $value.issueUrl),
      totalTimeSpent: data.get(#totalTimeSpent, or: $value.totalTimeSpent),
      timeChange: data.get(#timeChange, or: $value.timeChange),
      totalTimeSpentSimple:
          data.get(#totalTimeSpentSimple, or: $value.totalTimeSpentSimple),
      humanTimeChange: data.get(#humanTimeChange, or: $value.humanTimeChange),
      timeEstimateSimple:
          data.get(#timeEstimateSimple, or: $value.timeEstimateSimple),
      assignedUsersIds:
          data.get(#assignedUsersIds, or: $value.assignedUsersIds),
      assigneeUserId: data.get(#assigneeUserId, or: $value.assigneeUserId),
      labels: data.get(#labels, or: $value.labels),
      issueState: data.get(#issueState, or: $value.issueState),
      severity: data.get(#severity, or: $value.severity),
      customerRelationsContacts: data.get(#customerRelationsContacts,
          or: $value.customerRelationsContacts),
      actionType: data.get(#actionType, or: $value.actionType));

  @override
  IssueDetailsCopyWith<$R2, IssueDetails, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IssueDetailsCopyWithImpl($value, $cast, t);
}

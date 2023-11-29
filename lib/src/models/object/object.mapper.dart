// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'object.dart';

class ObjectAttributesMapper extends ClassMapperBase<ObjectAttributes> {
  ObjectAttributesMapper._();

  static ObjectAttributesMapper? _instance;
  static ObjectAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ObjectAttributesMapper._());
      LabelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ObjectAttributes';

  static int _$authorId(ObjectAttributes v) => v.authorId;
  static const Field<ObjectAttributes, int> _f$authorId =
      Field('authorId', _$authorId, key: 'author_id');
  static DateTime? _$closedAt(ObjectAttributes v) => v.closedAt;
  static const Field<ObjectAttributes, DateTime> _f$closedAt =
      Field('closedAt', _$closedAt, key: 'closed_at');
  static bool _$confidential(ObjectAttributes v) => v.confidential;
  static const Field<ObjectAttributes, bool> _f$confidential =
      Field('confidential', _$confidential);
  static String _$createdAt(ObjectAttributes v) => v.createdAt;
  static const Field<ObjectAttributes, String> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static String _$description(ObjectAttributes v) => v.description;
  static const Field<ObjectAttributes, String> _f$description =
      Field('description', _$description);
  static bool? _$discussionLockedStatus(ObjectAttributes v) =>
      v.discussionLockedStatus;
  static const Field<ObjectAttributes, bool> _f$discussionLockedStatus = Field(
      'discussionLockedStatus', _$discussionLockedStatus,
      key: 'discussion_locked');
  static DateTime? _$dueDate(ObjectAttributes v) => v.dueDate;
  static const Field<ObjectAttributes, DateTime> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date');
  static int _$id(ObjectAttributes v) => v.id;
  static const Field<ObjectAttributes, int> _f$id = Field('id', _$id);
  static int _$internalId(ObjectAttributes v) => v.internalId;
  static const Field<ObjectAttributes, int> _f$internalId =
      Field('internalId', _$internalId, key: 'iid');
  static DateTime? _$lastEditionDate(ObjectAttributes v) => v.lastEditionDate;
  static const Field<ObjectAttributes, DateTime> _f$lastEditionDate =
      Field('lastEditionDate', _$lastEditionDate, key: 'last_edited_at');
  static int? _$lastEditedUserId(ObjectAttributes v) => v.lastEditedUserId;
  static const Field<ObjectAttributes, int> _f$lastEditedUserId =
      Field('lastEditedUserId', _$lastEditedUserId, key: 'last_edited_by_id');
  static int? _$relatedMilestoneId(ObjectAttributes v) => v.relatedMilestoneId;
  static const Field<ObjectAttributes, int> _f$relatedMilestoneId =
      Field('relatedMilestoneId', _$relatedMilestoneId, key: 'milestone_id');
  static int? _$movedToId(ObjectAttributes v) => v.movedToId;
  static const Field<ObjectAttributes, int> _f$movedToId =
      Field('movedToId', _$movedToId, key: 'moved_to_id');
  static int? _$issueSimilarTo(ObjectAttributes v) => v.issueSimilarTo;
  static const Field<ObjectAttributes, int> _f$issueSimilarTo =
      Field('issueSimilarTo', _$issueSimilarTo, key: 'duplicated_to_id');
  static int _$relatedProjectId(ObjectAttributes v) => v.relatedProjectId;
  static const Field<ObjectAttributes, int> _f$relatedProjectId =
      Field('relatedProjectId', _$relatedProjectId, key: 'project_id');
  static int? _$relativePosition(ObjectAttributes v) => v.relativePosition;
  static const Field<ObjectAttributes, int> _f$relativePosition =
      Field('relativePosition', _$relativePosition, key: 'relative_position');
  static int _$issueStateId(ObjectAttributes v) => v.issueStateId;
  static const Field<ObjectAttributes, int> _f$issueStateId =
      Field('issueStateId', _$issueStateId, key: 'state_id');
  static int _$estimatedTime(ObjectAttributes v) => v.estimatedTime;
  static const Field<ObjectAttributes, int> _f$estimatedTime =
      Field('estimatedTime', _$estimatedTime, key: 'time_estimate');
  static String _$issueName(ObjectAttributes v) => v.issueName;
  static const Field<ObjectAttributes, String> _f$issueName =
      Field('issueName', _$issueName, key: 'title');
  static String _$lastTimeUpdated(ObjectAttributes v) => v.lastTimeUpdated;
  static const Field<ObjectAttributes, String> _f$lastTimeUpdated =
      Field('lastTimeUpdated', _$lastTimeUpdated, key: 'updated_at');
  static int? _$updatedUserId(ObjectAttributes v) => v.updatedUserId;
  static const Field<ObjectAttributes, int> _f$updatedUserId =
      Field('updatedUserId', _$updatedUserId, key: 'updated_by_id');
  static dynamic _$weight(ObjectAttributes v) => v.weight;
  static const Field<ObjectAttributes, dynamic> _f$weight =
      Field('weight', _$weight);
  static String? _$healthStatus(ObjectAttributes v) => v.healthStatus;
  static const Field<ObjectAttributes, String> _f$healthStatus =
      Field('healthStatus', _$healthStatus, key: 'health_status');
  static String _$issueUrl(ObjectAttributes v) => v.issueUrl;
  static const Field<ObjectAttributes, String> _f$issueUrl =
      Field('issueUrl', _$issueUrl, key: 'url');
  static int _$totalTimeSpent(ObjectAttributes v) => v.totalTimeSpent;
  static const Field<ObjectAttributes, int> _f$totalTimeSpent =
      Field('totalTimeSpent', _$totalTimeSpent, key: 'total_time_spent');
  static int _$timeChange(ObjectAttributes v) => v.timeChange;
  static const Field<ObjectAttributes, int> _f$timeChange =
      Field('timeChange', _$timeChange, key: 'time_change');
  static String? _$totalTimeSpentSimple(ObjectAttributes v) =>
      v.totalTimeSpentSimple;
  static const Field<ObjectAttributes, String> _f$totalTimeSpentSimple = Field(
      'totalTimeSpentSimple', _$totalTimeSpentSimple,
      key: 'human_total_time_spent');
  static dynamic _$humanTimeChange(ObjectAttributes v) => v.humanTimeChange;
  static const Field<ObjectAttributes, dynamic> _f$humanTimeChange =
      Field('humanTimeChange', _$humanTimeChange, key: 'human_time_change');
  static String? _$timeEstimateSimple(ObjectAttributes v) =>
      v.timeEstimateSimple;
  static const Field<ObjectAttributes, String> _f$timeEstimateSimple = Field(
      'timeEstimateSimple', _$timeEstimateSimple,
      key: 'human_time_estimate');
  static List<int> _$assignedUsersIds(ObjectAttributes v) => v.assignedUsersIds;
  static const Field<ObjectAttributes, List<int>> _f$assignedUsersIds =
      Field('assignedUsersIds', _$assignedUsersIds, key: 'assignee_ids');
  static int? _$assigneeUserId(ObjectAttributes v) => v.assigneeUserId;
  static const Field<ObjectAttributes, int> _f$assigneeUserId =
      Field('assigneeUserId', _$assigneeUserId, key: 'assignee_id');
  static List<Label> _$labels(ObjectAttributes v) => v.labels;
  static const Field<ObjectAttributes, List<Label>> _f$labels =
      Field('labels', _$labels);
  static String _$issueState(ObjectAttributes v) => v.issueState;
  static const Field<ObjectAttributes, String> _f$issueState =
      Field('issueState', _$issueState, key: 'state');
  static String _$severity(ObjectAttributes v) => v.severity;
  static const Field<ObjectAttributes, String> _f$severity =
      Field('severity', _$severity);
  static List<dynamic> _$customerRelationsContacts(ObjectAttributes v) =>
      v.customerRelationsContacts;
  static const Field<ObjectAttributes, List<dynamic>>
      _f$customerRelationsContacts = Field(
          'customerRelationsContacts', _$customerRelationsContacts,
          key: 'customer_relations_contacts');
  static String? _$actionType(ObjectAttributes v) => v.actionType;
  static const Field<ObjectAttributes, String> _f$actionType =
      Field('actionType', _$actionType, key: 'action');

  @override
  final Map<Symbol, Field<ObjectAttributes, dynamic>> fields = const {
    #authorId: _f$authorId,
    #closedAt: _f$closedAt,
    #confidential: _f$confidential,
    #createdAt: _f$createdAt,
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

  static ObjectAttributes _instantiate(DecodingData data) {
    return ObjectAttributes(
        authorId: data.dec(_f$authorId),
        closedAt: data.dec(_f$closedAt),
        confidential: data.dec(_f$confidential),
        createdAt: data.dec(_f$createdAt),
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

  static ObjectAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ObjectAttributes>(map);
  }

  static ObjectAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<ObjectAttributes>(json);
  }
}

mixin ObjectAttributesMappable {
  String toJson() {
    return ObjectAttributesMapper.ensureInitialized()
        .encodeJson<ObjectAttributes>(this as ObjectAttributes);
  }

  Map<String, dynamic> toMap() {
    return ObjectAttributesMapper.ensureInitialized()
        .encodeMap<ObjectAttributes>(this as ObjectAttributes);
  }

  ObjectAttributesCopyWith<ObjectAttributes, ObjectAttributes, ObjectAttributes>
      get copyWith => _ObjectAttributesCopyWithImpl(
          this as ObjectAttributes, $identity, $identity);
  @override
  String toString() {
    return ObjectAttributesMapper.ensureInitialized()
        .stringifyValue(this as ObjectAttributes);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ObjectAttributesMapper.ensureInitialized()
                .isValueEqual(this as ObjectAttributes, other));
  }

  @override
  int get hashCode {
    return ObjectAttributesMapper.ensureInitialized()
        .hashValue(this as ObjectAttributes);
  }
}

extension ObjectAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ObjectAttributes, $Out> {
  ObjectAttributesCopyWith<$R, ObjectAttributes, $Out>
      get $asObjectAttributes =>
          $base.as((v, t, t2) => _ObjectAttributesCopyWithImpl(v, t, t2));
}

abstract class ObjectAttributesCopyWith<$R, $In extends ObjectAttributes, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get assignedUsersIds;
  ListCopyWith<$R, Label, LabelCopyWith<$R, Label, Label>> get labels;
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get customerRelationsContacts;
  $R call(
      {int? authorId,
      DateTime? closedAt,
      bool? confidential,
      String? createdAt,
      String? description,
      bool? discussionLockedStatus,
      DateTime? dueDate,
      int? id,
      int? internalId,
      DateTime? lastEditionDate,
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
  ObjectAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ObjectAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ObjectAttributes, $Out>
    implements ObjectAttributesCopyWith<$R, ObjectAttributes, $Out> {
  _ObjectAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ObjectAttributes> $mapper =
      ObjectAttributesMapper.ensureInitialized();
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
          {int? authorId,
          Object? closedAt = $none,
          bool? confidential,
          String? createdAt,
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
        if (authorId != null) #authorId: authorId,
        if (closedAt != $none) #closedAt: closedAt,
        if (confidential != null) #confidential: confidential,
        if (createdAt != null) #createdAt: createdAt,
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
  ObjectAttributes $make(CopyWithData data) => ObjectAttributes(
      authorId: data.get(#authorId, or: $value.authorId),
      closedAt: data.get(#closedAt, or: $value.closedAt),
      confidential: data.get(#confidential, or: $value.confidential),
      createdAt: data.get(#createdAt, or: $value.createdAt),
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
  ObjectAttributesCopyWith<$R2, ObjectAttributes, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ObjectAttributesCopyWithImpl($value, $cast, t);
}

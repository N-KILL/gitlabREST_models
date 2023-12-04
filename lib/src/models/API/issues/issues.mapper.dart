// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'issues.dart';

class IssueAPIModelMapper extends ClassMapperBase<IssueAPIModel> {
  IssueAPIModelMapper._();

  static IssueAPIModelMapper? _instance;
  static IssueAPIModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IssueAPIModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'IssueAPIModel';

  static String? _$issueTitle(IssueAPIModel v) => v.issueTitle;
  static const Field<IssueAPIModel, String> _f$issueTitle =
      Field('issueTitle', _$issueTitle, opt: true);
  static String? _$description(IssueAPIModel v) => v.description;
  static const Field<IssueAPIModel, String> _f$description =
      Field('description', _$description, opt: true);
  static int? _$assignedToId(IssueAPIModel v) => v.assignedToId;
  static const Field<IssueAPIModel, int> _f$assignedToId =
      Field('assignedToId', _$assignedToId, opt: true);
  static List<int>? _$assignedToIds(IssueAPIModel v) => v.assignedToIds;
  static const Field<IssueAPIModel, List<int>> _f$assignedToIds =
      Field('assignedToIds', _$assignedToIds, opt: true);
  static bool? _$isConfidential(IssueAPIModel v) => v.isConfidential;
  static const Field<IssueAPIModel, bool> _f$isConfidential =
      Field('isConfidential', _$isConfidential, opt: true);
  static String? _$discussionToResolve(IssueAPIModel v) =>
      v.discussionToResolve;
  static const Field<IssueAPIModel, String> _f$discussionToResolve =
      Field('discussionToResolve', _$discussionToResolve, opt: true);
  static String? _$createdAt(IssueAPIModel v) => v.createdAt;
  static const Field<IssueAPIModel, String> _f$createdAt =
      Field('createdAt', _$createdAt, opt: true);
  static String? _$dueDate(IssueAPIModel v) => v.dueDate;
  static const Field<IssueAPIModel, String> _f$dueDate =
      Field('dueDate', _$dueDate, opt: true);
  static int? _$epicId(IssueAPIModel v) => v.epicId;
  static const Field<IssueAPIModel, int> _f$epicId =
      Field('epicId', _$epicId, opt: true);
  static int? _$epicInternalId(IssueAPIModel v) => v.epicInternalId;
  static const Field<IssueAPIModel, int> _f$epicInternalId =
      Field('epicInternalId', _$epicInternalId, opt: true);
  static String? _$issueId(IssueAPIModel v) => v.issueId;
  static const Field<IssueAPIModel, String> _f$issueId =
      Field('issueId', _$issueId, opt: true);
  static String? _$issueInternalId(IssueAPIModel v) => v.issueInternalId;
  static const Field<IssueAPIModel, String> _f$issueInternalId =
      Field('issueInternalId', _$issueInternalId, opt: true);
  static String? _$issueType(IssueAPIModel v) => v.issueType;
  static const Field<IssueAPIModel, String> _f$issueType =
      Field('issueType', _$issueType, opt: true);
  static List<String>? _$issueLabels(IssueAPIModel v) => v.issueLabels;
  static const Field<IssueAPIModel, List<String>> _f$issueLabels =
      Field('issueLabels', _$issueLabels, opt: true);
  static int? _$mergeRequestInternalId(IssueAPIModel v) =>
      v.mergeRequestInternalId;
  static const Field<IssueAPIModel, int> _f$mergeRequestInternalId =
      Field('mergeRequestInternalId', _$mergeRequestInternalId, opt: true);
  static int? _$milestoneId(IssueAPIModel v) => v.milestoneId;
  static const Field<IssueAPIModel, int> _f$milestoneId =
      Field('milestoneId', _$milestoneId, opt: true);
  static int? _$weight(IssueAPIModel v) => v.weight;
  static const Field<IssueAPIModel, int> _f$weight =
      Field('weight', _$weight, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<IssueAPIModel, dynamic>> fields = const {
    #issueTitle: _f$issueTitle,
    #description: _f$description,
    #assignedToId: _f$assignedToId,
    #assignedToIds: _f$assignedToIds,
    #isConfidential: _f$isConfidential,
    #discussionToResolve: _f$discussionToResolve,
    #createdAt: _f$createdAt,
    #dueDate: _f$dueDate,
    #epicId: _f$epicId,
    #epicInternalId: _f$epicInternalId,
    #issueId: _f$issueId,
    #issueInternalId: _f$issueInternalId,
    #issueType: _f$issueType,
    #issueLabels: _f$issueLabels,
    #mergeRequestInternalId: _f$mergeRequestInternalId,
    #milestoneId: _f$milestoneId,
    #weight: _f$weight,
  };

  static IssueAPIModel _instantiate(DecodingData data) {
    return IssueAPIModel(
        issueTitle: data.dec(_f$issueTitle),
        description: data.dec(_f$description),
        assignedToId: data.dec(_f$assignedToId),
        assignedToIds: data.dec(_f$assignedToIds),
        isConfidential: data.dec(_f$isConfidential),
        discussionToResolve: data.dec(_f$discussionToResolve),
        createdAt: data.dec(_f$createdAt),
        dueDate: data.dec(_f$dueDate),
        epicId: data.dec(_f$epicId),
        epicInternalId: data.dec(_f$epicInternalId),
        issueId: data.dec(_f$issueId),
        issueInternalId: data.dec(_f$issueInternalId),
        issueType: data.dec(_f$issueType),
        issueLabels: data.dec(_f$issueLabels),
        mergeRequestInternalId: data.dec(_f$mergeRequestInternalId),
        milestoneId: data.dec(_f$milestoneId));
  }

  @override
  final Function instantiate = _instantiate;

  static IssueAPIModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IssueAPIModel>(map);
  }

  static IssueAPIModel fromJson(String json) {
    return ensureInitialized().decodeJson<IssueAPIModel>(json);
  }
}

mixin IssueAPIModelMappable {
  String toJson() {
    return IssueAPIModelMapper.ensureInitialized()
        .encodeJson<IssueAPIModel>(this as IssueAPIModel);
  }

  Map<String, dynamic> toMap() {
    return IssueAPIModelMapper.ensureInitialized()
        .encodeMap<IssueAPIModel>(this as IssueAPIModel);
  }

  IssueAPIModelCopyWith<IssueAPIModel, IssueAPIModel, IssueAPIModel>
      get copyWith => _IssueAPIModelCopyWithImpl(
          this as IssueAPIModel, $identity, $identity);
  @override
  String toString() {
    return IssueAPIModelMapper.ensureInitialized()
        .stringifyValue(this as IssueAPIModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            IssueAPIModelMapper.ensureInitialized()
                .isValueEqual(this as IssueAPIModel, other));
  }

  @override
  int get hashCode {
    return IssueAPIModelMapper.ensureInitialized()
        .hashValue(this as IssueAPIModel);
  }
}

extension IssueAPIModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IssueAPIModel, $Out> {
  IssueAPIModelCopyWith<$R, IssueAPIModel, $Out> get $asIssueAPIModel =>
      $base.as((v, t, t2) => _IssueAPIModelCopyWithImpl(v, t, t2));
}

abstract class IssueAPIModelCopyWith<$R, $In extends IssueAPIModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get assignedToIds;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get issueLabels;
  $R call(
      {String? issueTitle,
      String? description,
      int? assignedToId,
      List<int>? assignedToIds,
      bool? isConfidential,
      String? discussionToResolve,
      String? createdAt,
      String? dueDate,
      int? epicId,
      int? epicInternalId,
      String? issueId,
      String? issueInternalId,
      String? issueType,
      List<String>? issueLabels,
      int? mergeRequestInternalId,
      int? milestoneId});
  IssueAPIModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IssueAPIModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IssueAPIModel, $Out>
    implements IssueAPIModelCopyWith<$R, IssueAPIModel, $Out> {
  _IssueAPIModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IssueAPIModel> $mapper =
      IssueAPIModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get assignedToIds =>
      $value.assignedToIds != null
          ? ListCopyWith(
              $value.assignedToIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(assignedToIds: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get issueLabels => $value.issueLabels != null
          ? ListCopyWith(
              $value.issueLabels!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(issueLabels: v))
          : null;
  @override
  $R call(
          {Object? issueTitle = $none,
          Object? description = $none,
          Object? assignedToId = $none,
          Object? assignedToIds = $none,
          Object? isConfidential = $none,
          Object? discussionToResolve = $none,
          Object? createdAt = $none,
          Object? dueDate = $none,
          Object? epicId = $none,
          Object? epicInternalId = $none,
          Object? issueId = $none,
          Object? issueInternalId = $none,
          Object? issueType = $none,
          Object? issueLabels = $none,
          Object? mergeRequestInternalId = $none,
          Object? milestoneId = $none}) =>
      $apply(FieldCopyWithData({
        if (issueTitle != $none) #issueTitle: issueTitle,
        if (description != $none) #description: description,
        if (assignedToId != $none) #assignedToId: assignedToId,
        if (assignedToIds != $none) #assignedToIds: assignedToIds,
        if (isConfidential != $none) #isConfidential: isConfidential,
        if (discussionToResolve != $none)
          #discussionToResolve: discussionToResolve,
        if (createdAt != $none) #createdAt: createdAt,
        if (dueDate != $none) #dueDate: dueDate,
        if (epicId != $none) #epicId: epicId,
        if (epicInternalId != $none) #epicInternalId: epicInternalId,
        if (issueId != $none) #issueId: issueId,
        if (issueInternalId != $none) #issueInternalId: issueInternalId,
        if (issueType != $none) #issueType: issueType,
        if (issueLabels != $none) #issueLabels: issueLabels,
        if (mergeRequestInternalId != $none)
          #mergeRequestInternalId: mergeRequestInternalId,
        if (milestoneId != $none) #milestoneId: milestoneId
      }));
  @override
  IssueAPIModel $make(CopyWithData data) => IssueAPIModel(
      issueTitle: data.get(#issueTitle, or: $value.issueTitle),
      description: data.get(#description, or: $value.description),
      assignedToId: data.get(#assignedToId, or: $value.assignedToId),
      assignedToIds: data.get(#assignedToIds, or: $value.assignedToIds),
      isConfidential: data.get(#isConfidential, or: $value.isConfidential),
      discussionToResolve:
          data.get(#discussionToResolve, or: $value.discussionToResolve),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      epicId: data.get(#epicId, or: $value.epicId),
      epicInternalId: data.get(#epicInternalId, or: $value.epicInternalId),
      issueId: data.get(#issueId, or: $value.issueId),
      issueInternalId: data.get(#issueInternalId, or: $value.issueInternalId),
      issueType: data.get(#issueType, or: $value.issueType),
      issueLabels: data.get(#issueLabels, or: $value.issueLabels),
      mergeRequestInternalId:
          data.get(#mergeRequestInternalId, or: $value.mergeRequestInternalId),
      milestoneId: data.get(#milestoneId, or: $value.milestoneId));

  @override
  IssueAPIModelCopyWith<$R2, IssueAPIModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IssueAPIModelCopyWithImpl($value, $cast, t);
}

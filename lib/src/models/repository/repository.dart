import 'package:dart_mappable/dart_mappable.dart';

part 'repository.mapper.dart';

///
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GitLabRepository with GitLabRepositoryMappable{
  ///
  GitLabRepository({
    required this.name,
    required this.url,
    required this.description,
    required this.homepageUrl,
    required this.gitHttpUrl,
    required this.gitSshUrl,
    required this.visibilityLevel,
  });

  ///
  String name;

  ///
  String url;

  ///
  String? description;

  ///
  @MappableField(key: 'homepage')
  String homepageUrl;

  ///
  String gitHttpUrl;

  ///
  String gitSshUrl;

  ///
  int visibilityLevel;

  /// FromJson method, convert a json type object into this GitLabRepository
  /// Object
  static const fromJson = GitLabRepositoryMapper.fromJson;
}

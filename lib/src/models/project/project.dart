import 'package:dart_mappable/dart_mappable.dart';

part 'project.mapper.dart';

///
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GitLabProject with GitLabProjectMappable{
  ///
  GitLabProject({
    required this.projectId,
    required this.name,
    required this.description,
    required this.webUrl,
    required this.projectAvatarUrl,
    required this.gitSshUrl,
    required this.gitHttpUrl,
    required this.namespace,
    required this.visibilityLevel,
    required this.projectPathWithNamespace,
    required this.projectDefaultBranch,
    required this.projectCIConfigPath,
    required this.homepageUrl,
    required this.projectUrl,
    required this.sshUrl,
    required this.httpUrl,
  });

  ///
  @MappableField(key: 'id')
  int projectId;

  ///
  String name;

  ///
  @MappableField(key: 'description')
  String? description;

  ///
  String webUrl;

  ///
  @MappableField(key: 'avatar_url')
  String? projectAvatarUrl;

  ///
  String gitSshUrl;

  ///
  String gitHttpUrl;

  ///
  String namespace;

  ///
  int visibilityLevel;

  ///
  @MappableField(key: 'path_with_namespace')
  String projectPathWithNamespace;

  ///
  @MappableField(key: 'default_branch')
  String projectDefaultBranch;

  ///
  @MappableField(key: 'ci_config_path')
  String projectCIConfigPath;

  ///
  @MappableField(key: 'homepage')
  String homepageUrl;

  ///
  @MappableField(key: 'url')
  String projectUrl;

  ///
  String sshUrl;

  ///
  String httpUrl;
  
  /// FromJson method, convert a json type object into this GitLabProject Object
  static const fromJson = GitLabProjectMapper.fromJson;
}

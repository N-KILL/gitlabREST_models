import 'package:dart_mappable/dart_mappable.dart';

part 'author.mapper.dart';

///
@MappableClass(caseStyle: CaseStyle.snakeCase)
class Author with AuthorMappable{
  ///
  Author({
    required this.name,
    required this.email,
  });

  ///
  String name;

  ///
  String email;

  /// FromJson method, convert a json type object into this Author Object
  static const fromJson = AuthorMapper.fromJson;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

@freezed
class Person with _$Person {
  const factory Person({required String? name, required int? age}) = _Person;

  // not mandatory
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

@immutable
class User {
  final String id;
  final String name;
  final String pwd;

  final int major_id1;
  final int major_id2;
  final int major_id3;

  final int grade;
  final int role;
  final int status;
  final String fcm;

  const User(
      {required this.id,
      required this.name,
      required this.pwd,
      required this.major_id1,
      required this.major_id2,
      required this.major_id3,
      required this.grade,
      required this.role,
      required this.status,
      required this.fcm});

  factory User.fromJson(Map<String, dynamic> json) => User(
      id: json['id'],
      name: json['name'],
      pwd: json['pwd'],
      major_id1: json['major_id1'],
      major_id2: json['major_id2'],
      major_id3: json['major_id3'],
      grade: json['grade'],
      role: json['role'],
      status: json['status'],
      fcm: json['fcm']);

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "pwd": pwd,
        "major_id1": major_id1,
        "major_id2": major_id2,
        "major_id3": major_id3,
        "grade": grade,
        "role": role,
        "status": status,
        "fcm": fcm
      };
}

//   User copyWith(
//       {String? id,
//       String? name,
//       String? pwd,
//       int? major_id1,
//       int? major_id2,
//       int? major_id3,
//       int? grade,
//       int? role,
//       int? status,
//       String? fcm}) {
//     return User(
//         id: id ?? this.id,
//         name: name ?? this.name,
//         pwd: pwd ?? this.pwd,
//         major_id1: major_id1 ?? this.major_id1,
//         major_id2: major_id1 ?? this.major_id2,
//         major_id3: major_id1 ?? this.major_id3,
//         grade: grade ?? this.grade,
//         role: role ?? this.role,
//         status: status ?? this.status,
//         fcm: fcm ?? this.fcm);
//   }
// }


// List<User> userFromJson(String str) {
//   List<User>.from(json.decode(str).amp((x) => User.fromJson(x)));
// }

// String userToJson(List<User> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
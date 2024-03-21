import 'package:flutter/material.dart';
import 'package:granity/screens/board/board.dart';
import 'package:granity/screens/board/post_detail.dart';
import 'package:granity/screens/board/post_form.dart';
import 'package:granity/screens/common/change_password_form.dart';
import 'package:granity/screens/common/join.dart';
import 'package:granity/screens/common/login.dart';
import 'package:granity/screens/faq/faq_detail.dart';
import 'package:granity/screens/faq/faq_form.dart';
import 'package:granity/screens/faq/faq_list.dart';
import 'package:granity/screens/graduation/approval_request_form.dart';
import 'package:granity/screens/graduation/expected_list.dart';
import 'package:granity/screens/graduation/my_graduation.dart';
import 'package:granity/screens/graduation/requirement_detail.dart';
import 'package:granity/screens/graduation/requirement_form.dart';
import 'package:granity/screens/graduation/requirement_list.dart';
// common
import 'package:granity/screens/home/home.dart';
import 'package:granity/screens/major/curriculum_form.dart';
import 'package:granity/screens/major/curriculum_list.dart';
import 'package:granity/screens/major/lab_form.dart';
import 'package:granity/screens/major/lab_list.dart';
import 'package:granity/screens/major/major_information.dart';
import 'package:granity/screens/major/major_information_form.dart';
import 'package:granity/screens/major/professor_detail.dart';
import 'package:granity/screens/major/professor_form.dart';
import 'package:granity/screens/major/professor_list.dart';
import 'package:granity/screens/major/student_council.dart';
import 'package:granity/screens/major/student_list.dart';
import 'package:granity/screens/message/message_form.dart';
import 'package:granity/screens/message/message_list.dart';
import 'package:granity/screens/user/comment_list.dart';
import 'package:granity/screens/user/post_list.dart';
import 'package:granity/screens/user/push_list.dart';
import 'package:granity/screens/user/user_information.dart';

final routes = {
  // common
  '/': (BuildContext context) => const HomeScreen(),
  '/join': (BuildContext context) => JoinScreen(),
  '/login': (BuildContext context) => LoginScreen(),
  '/change/password': (BuildContext context) => ChangePasswordFormScreen(),

  // board
  '/board': (BuildContext context) => BoardScreen(),
  '/board/post': (BuildContext context) => PostDetailScreen(),
  '/board/form': (BuildContext context) => PostFormScreen(),

  // graduation
  '/graduation:': (BuildContext context) => MyGraduationScreen(),
  '/graduation/request': (BuildContext context) => ApprovalRequestFormScreen(),
  '/graducation/expected': (BuildContext context) => ExpectedListScreen(),
  '/graduation/requirement': (BuildContext context) => RequirementListScreen(),
  '/graduation/requirement/detail': (BuildContext context) =>
      RequirementDetailScreen(),
  '/graduation/requirement/form': (BuildContext context) =>
      RequirementFormScreen(),

  // user
  '/user': (BuildContext context) => UserInformationScreen(),
  '/user/post': (BuildContext context) => PostListScreen(),
  '/user/comment': (BuildContext context) => CommentListScreen(),
  '/user/push': (BuildContext context) => PushListScreen(),

  // major
  '/major': (BuildContext context) => MajorInformationScreen(),
  '/major/form': (BuildContext context) => MajorInformationFormScreen(),
  '/major/student': (BuildContext context) => StudentListScreen(),
  '/major/student/council': (BuildContext context) => StudentCouncilScreen(),

  '/major/professor': (BuildContext context) => ProfessorListScreen(),
  '/major/professor/detail': (BuildContext context) => ProfessorDetailScreen(),
  '/major/professor/form': (BuildContext context) => ProfessorFormScreen(),

  '/major/curriculum': (BuildContext context) => CurriculumListScreen(),
  '/major/curriculum/form': (BuildContext context) => CurriculumFormScreen(),

  '/major/lab': (BuildContext context) => LabListScreen(),
  '/major/lab/form': (BuildContext context) => LabFormScreen(),

  // notice
  '/notice': (BuildContext context) => ProfessorListScreen(),
  '/notice/detail': (BuildContext context) => ProfessorDetailScreen(),
  '/notice/form': (BuildContext context) => ProfessorFormScreen(),

  // faq
  '/faq': (BuildContext context) => FaqListScreen(),
  '/faq/detail': (BuildContext context) => FaqDetailScreen(),
  '/faq/form': (BuildContext context) => FaqFormScreen(),

  // message // 메시지 상세보기 => 공지사항 상세보기
  '/message': (BuildContext context) => MessageListScreen(),
  '/message/form': (BuildContext context) => MessageFormScreen(),
};

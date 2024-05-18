import 'package:go_router/go_router.dart';
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
import 'package:granity/screens/major/major_home.dart';
import 'package:granity/screens/major/major_information_form.dart';
import 'package:granity/screens/major/professor_detail.dart';
import 'package:granity/screens/major/professor_form.dart';
import 'package:granity/screens/major/professor_list.dart';
import 'package:granity/screens/major/student_council.dart';
import 'package:granity/screens/major/student_list.dart';
import 'package:granity/screens/message/message_form.dart';
import 'package:granity/screens/message/message_list.dart';
import 'package:granity/screens/notice/notice_detail.dart';
import 'package:granity/screens/notice/notice_form.dart';
import 'package:granity/screens/notice/notice_list.dart';
import 'package:granity/screens/test/basic_listView.dart';
import 'package:granity/screens/test/custom_listView.dart';
import 'package:granity/screens/test/error_listView.dart';
import 'package:granity/screens/user/comment_list.dart';
import 'package:granity/screens/user/post_list.dart';
import 'package:granity/screens/user/push_list.dart';
import 'package:granity/screens/user/user_information.dart';

// final GoRouter _router = GoRouter(
//   initialLocation: '/a',
//   routes: <RouteBase>[
//     StatefulShellRoute.indexedStack(
//       builder: (BuildContext context, GoRouterState state,
//           StatefulNavigationShell navigationShell) {
//         // 사용자 정의 셸을 구현하는 위젯을 반환합니다. (BottomNavigationBar)
//         return Scaffold(
// 			body: navigationShell,
//       		bottomNavigationBar: BottomNavigationBar(
// 	        items: const <BottomNavigationBarItem>[
// 	          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Section A'),
//     	      BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Section B'),
//         	  BottomNavigationBarItem(icon: Icon(Icons.tab), label: 'Section C'),
// 	        ],
//     	    currentIndex: navigationShell.currentIndex,
//         	onTap: (int index) {
//             	// 브랜치를 전환하는데는 StatefulNavigationShell.goBranch 메서드를 사용한다.
//             	navigationShell.goBranch(index);
//             },
// 	      ),
//     	);
//       },

//       // 각각 별도의 상태 저장 분기를 생성하기 위해 StatefulShellBranch 메서드를 사용한다.
//       branches: <StatefulShellBranch>[
//       	// Tab A (First Tab)
//         StatefulShellBranch(
//           routes: <RouteBase>[
//             GoRoute(
//               path: '/a',
//               builder: (BuildContext context, GoRouterState state) =>
//               const RootScreen(label: 'A', detailsPath: '/a/details'),
//               routes: <RouteBase>[
//                 GoRoute(
//                   path: 'details',
//                   builder: (BuildContext context, GoRouterState state) =>
//                   const DetailsScreen(label: 'A'),
//                 ),
//               ],
//             ),
//           ],
//         ),

//         // Tab B (Second Tab)
//         StatefulShellBranch(
//           routes: <RouteBase>[
//             GoRoute(
//               path: '/b',
//               builder: (BuildContext context, GoRouterState state) =>
//               const RootScreen(
//                 label: 'B',
//                 detailsPath: '/b/details/1',
//                 secondDetailsPath: '/b/details/2',
//               ),
//               routes: <RouteBase>[
//                 GoRoute(
//                   path: 'details/:param',
//                   builder: (BuildContext context, GoRouterState state) =>
//                       DetailsScreen(
//                         label: 'B',
//                         param: state.pathParameters['param'],
//                       ),
//                 ),
//               ],
//             ),
//           ],
//         ),

//         // Tab C (Third Tab)
//         StatefulShellBranch(
//           routes: <RouteBase>[
//             GoRoute(
//               path: '/c',
//               builder: (BuildContext context, GoRouterState state) =>
//               const RootScreen(
//                 label: 'C',
//                 detailsPath: '/c/details',
//               ),
//               routes: <RouteBase>[
//                 GoRoute(
//                   path: 'details',!
//                   builder: (BuildContext context, GoRouterState state) =>
//                       DetailsScreen(
//                         label: 'C',
//                         extra: state.extra,
//                       ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     ),
//   ],
// );

// final GoRouter routes = GoRouter(
//   initialLocation: '/',
//   routes: <RouteBase>[
//     StatefulShellRoute.indexedStack(
//       builder: (BuildContext context, GoRouterState state,
//           StatefulNavigationShell navigationShell) {
//         // 사용자 정의 셸을 구현하는 위젯을 반환합니다. (BottomNavigationBar)
//         return Scaffold(
//           body: navigationShell,
//           bottomNavigationBar: BottomNavigationBar(
//               type: BottomNavigationBarType.fixed,
//               selectedItemColor: ColorStyles.appMainColor,
//               unselectedItemColor: ColorStyles.textBodyColor,
//               unselectedLabelStyle: const TextStyle(fontFamily: 'Pretendard'),
//               selectedLabelStyle: const TextStyle(
//                   fontWeight: FontWeight.bold, fontFamily: 'Pretendard'),
//               items: const [
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                   label: '메인',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.dashboard),
//                   label: '게시판',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.school),
//                   label: '졸업',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.person),
//                   label: 'MY',
//                 )
//               ],
//               onTap: (index) {
//                 navigationShell.goBranch(index);
//                 // switch (index) {
//                 //   case 0:
//                 //     context.go('/');
//                 //     break;
//                 //   case 1:
//                 //     context.go('/board');
//                 //     break;
//                 //   case 2:
//                 //     context.go('/graduation');
//                 //     break;
//                 //   case 3:
//                 //     context.go('user');
//                 //     break;
//                 // }
//               }),
//         );
//       },

//       // 각각 별도의 상태 저장 분기를 생성하기 위해 StatefulShellBranch 메서드를 사용한다.
//       branches: <StatefulShellBranch>[
//         // Tab A (First Tab)
//         StatefulShellBranch(
//           routes: <RouteBase>[
//             GoRoute(
//               path: '/',
//               builder: (BuildContext context, GoRouterState state) =>
//                   const HomeScreen(),
//             ),
//           ],
//         ),

//         // Tab B (Second Tab)
//         StatefulShellBranch(
//           routes: <RouteBase>[
//             GoRoute(
//               path: '/board',
//               builder: (BuildContext context, GoRouterState state) =>
//                   BoardScreen(),
//             ),
//           ],
//         ),

//         // Tab C (Third Tab)
//         StatefulShellBranch(
//           routes: <RouteBase>[
//             GoRoute(
//               path: '/graduation',
//               builder: (BuildContext context, GoRouterState state) =>
//                   MyGraduationScreen(),
//             ),
//           ],
//         ),

//         StatefulShellBranch(
//           routes: <RouteBase>[
//             GoRoute(
//               path: '/user',
//               builder: (BuildContext context, GoRouterState state) =>
//                   UserInformationScreen(),
//             ),
//           ],
//         ),
//       ],
//     ),
//     // common
//     GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
//     GoRoute(path: '/join', builder: (context, state) => JoinScreen()),
//     GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
//     GoRoute(
//         path: '/change/password',
//         builder: (context, state) => ChangePasswordFormScreen()),
//     // common

//     // board
//     // GoRoute(path: '/board', builder: (context, state) => BoardScreen()),
//     GoRoute(
//         path: '/board/post', builder: (context, state) => PostDetailScreen()),
//     GoRoute(path: '/board/form', builder: (context, state) => PostFormScreen()),

//     // graduation
//     // GoRoute(
//     //     path: '/graduation:',
//     //     builder: (context, state) => MyGraduationScreen()),
//     GoRoute(
//         path: '/graduation/request',
//         builder: (context, state) => ApprovalRequestFormScreen()),
//     GoRoute(
//         path: '/graducation/expected',
//         builder: (context, state) => ExpectedListScreen()),
//     GoRoute(
//         path: '/graduation/requirement',
//         builder: (context, state) => RequirementListScreen()),
//     GoRoute(
//         path: '/graduation/requirement/detail',
//         builder: (context, state) => RequirementDetailScreen()),
//     GoRoute(
//         path: '/graduation/requirement/form',
//         builder: (context, state) => RequirementFormScreen()),

//     // user
//     // GoRoute(
//     //     path: '/user', builder: (context, state) => UserInformationScreen()),
//     GoRoute(path: '/user/post', builder: (context, state) => PostListScreen()),
//     GoRoute(
//         path: '/user/comment',
//         builder: (context, state) => CommentListScreen()),
//     GoRoute(path: '/user/push', builder: (context, state) => PushListScreen()),

//     // major
//     GoRoute(
//         path: '/major', builder: (context, state) => MajorInformationScreen()),
//     GoRoute(
//         path: '/major/form',
//         builder: (context, state) => MajorInformationFormScreen()),
//     GoRoute(
//         path: '/major/student',
//         builder: (context, state) => StudentListScreen()),
//     GoRoute(
//         path: '/major/student/council',
//         builder: (context, state) => StudentCouncilScreen()),

//     GoRoute(
//         path: '/major/professor',
//         builder: (context, state) => ProfessorListScreen()),
//     GoRoute(
//         path: '/major/professor/detail',
//         builder: (context, state) => ProfessorDetailScreen()),
//     GoRoute(
//         path: '/major/professor/form',
//         builder: (context, state) => ProfessorFormScreen()),

//     GoRoute(
//         path: '/major/curriculum',
//         builder: (context, state) => CurriculumListScreen()),
//     GoRoute(
//         path: '/major/curriculum/form',
//         builder: (context, state) => CurriculumFormScreen()),

//     GoRoute(path: '/major/lab', builder: (context, state) => LabListScreen()),
//     GoRoute(
//         path: '/major/lab/form', builder: (context, state) => LabFormScreen()),

//     // notice
//     GoRoute(
//         path: '/notice', builder: (context, state) => ProfessorListScreen()),
//     GoRoute(
//         path: '/notice/detail',
//         builder: (context, state) => ProfessorDetailScreen()),
//     GoRoute(
//         path: '/notice/form',
//         builder: (context, state) => ProfessorFormScreen()),

//     // faq
//     GoRoute(path: '/faq', builder: (context, state) => FaqListScreen()),
//     GoRoute(
//         path: '/faq/detail', builder: (context, state) => FaqDetailScreen()),
//     GoRoute(path: '/faq/form', builder: (context, state) => FaqFormScreen()),

//     // message // 메시지 상세보기 => 공지사항 상세보기
//     GoRoute(path: '/message', builder: (context, state) => MessageListScreen()),
//     GoRoute(
//         path: '/message/form',
//         builder: (context, state) => MessageFormScreen()),
//   ],
// );

final GoRouter routes = GoRouter(
  initialLocation: '/login',
  routes: [
    // common
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/join', builder: (context, state) => const JoinScreen()),
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(
        path: '/change/password',
        builder: (context, state) => ChangePasswordFormScreen()),
    // common

    // board
    GoRoute(path: '/board', builder: (context, state) => BoardScreen()),
    GoRoute(
        path: '/board/post', builder: (context, state) => PostDetailScreen()),
    GoRoute(path: '/board/form', builder: (context, state) => PostFormScreen()),

    // graduation
    GoRoute(
        path: '/graduation',
        name: "졸업",
        builder: (context, state) => MyGraduationScreen()),
    GoRoute(
        path: '/graduation/request',
        builder: (context, state) => ApprovalRequestFormScreen()),
    GoRoute(
        path: '/graducation/expected',
        builder: (context, state) => ExpectedListScreen()),
    GoRoute(
        path: '/graduation/requirement',
        builder: (context, state) => RequirementListScreen()),
    GoRoute(
        path: '/graduation/requirement/detail',
        builder: (context, state) => RequirementDetailScreen()),
    GoRoute(
        path: '/graduation/requirement/form',
        builder: (context, state) => RequirementFormScreen()),

    // user
    GoRoute(
        path: '/user', builder: (context, state) => UserInformationScreen()),
    GoRoute(path: '/user/post', builder: (context, state) => PostListScreen()),
    GoRoute(
        path: '/user/comment',
        builder: (context, state) => CommentListScreen()),
    GoRoute(path: '/user/push', builder: (context, state) => PushListScreen()),

    // major
    GoRoute(
        path: '/major', builder: (context, state) => const MajorHomeScreen()),
    GoRoute(
        path: '/major/form',
        builder: (context, state) => MajorInformationFormScreen()),
    GoRoute(
        path: '/major/student',
        builder: (context, state) => StudentListScreen()),
    GoRoute(
        path: '/major/student/council',
        builder: (context, state) => StudentCouncilScreen()),

    GoRoute(
        path: '/major/professor',
        builder: (context, state) => ProfessorListScreen()),
    GoRoute(
        path: '/major/professor/detail',
        builder: (context, state) => ProfessorDetailScreen()),
    GoRoute(
        path: '/major/professor/form',
        builder: (context, state) => ProfessorFormScreen()),

    GoRoute(
        path: '/major/curriculum',
        builder: (context, state) => CurriculumListScreen()),
    GoRoute(
        path: '/major/curriculum/form',
        builder: (context, state) => CurriculumFormScreen()),

    GoRoute(path: '/major/lab', builder: (context, state) => LabListScreen()),
    GoRoute(
        path: '/major/lab/form', builder: (context, state) => LabFormScreen()),

    // notice
    GoRoute(
        path: '/notice', builder: (context, state) => const NoticeListScreen()),
    GoRoute(
        path: '/notice/detail',
        builder: (context, state) =>
            NoticeDetailScreen(notice: state.extra as dynamic)),
    GoRoute(
        path: '/notice/form', builder: (context, state) => NoticeFormScreen()),

    // faq
    GoRoute(path: '/faq', builder: (context, state) => FaqListScreen()),
    GoRoute(
        path: '/faq/detail', builder: (context, state) => FaqDetailScreen()),
    GoRoute(path: '/faq/form', builder: (context, state) => FaqFormScreen()),

    // message // 메시지 상세보기 => 공지사항 상세보기
    GoRoute(path: '/message', builder: (context, state) => MessageListScreen()),
    GoRoute(
        path: '/message/form',
        builder: (context, state) => MessageFormScreen()),
    GoRoute(
        path: '/test/listview/basic',
        builder: (context, state) => const TestBasicListViewScreen()),
    GoRoute(
        path: '/test/listview/error',
        builder: (context, state) => const TestErrorListViewScreen()),
    GoRoute(
        path: '/test/listview/custom',
        builder: (context, state) => const TestCustomListViewScreen()),
  ],
);

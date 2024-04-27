import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/screens/board/board.dart';
import 'package:granity/screens/graduation/my_graduation.dart';
import 'package:granity/screens/home/main.dart';
import 'package:granity/screens/user/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  int _index = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _navItems.length, vsync: this);
    _tabController.addListener(tabListener);
  }

  @override
  void dispose() {
    _tabController.removeListener(tabListener);
    super.dispose();
  }

  void tabListener() {
    setState(() {
      _index = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: ColorStyles.appMainColor,
        unselectedItemColor: ColorStyles.textBodyColor,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 13,
        ),
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          _tabController.animateTo(index);
        },
        currentIndex: _index,
        items: _navItems.map((item) {
          return BottomNavigationBarItem(
            icon: Icon(
              _index == item.index ? item.activeIcon : item.inactiveIcon,
            ),
            label: item.label,
          );
        }).toList(),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          MainScreen(),
          BoardScreen(),
          MyGraduationScreen(),
          UserScreen()
        ],
      ),
    );
  }
}

class NavItem {
  final int index;
  final IconData activeIcon;
  final IconData inactiveIcon;
  final String label;

  const NavItem({
    required this.index,
    required this.activeIcon,
    required this.inactiveIcon,
    required this.label,
  });
}

const _navItems = [
  NavItem(
    index: 0,
    activeIcon: Icons.home,
    inactiveIcon: Icons.home_outlined,
    label: '홈',
  ),
  NavItem(
    index: 1,
    activeIcon: Icons.dashboard,
    inactiveIcon: Icons.dashboard_outlined,
    label: '게시판',
  ),
  NavItem(
    index: 2,
    activeIcon: Icons.school,
    inactiveIcon: Icons.school_outlined,
    label: '졸업',
  ),
  NavItem(
    index: 3,
    activeIcon: Icons.person,
    inactiveIcon: Icons.person_outline,
    label: 'MY',
  ),
];



      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: ColorStyles.appMainColor,
      //   unselectedItemColor: ColorStyles.textBodyColor,
      //   unselectedLabelStyle: const TextStyle(fontFamily: 'Pretendard'),
      //   selectedLabelStyle: const TextStyle(
      //       fontWeight: FontWeight.bold, fontFamily: 'Pretendard'),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: '메인',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.dashboard),
      //       label: '게시판',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: '졸업',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'MY',
      //     )
      //   ],
      //   currentIndex: widget._selectedIndex,
      //   onTap: (index) {
      //     print(widget._selectedIndex);
      //     setState(() {
      //       widget._selectedIndex = index;
      //     });
      //   },
      // ),
      // body: _getBody(),
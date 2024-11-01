import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomAppbar extends StatefulWidget {
  const CustomBottomAppbar({super.key});

  @override
  State<CustomBottomAppbar> createState() => _CustomBottomAppbarState();
}

class _CustomBottomAppbarState extends State<CustomBottomAppbar> {
  int _selectedIndex = 0;

  void _onTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.house),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.chartBar),
          label: '차트',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.list),
          label: '기록',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.gear),
          label: '설정',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onTap,
    );
  }
}

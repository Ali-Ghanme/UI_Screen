import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final Function onTap;
  final bool isSelected;

  NavBarItem(
      {required this.icon, required this.onTap, required this.isSelected});

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: widget.isSelected
            ? Colors.grey.withOpacity(0.3)
            : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Icon(
        widget.icon,
        color: widget.isSelected ? Colors.black : Colors.grey[500],
        size: 20,
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  NavBar({required this.selectedIndex, required this.onItemTapped});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.selectedIndex,
          onTap: widget.onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: NavBarItem(
                icon: Icons.home,
                onTap: () {},
                isSelected: widget.selectedIndex == 0,
              ),
              activeIcon: Container(
                height: 0.h,
              ),
            ),
            BottomNavigationBarItem(
              icon: NavBarItem(
                icon: Icons.search,
                onTap: () {},
                isSelected: widget.selectedIndex == 1,
              ),
              activeIcon: Container(
                height: 0.h,
              ),
            ),
            BottomNavigationBarItem(
              icon: NavBarItem(
                icon: Icons.person,
                onTap: () {},
                isSelected: widget.selectedIndex == 2,
              ),
              activeIcon: Container(
                height: 0.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

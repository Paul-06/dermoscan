import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/bottom_app_bar_theme.dart';
import 'package:flutter/material.dart';

class DBottomAppBar extends StatelessWidget {
  final int currentTab;
  final ValueChanged<int> onTabChanged;
  final BuildContext context;

  const DBottomAppBar({
    Key? key,
    required this.currentTab,
    required this.onTabChanged,
    required this.context, // Agregamos el contexto como un parametro
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildTab(0, Icons.home_rounded, dHome),
            _buildTab(1, Icons.favorite_rounded, dResults),
            const Spacer(),
            _buildTab(2, Icons.book_rounded, dInfo),
            _buildTab(3, Icons.settings_rounded, dSettings),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(int index, IconData icon, String label) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () => onTabChanged(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: DBottomAppBarTheme.getTabIconColor(context, currentTab == index),
          ),
          Text(
            label,
            style: DBottomAppBarTheme.getTabTextStyle(context, currentTab == index),
          ),
        ],
      ),
    );
  }
}

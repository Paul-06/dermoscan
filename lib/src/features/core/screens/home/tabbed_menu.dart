import 'package:flutter/material.dart';

class TabbedMenu extends StatelessWidget {
  const TabbedMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 6.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.home_rounded,
                ),
                Text(
                  "Home",
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(right: 45.0, top: 10.0, bottom: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.favorite,
                ),
                Text(
                  "Results",
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 45.0, top: 10.0, bottom: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.book_rounded,
                ),
                Text(
                  "Info",
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.settings_rounded,
                ),
                Text(
                  "Settings",
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
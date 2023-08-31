import 'package:flutter/material.dart';
// import 'package:portfolio/screens/profile_page.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key, required this.size, this.idKey});

  final Size size;
  final GlobalKey? idKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightBlue[300],
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ListTile(
            title: const Text(
              "Contact",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Scrollable.ensureVisible(idKey!.currentContext!,
                  duration: const Duration(seconds: 1));
              Navigator.pop(context);
            },
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
        ],
      ),
    );
  }
}

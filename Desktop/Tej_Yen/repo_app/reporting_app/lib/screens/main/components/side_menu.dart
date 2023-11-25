import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(""),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Transaction",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Task",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Documents",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Store",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}

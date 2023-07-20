import 'package:flutter_svg/flutter_svg.dart';
import 'package:societymanage/consts/consts.dart';
import 'package:societymanage/controllers/home_controllers.dart';
import 'package:societymanage/views/cart_screen/cart_screen.dart';
import 'package:societymanage/views/category_screen/category_screen.dart';
import 'package:societymanage/views/home_screen/home_screen.dart';
import 'package:societymanage/views/profile_screen/profile_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const HomeScreen();
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              DrawerHeader(child: Image.asset(icAppLogo)),
              DrawerListTile(
                title: "Dashboard",
                svgSrc: icCategories,
                press: () {},
              ),
              DrawerListTile(
                title: "Dashboard",
                svgSrc: icCategories,
                press: () {},
              ),
              DrawerListTile(
                title: "Dashboard",
                svgSrc: icCategories,
                press: () {},
              ),
            ],
          )),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    required this.title,
    required this.svgSrc,
    required this.press,
    super.key,
  });
  final String title, svgSrc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(svgSrc, color: Colors.white54, height: 16),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}

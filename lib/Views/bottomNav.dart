import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profilio/utils/app_images.dart';
class MenuNavigationBar extends StatefulWidget {
  const MenuNavigationBar({Key? key}) : super(key: key);

  @override
  _MenuNavigationBarState createState() => _MenuNavigationBarState();
}

class _MenuNavigationBarState extends State<MenuNavigationBar> {
  int selectedIndex = 0;

  void itemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(

      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 100,
          width: double.infinity,
        ),
        Container(
          height: 80,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _icons(
                  AppImages.profileIcon,
                  selectedIndex == 1,
                      () {
                    itemTap(1);
                  },
                ),
                _icons(
                  AppImages.shareIcon,
                  selectedIndex == 1,
                      () {
                    itemTap(1);
                  },
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle
            ),
            child: _icons(
              AppImages.homeIcon,
              selectedIndex == 1,
                  () {
                itemTap(1);
              },
            ),
          ),
        ),


      ],
    );
  }
  Widget _icons(
      String path,
      bool isSelected,
      VoidCallback onTap,
      ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              path,

              width: 25.0,
              height: 25.0,
            ),
          ],
        ),
      ),
    );
  }

}



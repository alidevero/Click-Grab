import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:non_contact_delivery/colors_variables/colors.dart';
import 'package:non_contact_delivery/lists/screens_list.dart';
import 'package:non_contact_delivery/provider/provider_for_bottm_nav_bar.dart';
import 'package:non_contact_delivery/screens/Favorite_Screen.dart';
import 'package:non_contact_delivery/screens/cart_list_screen.dart';
import 'package:non_contact_delivery/screens/categories.dart';
import 'package:non_contact_delivery/screens/profile_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';

class BottomNavBarList extends StatelessWidget {
  const BottomNavBarList({super.key});

  @override
  Widget build(BuildContext context) {
    final controler = PersistentTabController();

    List<Widget> _buildScreens() {
      return [
        Categories(),
        CartListScreen(),
        FavoriteScreen(),
        ProfileScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          activeColorPrimary: splashScreenBackgroundColor,
          icon: const Icon(
            Icons.grid_on_outlined,
          ),
          inactiveIcon: const Icon(Icons.grid_on_outlined, color: Colors.grey),
        ),
        PersistentBottomNavBarItem(
            activeColorPrimary: splashScreenBackgroundColor,
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
            inactiveIcon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey,
            )),
        PersistentBottomNavBarItem(
            activeColorPrimary: splashScreenBackgroundColor,
            icon: const Icon(Icons.favorite_outline),
            inactiveIcon: const Icon(
              Icons.favorite_outline,
              color: Colors.grey,
            )),
        PersistentBottomNavBarItem(
            activeColorPrimary: splashScreenBackgroundColor,
            icon: const Icon(Icons.person_outline),
            inactiveIcon: const Icon(
              Icons.person_outline,
              color: Colors.grey,
            )),
      ];
    }

    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarHeight: 70,
      navBarStyle: NavBarStyle.style6,
    );

  }
}

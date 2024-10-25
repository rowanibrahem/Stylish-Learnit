import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:ecommerce_learn_it/core/themes/colors_app.dart';
import 'package:ecommerce_learn_it/features/card/presentation/views/card_view.dart';
import 'package:ecommerce_learn_it/features/favourites/presentation/views/favourite_view.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/home_view.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class BottomNavbarBody extends StatefulWidget {
  const BottomNavbarBody({super.key});

  @override
  State<BottomNavbarBody> createState() => _BottomNavbarBodyState();
}

class _BottomNavbarBodyState extends State<BottomNavbarBody> {
  final _pageController = PageController();
  final _controller = NotchBottomBarController();
  int maxCount = 4;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          _widgetOptions(context).length,
          (index) => _widgetOptions(context)[index],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: (_widgetOptions(context).length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              showLabel: false,
              shadowElevation: 5,
              kBottomRadius: 28.0,
              showShadow: false,
              elevation: 1,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.black,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: ColorsApp.primaryColor,
                  ),
                  itemLabel: 'HomeView',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.favorite_outline_outlined,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.favorite_outline_outlined,
                    color: ColorsApp.primaryColor,
                  ),
                  itemLabel: 'FavouriteView',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.shopping_basket,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.shopping_basket,
                    color: ColorsApp.primaryColor,
                  ),
                  itemLabel: 'CardView',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: ColorsApp.primaryColor,
                  ),
                  itemLabel: 'ProfileView',
                ),
              ],
              onTap: (index) {
                // log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
    );
    
  }
  List<Widget> _widgetOptions(BuildContext context) {
    return [
      const HomeView(),
      const FavouriteView(),
      const CardView(),
      const ProfileView(),
    ];
  }
}

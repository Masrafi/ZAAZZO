import 'package:flutter/material.dart';
import 'package:masrafianam/utils/ui/home_page.dart';
import '../category_screen.dart';
import '../second.dart';
import '../second.dart';

class NavBarCategory extends StatefulWidget {
  @override
  _NavBarCategoryState createState() => _NavBarCategoryState();
}

class _NavBarCategoryState extends State<NavBarCategory> {
  int currentTab = 0;
  final List<Widget> screens = [
    CategoryScreen(),
    Second(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = CategoryScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height / 40,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Icon(
                      Icons.dashboard,
                      color: currentTab == 0 ? Colors.blue : Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 1;
                      });
                    },
                    child: Icon(
                      Icons.heart_broken,
                      color: currentTab == 1 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Second();
                        currentTab = 2;
                      });
                    },
                    child: Icon(
                      Icons.store,
                      color: currentTab == 2 ? Colors.blue : Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Second();
                        currentTab = 3;
                      });
                    },
                    child: Icon(
                      Icons.account_circle_rounded,
                      color: currentTab == 3 ? Colors.blue : Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height / 40,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

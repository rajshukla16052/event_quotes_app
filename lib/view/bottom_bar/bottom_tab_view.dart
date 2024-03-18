import 'package:event_club_app/view/pages/account_view.dart';
import 'package:event_club_app/view/pages/download_view.dart';
import 'package:event_club_app/view/pages/template_view.dart';
import 'package:flutter/material.dart';

import '../cards/create_card_view.dart';


class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int currentTab = 0;
  final List<Widget> screens = [
    const CreateCardView(),
    // const MyWorkScreen(),
    const DownloadsView(),
    const AccountView(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const CreateCardView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffFBE8C7),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BottomBarView()),
          );
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        height: 70,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const CreateCardView();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color:
                              currentTab == 0 ? Colors.black : Colors.black54,
                        ),
                        const Text(
                          "Templates",
                          style: TextStyle(fontSize: 8, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Container();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard_rounded,
                          color:
                              currentTab == 1 ? Colors.black : Colors.black54,
                        ),
                        const Text(
                          "Backgrounds",
                          style: TextStyle(fontSize: 8, color: Colors.black54),
                        ),
                      ],
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
                        currentScreen = DownloadsView();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.download,
                          color:
                              currentTab == 2 ? Colors.black : Colors.black54,
                        ),
                        const Text(
                          "Downloads",
                          style: TextStyle(fontSize: 8, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const AccountView();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color:
                              currentTab == 3 ? Colors.black : Colors.black54,
                        ),
                        const Text(
                          "Account",
                          style: TextStyle(fontSize: 8, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

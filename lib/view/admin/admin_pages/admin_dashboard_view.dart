import 'package:event_club_app/view/admin/admin_pages/admin_account_view.dart';
import 'package:event_club_app/view/admin/admin_pages/create_vendor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDashboardView extends StatefulWidget {
  const AdminDashboardView({super.key});
  @override
  State<AdminDashboardView> createState() => _AdminDashboardViewState();
}

class _AdminDashboardViewState extends State<AdminDashboardView> {
  List<Choice> choices = const <Choice>[
    Choice(
      title: 'Total Users',
      additionalText: '12',
      imagePath: 'assets/icons/group.png',
    ),
    Choice(
      title: 'Vendor',
      additionalText: '18',
      imagePath: 'assets/icons/group.png',
    ),
    Choice(
      title: 'Blocked Users',
      additionalText: '29',
      imagePath: 'assets/icons/block-user.png',
    ),
    Choice(
      title: 'Active Users',
      additionalText: '22',
      imagePath: 'assets/icons/check.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffbe8c7),
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        centerTitle: true,
        backgroundColor: const Color(0x0ff8f0e1),
        actions: <Widget>[
          PopupMenuButton(
            color: const Color(0xffF8F0E1),
            icon: const Icon(Icons.more_vert_rounded, size: 30),
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminAccountView()),
                    );
                  },
                  child: Text(
                    "Settings",
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              PopupMenuItem(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  "Edit",
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ))
            ],
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xffF8F0E1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Material(
              color: const Color(0xffF8F0E1),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top, bottom: 24),
                  child: const Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 52,
                          backgroundImage:
                              AssetImage("assets/images/user.admin.png"),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Admin',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xfff000000),
                          ),
                        ),
                        Text(
                          'admin@gmail.com',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfff000000)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF5F5F5),
                ),
                child: ListTile(
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    child: Text(
                      'Total User',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF5F5F5),
                ),
                child: ListTile(
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 49),
                    child: Text('Active User',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF5F5F5),
                ),
                child: ListTile(
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 49),
                    child: Text('Block User',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF5F5F5),
                ),
                child: ListTile(
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 49),
                    child: Text('Vendor',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF5F5F5),
                ),
                child: ListTile(
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 49),
                    child: Text('Logout',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
              color: const Color(0xffff8f0e1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/icons/user.png',
                      ),
                      minRadius: 30,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Admin",
                          style: GoogleFonts.inter(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          )),
                      Text("admin@gmail.com",
                          style: GoogleFonts.inter(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dashboard",
                        style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("08 March 2024",
                          style: GoogleFonts.inter(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                  Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1)),
                      child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateVendor(),
                                    ));
                              },
                              child: Text(
                                "Create Vendor",
                                style: GoogleFonts.inter(
                                  textStyle:
                                      Theme.of(context).textTheme.displayLarge,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )))
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                          ),
                          itemCount: choices.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                                color: const Color(0xffff8f0e1),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          choices[index].imagePath,
                                          height: 30,
                                          width: 30,
                                        ),
                                        Column(children: [
                                          Text(
                                            choices[index].additionalText,
                                            style: const TextStyle(
                                              fontSize: 30,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Text(choices[index].title,
                                              style: GoogleFonts.inter(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.center),
                                        ])
                                      ],
                                    ),
                                  ),
                                ));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Choice {
  final String title;
  final String imagePath;
  final String additionalText;

  const Choice(
      {required this.title,
      required this.imagePath,
      required this.additionalText});
}

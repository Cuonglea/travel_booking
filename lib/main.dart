import 'package:booking_app_demo/layout/navigation_menu.dart';
import 'package:booking_app_demo/pages/booking.dart';
import 'package:booking_app_demo/pages/forgot_password.dart';
import 'package:booking_app_demo/pages/login.dart';
import 'package:booking_app_demo/pages/new_password.dart';
import 'package:booking_app_demo/pages/register.dart';
import 'package:booking_app_demo/pages/room_detail.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        title: "Travel Demo",
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> languages = ['VN', 'Eng'];
  String? selectedLanguage = 'VN';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF2F5FA),
        appBar: AppBar(
          // toolbarHeight: 70,
          backgroundColor: const Color(0xFFF2F5FA),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle_outlined),
            iconSize: 40,
          ),

          title: const Text(
            'Hello, CuongLea',
            style: TextStyle(fontSize: 18),
          ),
          centerTitle: true,

          actions: [
            // DropdownMenu(

            //   initialSelection: list.first,
            //   onSelected: (String? value) {
            //     setState(() {
            //       dropdownValue = value!;
            //     });
            //   },
            //   dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
            //     return DropdownMenuEntry<String>(value: value, label: value);
            //   }).toList(),
            // ),
            SizedBox(
              width: 80,
              child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(12),
                  value: selectedLanguage,
                  items: languages
                      .map((language) => DropdownMenuItem<String>(
                            value: language,
                            child:
                                Text(language, style: TextStyle(fontSize: 18)),
                          ))
                      .toList(),
                  onChanged: (language) => setState(
                        () => selectedLanguage = language,
                      )),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none),
              iconSize: 40,
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: const Color(0xFFF2F5FA),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              label: const Text(
                                'Location',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.tune,
                                  size: 24,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          // shape: BoxShape.circle
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.black,
                              ),
                              label: const Text(
                                'August',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.group_add_outlined,
                                color: Colors.black,
                              ),
                              label: const Text(
                                '2 Guests',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove,
                                      size: 24,
                                      color: Colors.black,
                                    )),
                                const Text(
                                  '1',
                                  style: TextStyle(fontSize: 18),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      size: 24,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                        child: Center(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.fromLTRB(60, 14, 60, 14),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xFF18C0D1)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Search',
                                  style: TextStyle(fontSize: 16),
                                ))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(
                          top: 8,
                        ),
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                            color: Color(0xFFD2DBEA),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'images/room.jpg',
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 12, 0, 8),
                              child: const Text(
                                'DETAILS',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                              child: const Text(
                                'Surrounded by rice fields, Villa Kayu Lama offers a peaceful retreat in Ubud. Guests can take a leisurely swim in the private...',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 100),
                              child: Center(
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRoute());
                                      },
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(
                                          const EdgeInsets.fromLTRB(
                                              60, 14, 60, 14),
                                        ),
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color(0xFF18C0D1)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        'Go to',
                                        style: TextStyle(fontSize: 16),
                                      ))),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(color: Color(0xFFD2DBEA)),
                child: const NavigationMenu(),
              ),
            ),
          ],
        ));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const BookingPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

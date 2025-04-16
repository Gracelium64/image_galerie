import 'package:flutter/material.dart';
import 'package:image_galerie/pages/about_page.dart';
import 'package:image_galerie/pages/img_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> pages = [
    ImgPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Align(
          alignment: Alignment.center,
          child: Text('My image gallery',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
                ),
               ),
        ),
            ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: pages[_pageIndex],
            ),
           ),  
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
        (Set<WidgetState> states) {
          return states.contains(WidgetState.selected)
            ? const TextStyle(color: Colors.black)
            : const TextStyle(color: Colors.black);
          },
         ),
        ),
        child: NavigationBar(
          selectedIndex: _pageIndex,
          onDestinationSelected: (value) {
            setState(() {
              _pageIndex = value;
        }
       );
      },
          backgroundColor: Colors.deepPurpleAccent,
          indicatorColor: Colors.white,       
          surfaceTintColor: Color.fromARGB(255, 245, 245, 245),
          
          destinations: [
            NavigationDestination(icon: Icon(Icons.home, color: Colors.black,), label: 'Pictures', ),
            NavigationDestination(icon: Icon(Icons.person, color: Colors.black,), label: 'About',)
     ],
    ),
   ),
  );
 }
}
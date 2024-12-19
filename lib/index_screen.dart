import 'package:flutter/material.dart';
import 'package:mentalhealth_app/chat_page.dart';
import 'package:mentalhealth_app/home_page.dart';
import 'package:mentalhealth_app/next_page.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int selectedIndex = 0;

  final screens = [
    const HomePage(),
    const NextPage(),
    const ChatPage(),
  ];
  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: screens[selectedIndex],
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.white,
       iconSize: 24,
       items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: '', ),
         BottomNavigationBarItem(icon: Icon(Icons.list_rounded), label: '',),
         BottomNavigationBarItem(icon: Icon(Icons.message), label: '',),
         ],
         currentIndex: selectedIndex,
         selectedItemColor: Colors.blue,
         onTap: changeIndex,
      ),
      
    );
  }
}

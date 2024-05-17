import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vet_digital/src/modules/home/home.dart';
import 'package:vet_digital/src/modules/information/information.dart';

import '../../connection/connection.dart';
import '../../news/news.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedInhdex = 0;

  final _items = const [
    MenuPage(),
    NewsPage(),
    ConnectionPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Fruits and Vegetable',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Color(0xFF423EFF), // Changed to white
            fontFamily: 'Poppins-Black',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/icons/mainlogo.png',
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: _items[_selectedInhdex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        selectedFontSize: 20,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF423EFF),
        elevation: 30,
        unselectedItemColor: Colors.grey[550],
        currentIndex: _selectedInhdex,
        onTap: (index) {
          setState(() {
            _selectedInhdex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.news,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.conversation_bubble,
                size: 35,
              ),
              label: ''),
        ],
      ),
    );
  }
}

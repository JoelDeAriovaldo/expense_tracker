import 'package:expense_tracker/screens/login_screen.dart';
import 'package:expense_tracker/widgets/hero_card.dart';
import 'package:expense_tracker/widgets/transactions_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isLogoutLoading = false;
  int currentIndex = 0;

  logOut() async {
    setState(() {
      isLogoutLoading = true;
    });
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginView()));
    setState(() {
      isLogoutLoading = false;
    });
  }

  _dialoBuilder(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('test'),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: (() {
          _dialoBuilder(context);
        }),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'hello',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                logOut();
              },
              icon: isLogoutLoading
                  ? CircularProgressIndicator()
                  : Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ))
        ],
      ),
      body: Column(
        children: [HeroCard(), TransactionsCard()],
      ),
    );
  }
}

import 'package:expense_tracker/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        width: double.infinity,
        color: Colors.blue.shade900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Balance',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  height: 1.2,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'MZN 15600',
              style: TextStyle(
                  fontSize: 44,
                  color: Colors.white,
                  height: 1.2,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  CardOne(
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CardOne(
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardOne extends StatelessWidget {
  const CardOne({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color.withOpacity(0.2),
        child: Row(
          children: [
            Column(
              children: [Text('Credit'), Text('MZN 12000')],
            )
          ],
        ),
      ),
    );
  }
}

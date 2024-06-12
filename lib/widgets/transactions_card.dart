import 'package:expense_tracker/utils/icons_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class TransactionsCard extends StatelessWidget {
  TransactionsCard({
    super.key,
  });

  var appIcons = AppIcons();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    'Recent Transactions',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          color: Colors.grey.withOpacity(0.09),
                          blurRadius: 10.0,
                          spreadRadius: 4.0,
                        ),
                      ],
                    ),
                    child: ListTile(
                      minVerticalPadding: 10,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                      leading: Container(
                        width: 70,
                        height: 100,
                        child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green.withOpacity(0.02),
                            ),
                            child: Center(
                              child: FaIcon(
                                  appIcons.getExpenseCategoryIcon('home')),
                            )),
                      ),
                      title: Row(
                        children: [
                          Expanded(child: Text('Car Rent Oct 23')),
                          Text(
                            'MZN 800',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Balance',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                              Spacer(),
                              Text(
                                'MZN 525',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                          Text(
                            '25 Oct 4:51 PM',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

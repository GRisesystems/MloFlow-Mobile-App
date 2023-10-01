import 'package:flutter/material.dart';
import 'package:mloflow/screens/Widgets/switch.dart';
import 'package:mloflow/screens/pages/chefs_dashboard.dart';
import 'package:mloflow/screens/tabs_pages/chef_favorite_page.dart';
import 'package:mloflow/screens/tabs_pages/menu_favorite_page.dart';

class ChefDashboardTab extends StatelessWidget {
  const ChefDashboardTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Welcome Chef Your Availability',
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
              ),
            ],
          ),
          backgroundColor: Color(0xFFEDECF2),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black26,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Color(0xFFFBC24A),
            child: const Column(
              children: [
                TabBar(
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.black,
                    labelStyle: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold), //For Selected tab
                    unselectedLabelStyle: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'Family Name'), //For Un-selected
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'HIRE REQUEST',
                      ),
                      Tab(
                        text: 'PENDING REQUEST',
                      ),
                      Tab(
                        text: 'HISTORY',
                      ),
                    ]),
                Expanded(
                  child: TabBarView(children: [
                    ChefDashboard(),
                    ChefDashboard(),
                    ChefDashboard(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

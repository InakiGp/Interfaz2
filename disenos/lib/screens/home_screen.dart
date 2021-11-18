import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_bottom_navigations.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: Stack(
        children: [
          Background(),

          _HomeBody()
      ],)
   );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),

          CardTable()
        ],
      ),
    );
  }
}
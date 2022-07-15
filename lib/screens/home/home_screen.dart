
import 'package:flutter/material.dart';
import 'package:real_estate/screens/home/components/custom_app_bar.dart';

import 'components/bottom_buttons.dart';
import 'components/categories.dart';
import 'components/houses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(

            children: [
              CustomAppBar(),
              const SizedBox(height: 20.0,),
              Categories(),
              const SizedBox(height: 10.0,),
              Houses(),
            ],
          ),
          BottomButtons(),
        ],

      ),
    );
  }
}

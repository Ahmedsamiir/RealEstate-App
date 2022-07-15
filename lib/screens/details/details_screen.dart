import 'package:flutter/material.dart';
import 'package:real_estate/models/house.dart';
import 'package:real_estate/screens/details/components/bottom_buttons.dart';
import 'package:real_estate/screens/details/components/custom_app_bar.dart';

import 'components/carousel_images.dart';
import 'components/house_details.dart';

class DetailsScreen extends StatefulWidget {

  final House house;
  const DetailsScreen({Key? key, required this.house}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  CarouselImages(widget.house.moreImagesUrl!),
                  CustomAppBar(),

                ],
              ),
              HouseDetails( house: widget.house,),
            ],
          ),
          BottomButtons(),
        ],

      ),
    );
  }
}

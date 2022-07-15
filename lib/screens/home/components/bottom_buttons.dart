import 'package:flutter/material.dart';
import 'package:real_estate/constants/constants.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: appPadding),
      child: Container(
        width: size.width * 0.4,
        height: 60.0,
        decoration: BoxDecoration(
          color: darkBlue,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: darkBlue.withOpacity(0.6),
              offset: const Offset(0, 10),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
             Icon(
              Icons.map_outlined,
              color: white,
            ),
             Text(
              'Map View',
              style: TextStyle(
                  color: white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600
              ),
            ),
          ],
        ),
      ),
    );
  }
}

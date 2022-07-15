
import 'package:flutter/material.dart';
import 'package:real_estate/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          left:  appPadding,
          right: appPadding,
          top: appPadding ,
      ),
      child: Container(
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(color: white.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(Icons.arrow_back, color: white,),
              ),
            ),
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                border: Border.all(color: white.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(Icons.favorite_border_rounded, color: white,),
            ),
          ],
        ),
      ),

    );
  }
}

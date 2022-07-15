
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CarouselImages extends StatefulWidget {
  final List<String> imagesListUrl;

   const CarouselImages(this.imagesListUrl, {Key? key}) : super(key: key);
 // House house = houseList[0];

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      child:  CarouselSlider(
        items:  [
          Image.asset(widget.imagesListUrl[0],),
          Image.asset(widget.imagesListUrl[1],),
          Image.asset(widget.imagesListUrl[2],),
          Image.asset(widget.imagesListUrl[3],),
          Image.asset(widget.imagesListUrl[4],),
          Image.asset(widget.imagesListUrl[5],),
        ],

        options: CarouselOptions(
          height: 250.0,
          initialPage: 0,
          enableInfiniteScroll: true,
          viewportFraction: 1.0,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
        ),
      ),
      // child: Carousel(
      //   dotSize: 5,
      //   dotBgColor: Colors.transparent,
      //   images: [
      //     AssetImage(widget.imagesListUrl[0],),
      //     AssetImage(widget.imagesListUrl[1],),
      //     AssetImage(widget.imagesListUrl[2],),
      //     AssetImage(widget.imagesListUrl[3],),
      //     AssetImage(widget.imagesListUrl[4],),
      //     AssetImage(widget.imagesListUrl[5],),
      //   ],
      //
      //
      // ),
    );
  }
}

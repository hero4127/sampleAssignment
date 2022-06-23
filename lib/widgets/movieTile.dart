import 'package:flutter/material.dart';
import 'package:sampleassignment/Screens/Constants.dart';
import 'package:sampleassignment/Model/Movies.dart';

class MovieTile extends StatelessWidget {
  String imgUrl, title, imdbRating;
  Type? subtitle;
  MovieTile(
      {required this.imgUrl,
      required this.title,
      required this.subtitle,
      required this.imdbRating,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        elevation: 4,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(imgUrl),
                ),
              ),
            ),
            Container(
              width: 200,
              alignment: Alignment.centerLeft,
              // color: Colors.green,
              padding: const EdgeInsets.only(left: 10, right: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 3,
                    textAlign: TextAlign.start,
                    style: Constants.homeHeadingTextStyle.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitle!.name,
                    textAlign: TextAlign.start,
                    style: Constants.homeHeadingTextStyle.copyWith(
                      color: const Color(0xff515979),
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: Text(
                      "7.5 IMDB",
                      textAlign: TextAlign.start,
                      style: Constants.homeHeadingTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

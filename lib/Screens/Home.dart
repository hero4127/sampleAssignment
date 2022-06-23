import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sampleassignment/Screens/Constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      color: Color(0xff121421),
      width: deviceSize.width,
      height: deviceSize.height,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          /// Discover Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Discover",
                style: Constants.homeHeadingTextStyle,
              ),
              SvgPicture.asset("assets/icons/search.svg"),
            ],
          ),
          Container(
            height: deviceSize.height * 0.08,
            width: deviceSize.width,
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: ListView.builder(
              itemCount: Constants.homePageFirstListView.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Card(
                  color: const Color(0xff121421).withOpacity(0.1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    width: deviceSize.width * 0.33,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      Constants.homePageFirstListView[index],
                      style: Constants.homeHeadingTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),

          /// Discover End

          /// Recomended Part
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Recommended",
                style: Constants.homeHeadingTextStyle
                    .copyWith(fontSize: 12, color: const Color(0xff515979)),
              ),
              Text(
                "See All",
                style: Constants.homeHeadingTextStyle
                    .copyWith(fontSize: 12, color: const Color(0xff515979)),
              ),
            ],
          ),
          Container(
            height: deviceSize.height * 0.3,
            // width: deviceSize.width,
            // margin: const EdgeInsets.only(top: 10),
            child: ListView.builder(
              itemCount: Constants.homePageSecondListImage.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Container(
                  height: deviceSize.height * 0.3,
                  width: deviceSize.height * 0.4,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage(
                        Constants.homePageSecondListImage[index],
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 40),
                        child: Text(
                          "Sleep Meditation",
                          style: Constants.homeHeadingTextStyle
                              .copyWith(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "7 Day Audio Series",
                          style: Constants.homeHeadingTextStyle.copyWith(
                            fontSize: 14,
                            color: Colors.white30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/headphone.svg"),
                              const SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset("assets/icons/tape.svg"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),

          /// Recomended Part END

          /// Recent Part
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Recent",
                style: Constants.homeHeadingTextStyle
                    .copyWith(fontSize: 12, color: const Color(0xff515979)),
              ),
            ],
          ),

          Container(
            height: deviceSize.height * 0.3,
            // width: deviceSize.width,
            // margin: const EdgeInsets.only(top: 10),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: Constants.homePageThirdListImage.length,
              itemBuilder: (context, index) {
                return Container(
                  height: deviceSize.height * 0.3,
                  width: deviceSize.height * 0.4,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage(
                        Constants.homePageThirdListImage[index],
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Text(
                          Constants.homePageThirdListContent[index],
                          maxLines: 2,
                          style: Constants.homeHeadingTextStyle
                              .copyWith(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: SvgPicture.asset(
                            Constants.homePageThirdListIcons[index]),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          /// REcent END
        ],
      ),
    );
  }
}

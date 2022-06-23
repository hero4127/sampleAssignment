import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sampleassignment/Model/StateModel.dart';
import 'package:sampleassignment/Screens/Constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sampleassignment/Screens/Home.dart';
import 'package:sampleassignment/Screens/Search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    StateModel result = Provider.of<StateModel>(context);

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff1C2031),
          selectedItemColor: const Color(0xffff8f00),
          onTap: (index) {
            result.updateNavigationIndex(index);
          },
          currentIndex: 0,
          items: [
            const BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.compass_calibration,
                color: Color(0xff515979),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset("assets/icons/chart.svg"),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset("assets/icons/profile.svg"),
            ),
          ],
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff121421),
        ),
        body: result.navigationIndex == 0
            ? const Home()
            : result.navigationIndex == 1
                ? const Search()
                : Container());
  }
}

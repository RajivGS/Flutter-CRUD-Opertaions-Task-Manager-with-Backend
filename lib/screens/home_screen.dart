import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widgets/button_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, top: 35, right: 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/welcome.jpg"),
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RichText(
              text: TextSpan(
                  text: "Hello",
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "\nstart your beautiful day",
                      style: TextStyle(
                        color: AppColors.smallTextColor,
                        fontSize: 15,
                      ),
                    )
                  ]),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                ButtonWidget(
                  backgroundcolor: AppColors.mainColor,
                  name: "Add Task",
                  textColor: Colors.white,
                ),
                const SizedBox(height: 15),
                ButtonWidget(
                  backgroundcolor: Colors.white,
                  name: "View All",
                  textColor: AppColors.mainColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

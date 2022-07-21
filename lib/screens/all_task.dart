import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widgets/button_ui.dart';
import 'package:flutter_golang_yt/widgets/list_of_task_widget.dart';

class AllTask extends StatelessWidget {
  const AllTask({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    List myData = [
      "Try harder",
      "Try Smarter",
      "Try",
      "Try harder",
      "Try Smarter",
      "Try",
      "Try harder",
      "Try Smarter",
      "Try"
    ];
    final leftEditIcon = Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color(0xFF2e3253).withOpacity(0.5),
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
    );
    final rightDeleteIcon = Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.redAccent,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height / 3.2,
              padding: const EdgeInsets.only(left: 8, top: 20),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/header.jpg"),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
                color: AppColors.secondaryColor,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.home),
                      color: AppColors.secondaryColor),
                  const SizedBox(width: 10),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        color: Colors.black),
                    child: const Icon(Icons.add, size: 20, color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.calendar_today),
                      color: AppColors.secondaryColor),
                  const SizedBox(width: 5),
                  Text(
                    "2",
                    style: TextStyle(
                        fontSize: 20, color: AppColors.secondaryColor),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Flexible(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: myData.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      background: leftEditIcon,
                      secondaryBackground: rightDeleteIcon,
                      key: ObjectKey(index),
                      onDismissed: (DismissDirection direction) {
                        print("After Dismiss");
                      },
                      confirmDismiss: (DismissDirection direction) async {
                        if (direction == DismissDirection.startToEnd) {
                          showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (_) {
                                return Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  height: 400,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2e3253).withOpacity(0.4),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ButtonWidget(
                                          backgroundcolor: AppColors.mainColor,
                                          name: "View",
                                          textColor: Colors.white),
                                      SizedBox(height: 20),
                                      ButtonWidget(
                                          backgroundcolor: AppColors.mainColor,
                                          name: "Edit",
                                          textColor: Colors.white),
                                    ],
                                  ),
                                );
                              });
                          return false;
                        } else {
                          return Future.delayed(const Duration(seconds: 1),
                              () => direction == DismissDirection.endToStart);
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: TaskWidget(
                          text: myData[index],
                          color: Colors.blueGrey,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

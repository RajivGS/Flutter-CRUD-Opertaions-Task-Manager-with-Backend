import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widgets/button_ui.dart';
import 'package:flutter_golang_yt/widgets/textfield_widget.dart';

class AddTaskState extends StatelessWidget {
  const AddTaskState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/addtask1.jpg"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 40),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                      color: AppColors.secondaryColor,
                    )
                  ],
                ),
                Column(
                  children: [
                    TextFieldWidget(
                      textController: detailController,
                      hintext: "Task Name",
                    ),
                    const SizedBox(height: 10),
                    TextFieldWidget(
                      maxLines: 5,
                      borderRadius: 15,
                      textController: nameController,
                      hintext: "Task Details",
                    ),
                    const SizedBox(height: 20),
                    ButtonWidget(
                        backgroundcolor: AppColors.mainColor,
                        name: "Add",
                        textColor: Colors.white)
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 6),
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:interview_signup/controller/text_form_controller.dart';
import 'package:interview_signup/model/signup/only_text_question.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';
import 'package:interview_signup/utils/question.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  TextFormController textFormController = TextFormController();

  Widget sibal() {
    return OnlyText('earhearearg');
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        title: Text(
          'FLEX INTERVIEW',
          style: Styles.headLineStyle.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppLayout.getWidth(15.0)),
            child: const Icon(
              Icons.close,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            // child: ListView(
            //   children: question.map((quest) {
            //     return quest;
            //   }).toList(),
            // ),
            child: Obx(
              () => ListView(
                children: question[textFormController.index.value]
                    .map((quest) => quest)
                    .toList(),
              ),
            ),
          ),
          // Textformfield -> 나중에 위젯화.
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(8.0),
                horizontal: AppLayout.getWidth(8.0)),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: textFormController.textEditingController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Styles.questionColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(35)),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(35)),
                        ),
                      ),
                      hintText: '질문지 위젯들을 모은 리스트의 키값',
                      hintStyle:
                          Styles.questionStyle.copyWith(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(8.0),
                          horizontal: AppLayout.getWidth(8.0)),
                    ),
                    onChanged: ((value) {
                      textFormController.userEnterMessage.value = value;
                    }),
                  ),
                ),
                Gap(AppLayout.getWidth(8.0)),
                IconButton(
                  onPressed: () {
                    textFormController.sendMessage(context);
                    textFormController.getAnswer();
                  },
                  icon: Icon(
                    Icons.send,
                    color: Styles.spotColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

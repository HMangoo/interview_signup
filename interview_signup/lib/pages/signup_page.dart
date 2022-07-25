import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:interview_signup/controller/text_form_controller.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';
import 'package:interview_signup/utils/question.dart';

// ignore: must_be_immutable
class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  TextFormController textFormController = TextFormController();

  @override
  Widget build(BuildContext context) {
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
            child: Obx(
              () => ListView(
                children: question[textFormController.index.value]
                    .map((quest) => quest)
                    .toList(),
              ),
              // [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const OnlyText('반가워요:)'),
              //         const OnlyText('지금부터 플렉스 가입을 도와드릴게요'),
              //         TextOneButton(
              //           message: '어렵지 않으니 잘 따라와주세요!',
              //           buttonMessage: '네, 알겠어요!',
              //           onClick: () {
              //             signUpController.question1();
              //           },
              //         ),
              //       ],
              //     ),
              //     if (signUpController.answer1.value)
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.end,
              //         children: const [
              //           OnlyText('네, 알겠어요!'),
              //         ],
              //       ),
              //     if (signUpController.q2.value)
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const OnlyText('플렉스는 싱글들을 위한 서비스에요'),
              //           const OnlyText(
              //               '당연히 기혼자는 가입을 할 수 없으며, 이를 위반할 시 관련 법령에 따른 민/형사상 고소 등 법적 조치가 취해질 수 있어요'),
              //           TextOneButton(
              //             message: '당신은 싱글이신가요?',
              //             buttonMessage: '네, 싱글이에요',
              //             onClick: () {
              //               signUpController.question2();
              //             },
              //           ),
              //         ],
              //       ),
              //     if (signUpController.answer2.value)
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.end,
              //         children: const [
              //           OnlyText('네, 싱글이에요!'),
              //         ],
              //       ),
              //     if (signUpController.q3.value)
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const OnlyText(
              //               '플렉스는 국가공인 본인인증 기관인 NICO 평가정보를 통한 100% 철저한 본인인증을 거치고 있어요'),
              //           const OnlyText(
              //               '신뢰할 수 있는 소통을 위해, 모든 회원의 정확한 실명, 연령, 연락처 인증이 요구되기 때문에 단 하나의 허위 계정도 존재할 수 없으며 타인의 명의 도용이 불가능해요'),
              //           TextOneButton(
              //             message: '본인을 인증해주세요',
              //             buttonMessage: '본인 인증하기',
              //             onClick: () {
              //               signUpController.question3();
              //             },
              //           ),
              //         ],
              //       ),
              //     if (signUpController.answer3.value)
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.end,
              //         children: const [
              //           OnlyText('본인 인증 완료!'),
              //         ],
              //       ),
              //     if (signUpController.q4.value)
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const OnlyText('이제 플렉스의 멤버들은 어떤 사람인지 확인해볼까요?'),
              //           TextOneButton(
              //             message: '플렉서가 되기 위한 자격을 확인해주세요',
              //             buttonMessage: '자격 확인하기',
              //             onClick: () {
              //               Get.to(() => const CapacityPage());
              //             },
              //           ),
              //         ],
              //       ),
              //   ],
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

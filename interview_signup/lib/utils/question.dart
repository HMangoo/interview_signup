import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:interview_signup/model/signup/consent_button.dart';

import 'package:interview_signup/model/signup/only_text_question.dart';
import 'package:interview_signup/model/signup/text_multi_button.dart';
import 'package:interview_signup/model/signup/text_one_button.dart';
import 'package:interview_signup/model/signup/text_two_button.dart';
import 'package:interview_signup/pages/profile_page.dart';
import 'package:interview_signup/utils/location_list.dart';

import '../pages/capacity_page.dart';
import '../pages/permission_page.dart';
import '../pages/select_location_page.dart';
import 'app_layout.dart';
import 'app_style.dart';

List<List<Widget>> question = [
  [
    const OnlyText('반가워요:)'),
    const OnlyText('지금부터 플렉스 가입을 도와드릴게요'),
    TextOneButton(
      message: '어렵지 않으니 잘 따라와주세요!',
      buttonMessage: '네, 알겠어요!',
      onClick: () {},
    ),
  ],
  [
    const OnlyText('플렉스는 싱글들을 위한 서비스에요'),
    const OnlyText(
        '당연히 기혼자는 가입을 할 수 없으며, 이를 위반할 시 관련 법령에 따른 민/형사상 고소 등 법적 조치가 취해질 수 있어요'),
    TextOneButton(
      message: '당신은 싱글이신가요?',
      buttonMessage: '네, 싱글이에요',
      onClick: () {},
    ),
  ],
  [
    const OnlyText('플렉스는 국가공인 본인인증 기관인 NICO 평가정보를 통한 100% 철저한 본인인증을 거치고 있어요'),
    const OnlyText(
        '신뢰할 수 있는 소통을 위해, 모든 회원의 정확한 실명, 연령, 연락처 인증이 요구되기 때문에 단 하나의 허위 계정도 존재할 수 없으며 타인의 명의 도용이 불가능해요'),
    TextOneButton(
      message: '본인을 인증해주세요',
      buttonMessage: '본인 인증하기',
      onClick: () {},
    ),
  ],
  [
    const OnlyText('이제 플렉스의 멤버들은 어떤 사람인지 확인해볼까요?'),
    TextOneButton(
      message: '플렉서가 되기 위한 자격을 확인해주세요',
      buttonMessage: '자격 확인하기',
      onClick: () {
        Get.to(() => const CapacityPage());
      },
    ),
  ],
  [
    const OnlyText('역시 멋지세요!'),
    const OnlyText('플렉스 서비스 사용을 위해 꼭 필요한 권한만 요청드리고 있어요'),
    TextOneButton(
      message: '앱 사용에 필요한 권한을 확인해주세요',
      buttonMessage: '권한 확인하기',
      onClick: () {
        Get.to(() => const PermissionPage());
      },
    ),
  ],
  [
    const OnlyText('이제 마지막으로 이용약관만 확인하면 확인 절차는 끝이에요'),
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: AppLayout.getWidth(300),
          decoration: BoxDecoration(
            color: Styles.questionColor,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
          ),
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(10),
              horizontal: AppLayout.getWidth(16)),
          margin: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(4),
              horizontal: AppLayout.getWidth(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '플렉서가 되기 위한 약관에 동의해주세요',
                style: Styles.questionStyle,
              ),
              Gap(AppLayout.getHeight(10)),
              const Center(child: ConsentButton(title: '서비스 이용약관 동의')),
              Gap(AppLayout.getHeight(5)),
              const Center(child: ConsentButton(title: '개인정보 보호정책 동의')),
              Gap(AppLayout.getHeight(10)),
              Center(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
                  width: AppLayout.getWidth(250),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(12)),
                      color: Styles.spotColor),
                  child: Center(
                    child: Text('완료', style: Styles.questionStyle),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ],
  [
    const OnlyText('좋아요! 이제 당신만 접속할 수 있는 계정을 만들거에요'),
    const OnlyText('주로 사용하는 이메일 주소를 알려주세요'),
  ],
  [
    TextTwoButton(
      message: '제대로 입력했는지 확 번 더 확인해주세요',
      buttonMessage1: '정확해요!',
      buttonMessage2: '다시 입력할래요',
      onClick: () {},
    )
  ],
  [const OnlyText('이번엔 비밀번호를 몰래 입력해주세요')],
  [const OnlyText('제대로 입력했는지 확인해볼까요?')],
  [const OnlyText('비밀번호가 일치하지 않아요. 처음부터 다시 입력해주세요')],
  [const OnlyText('제대로 입력했는지 확인해볼까요?')],
  [
    const OnlyText('정확해요!\n이제 자신있는 매력을 인증해야 해요. 신뢰할 수 있는 만남을 위해서는 필수에요'),
    TextOneButton(
        message: '블라인드 표시가 된 엠블럼을 신청할 경우, 프로필 사진 없이 가입이 가능하다는 것도 잊지 마세요',
        buttonMessage: '엠블럼 다시보기',
        onClick: () {},
        isMinor: true),
    TextTwoButton(
        message: '외모에 자신 있다면 비주얼 심자를, 능력에 자신 있다면 서류 심사를 선택해주세요!',
        buttonMessage1: '비주얼 심사',
        buttonMessage2: '서류 심사',
        onClick: () {
          Get.to(() => ProfilePage());
        },
        isMinor2: false)
  ],
  [
    const OnlyText('멋진 능력을 가지고 계시나 봐요! 플렉서들에게 인기가 아주 많을 것 같아요:)'),
    const OnlyText('플렉스 팀의 서류 검증 시스템으로 당신의 능력에 신뢰와 진정성을 더해드릴게요!'),
    TextOneButton(
      message: '안내에 따라 당신의 능력을 자랑할 수 있는 엠블럼을 신청해주세요',
      buttonMessage: '엠블럼 신청하기',
      onClick: () {},
    )
  ],
  [
    const OnlyText('잘 따라와 주셔서 너무 기뻐요 :), 이제 멋진 프로필만 만들면 끝이니까 조금만 더 힘내요!'),
    const OnlyText('당신을 뭐라고 불러드릴까요?')
  ],
  [const OnlyText('다른 멤버가 사용 중인 닉네임이에요. 다른 닉네임을 입력해주세요')],
  [
    TextTwoButton(
        message: '제대로 입력했는지 한 번 더 확인해주세요',
        buttonMessage1: '정확해요!',
        buttonMessage2: '다시 입력할래요',
        onClick: () {})
  ],
  [
    const OnlyText('정말 멋진 닉네임이에요!'),
    TextOneButton(
      message: '지금 사는 곳은 어디신가요?',
      buttonMessage: '거주지 선택하기',
      onClick: () {
        Get.to(() => SelectLocation());
      },
    )
  ],
  [const OnlyText('어떤 일을 하고 계시나요?')],
  [
    TextTwoButton(
        message: '제대로 입력했는지 한 번 더 확인해주세요',
        buttonMessage1: '정확해요!',
        buttonMessage2: '다시 입력할래요',
        onClick: () {})
  ],
  [TextMultiButton(message: '최종학력은 어떻게 되시나요>', buttonMessageList: '대학교 재학')],
];

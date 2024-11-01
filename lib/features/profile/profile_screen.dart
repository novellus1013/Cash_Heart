import 'package:cash_heart/common/widgets/custom_bottom_appbar.dart';
import 'package:cash_heart/common/widgets/editing_floating_button.dart';
import 'package:cash_heart/constants/gaps.dart';
import 'package:cash_heart/constants/sizes.dart';
import 'package:cash_heart/features/profile/widgets/profile_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _onTapLogout() {
    debugPrint('로그아웃');
  }

  void _onTapDeleteAccount() {
    debugPrint('계정삭제');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const EditingFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: const Text('프로필'),
      ),
      bottomNavigationBar: const CustomBottomAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    maxHeight: Sizes.size80 + Sizes.size80 + Sizes.size60,
                    maxWidth: Sizes.size80 + Sizes.size80 + Sizes.size60,
                  ),
                  child: Image.asset('assets/img/red_bag.png'),
                ),
                Gaps.h20,
                const Text('User name'),
              ],
            ),
            Text(
              '이메일',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Gaps.v10,
            Text(
              "abc@google.com",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Gaps.v20,
            Text(
              '가입일',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Gaps.v10,
            Text(
              '2024 - 11 - 01',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Gaps.v40,
            ProfileButton(
              btnText: '로그아웃',
              btnColor: Theme.of(context).secondaryHeaderColor,
              onTap: _onTapLogout,
            ),
            Gaps.v60,
            ProfileButton(
              btnText: '회원탈퇴',
              btnColor: Colors.grey.shade400,
              onTap: _onTapDeleteAccount,
            ),
          ],
        ),
      ),
    );
  }
}

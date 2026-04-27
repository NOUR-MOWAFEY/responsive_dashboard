import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.name,
    required this.email,
    required this.image,
  });
  final String name;
  final String email;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(name, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(email, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}

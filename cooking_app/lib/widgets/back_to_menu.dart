import 'package:cooking_app/resources/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackToMenuBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBackButtonPressed;
  final VoidCallback? onMenuButtonPressed;

  const BackToMenuBar({
    super.key,
    this.onBackButtonPressed,
    this.onMenuButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,

      title: null,

      leading: IconButton(
        icon: SvgPicture.asset(
          AppIcons.arrowLeft,
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          height: 24,
          width: 24,
        ),
        onPressed: onBackButtonPressed ?? () => Navigator.of(context).pop(),
      ),

      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            AppIcons.moreButton,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            height: 24,
            width: 24,
          ),
          onPressed: onMenuButtonPressed ?? () {},
        ),
        const SizedBox(width: 4.0),
      ],

      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

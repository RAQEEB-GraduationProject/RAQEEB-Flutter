import 'package:flutter/material.dart';
import 'package:raqeeb/presentation/app_colors.dart';
import 'package:raqeeb/presentation/app_styles.dart';


class SosAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SosAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.charcoal),
        onPressed: () => Navigator.maybePop(context),
      ),
      title: Text(
        title,
        style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
          fontSize: 18,
          letterSpacing: 0,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: AppColors.primaryPink,
            child: Icon(Icons.person_outline, size: 17, color: AppColors.surface),
          ),
        ),
      ],
    );
  }
}

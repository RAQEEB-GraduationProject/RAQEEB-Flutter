import 'package:flutter/material.dart';
import 'package:raqeeb/presentation/app_colors.dart';
import 'package:raqeeb/presentation/app_styles.dart';


/// Bold inline text, to be used inside [NumberedStep.children].
TextSpan boldSpan(String text) => TextSpan(
      text: text,
      style: AppStyles.jakartaBoldCharcoal14.copyWith(
        fontSize: 13,
        letterSpacing: 0,
      ),
    );

class NumberedStep extends StatelessWidget {
  final int number;
  final List<InlineSpan> children;

  const NumberedStep({super.key, required this.number, required this.children});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 22,
          height: 22,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.powderPink,
          ),
          child: Text(
            '$number',
            style: AppStyles.jakartaMediumPrimaryPink12.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: RichText(
              text: TextSpan(
                style: AppStyles.jakartaRegularCharcoal16.copyWith(fontSize: 13),
                children: children,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

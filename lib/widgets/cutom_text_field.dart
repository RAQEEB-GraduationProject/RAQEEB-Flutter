import 'package:flutter/material.dart';
import 'package:raqeeb/presentation/app_colors.dart';
import 'package:raqeeb/presentation/app_styles.dart';


class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscure = widget.isPassword;

  OutlineInputBorder _border(Color color, [double width = 1]) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: color, width: width),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 8),
          child: Text(
            widget.label,
            style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
              fontSize: 15,
              letterSpacing: 0,
            ),
          ),
        ),
        TextFormField(
          controller: widget.controller,
          obscureText: _obscure,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          style: AppStyles.jakartaRegularCharcoal16.copyWith(fontSize: 14),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppStyles.jakartaRegularMuted16.copyWith(fontSize: 14),
            errorStyle: AppStyles.jakartaMediumCharcoal12.copyWith(
              color: AppColors.criticalRed,
            ),
            filled: true,
            fillColor: AppColors.surface,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            prefixIcon: Icon(
              widget.prefixIcon,
              size: 22,
              color: AppColors.mutedText,
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: AppColors.mutedText,
                    ),
                    onPressed: () => setState(() => _obscure = !_obscure),
                  )
                : null,
            enabledBorder: _border(AppColors.fieldBorder),
            focusedBorder: _border(AppColors.primaryPink, 1.5),
            errorBorder: _border(AppColors.criticalRed),
            focusedErrorBorder: _border(AppColors.criticalRed, 1.5),
          ),
        ),
      ],
    );
  }
}

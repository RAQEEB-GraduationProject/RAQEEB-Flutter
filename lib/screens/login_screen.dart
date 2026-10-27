import 'package:flutter/material.dart';
import 'package:raqeeb/widgets/blob.dart';
import 'package:raqeeb/widgets/custom_button.dart';
import 'package:raqeeb/widgets/cutom_text_field.dart';
import 'package:raqeeb/widgets/logo.dart';
import 'package:raqeeb/widgets/role_card.dart';
import '../widgets/app_colors.dart';

enum UserRole { patient, caregiver }

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();

  UserRole _role = UserRole.patient;
  bool _rememberMe = true;
  bool _loading = false;

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _loading = true);
    // TODO: call your auth API here
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    final isPatient = _role == UserRole.patient;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Positioned(
            top: -60,
            left: -60,
            child: Blob(coloring: Color(0xFFF8C9DC), size: 220)
          ),
          Positioned(
            top: 20,
            right: -80,
            child: Blob(coloring: Color(0xFFFFD6E2) , size: 240),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Logo()),
                      const SizedBox(height: 20),
                      const Center(
                        child: Text(
                          'Welcome to RAQEEB',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                            color: AppColors.textDark,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Center(
                        child: Text(
                          'Your care, always connected.',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textMuted,
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                      const Padding(
                        padding: EdgeInsets.only(left: 4, bottom: 10),
                        child: Text(
                          'CONTINUE AS',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.8,
                            color: AppColors.textMuted,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RoleCard(
                              title: 'Patient',
                              icon: Icons.favorite,
                              isSelected: isPatient,
                              onTap: () =>
                                  setState(() => _role = UserRole.patient),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: RoleCard(
                              title: 'Caregiver',
                              icon: Icons.volunteer_activism,
                              isSelected: !isPatient,
                              onTap: () =>
                                  setState(() => _role = UserRole.caregiver),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      CustomTextField(
                        label: isPatient ? 'Patient ID' : 'Caregiver ID',
                        hintText: isPatient
                            ? 'Enter your Patient ID'
                            : 'Enter your Caregiver ID',
                        prefixIcon: Icons.badge_outlined,
                        controller: _idController,
                        validator: (v) => (v == null || v.trim().isEmpty)
                            ? 'ID is required'
                            : null,
                      ),
                      const SizedBox(height: 18),
                      CustomTextField(
                        label: 'Password',
                        hintText: 'Enter your password',
                        prefixIcon: Icons.lock_outline,
                        isPassword: true,
                        controller: _passwordController,
                        validator: (v) => (v == null || v.length < 6)
                            ? 'Password must be at least 6 characters'
                            : null,
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          SizedBox(
                            width: 22,
                            height: 22,
                            child: Checkbox(
                              value: _rememberMe,
                              activeColor: AppColors.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              onChanged: (v) =>
                                  setState(() => _rememberMe = v ?? false),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColors.textMuted,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              // TODO: navigate to forgot password
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 26),
                      PrimaryButton(
                        text: 'LOGIN',
                        trailingIcon: Icons.arrow_forward,
                        isLoading: _loading,
                        onPressed: _login,
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

 
 
}
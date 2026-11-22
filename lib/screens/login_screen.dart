import 'package:flutter/material.dart';
import 'package:raqeeb/presentation/app_colors.dart';
import 'package:raqeeb/presentation/app_styles.dart';
import 'package:raqeeb/widgets/blob.dart';
import 'package:raqeeb/widgets/custom_button.dart';
import 'package:raqeeb/widgets/cutom_text_field.dart';
import 'package:raqeeb/widgets/logo.dart';
import 'package:raqeeb/widgets/role_card.dart';
import 'package:raqeeb/screens/home_screen.dart';

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
    if (!mounted) return;
    setState(() => _loading = false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPatient = _role == UserRole.patient;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          const Positioned(
            top: -60,
            left: -60,
            child: Blob(coloring: AppColors.softLavender, size: 220),
          ),
          const Positioned(
            top: 20,
            right: -80,
            child: Blob(coloring: AppColors.powderPink, size: 240),
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
                      const Center(child: Logo()),
                      const SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Welcome to RAQEEB',
                          style: AppStyles.jakartaBoldCharcoal32.copyWith(
                            fontSize: 26,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Center(
                        child: Text(
                          'Your care, always connected.',
                          style: AppStyles.jakartaRegularMuted16.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, bottom: 10),
                        child: Text(
                          'CONTINUE AS',
                          style: AppStyles.jakartaMediumMuted12,
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
                              activeColor: AppColors.primaryPink,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              onChanged: (v) =>
                                  setState(() => _rememberMe = v ?? false),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Remember me',
                            style: AppStyles.jakartaMediumMuted12.copyWith(
                              fontSize: 13,
                              letterSpacing: 0,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              // TODO: navigate to forgot password
                            },
                            child: Text(
                              'Forgot Password?',
                              style:
                                  AppStyles.jakartaMediumPrimaryPink12.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
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
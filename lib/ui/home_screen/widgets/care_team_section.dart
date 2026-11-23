import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';

class CareTeamMember {
  final String name;
  final String role;
  final String initials;
  final Color avatarColor;
  final Color accentColor;

  const CareTeamMember({
    required this.name,
    required this.role,
    required this.initials,
    required this.avatarColor,
    required this.accentColor,
  });
}

class CareTeamSection extends StatelessWidget {
  final List<CareTeamMember> members;
  final VoidCallback onDirectoryTap;
  final ValueChanged<CareTeamMember> onCallTap;

  const CareTeamSection({
    super.key,
    required this.members,
    required this.onDirectoryTap,
    required this.onCallTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Care Team On-Call',
                  style: AppStyles.jakartaBoldCharcoal14.copyWith(
                    fontSize: 15,
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(6),
                onTap: onDirectoryTap,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    'Clinic Directory',
                    style: AppStyles.jakartaBoldCharcoal14.copyWith(
                      fontSize: 12.5,
                      letterSpacing: 0,
                      color: AppColors.tealAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            for (final member in members) ...[
              Expanded(
                child: _MemberCard(
                  member: member,
                  onCallTap: () => onCallTap(member),
                ),
              ),
              if (member != members.last) const SizedBox(width: 12),
            ],
          ],
        ),
      ],
    );
  }
}

class _MemberCard extends StatelessWidget {
  final CareTeamMember member;
  final VoidCallback onCallTap;

  const _MemberCard({required this.member, required this.onCallTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.charcoal.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: member.avatarColor,
            child: Text(
              member.initials,
              style: AppStyles.jakartaBoldCharcoal14.copyWith(
                fontSize: 13,
                letterSpacing: 0,
                color: member.accentColor,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  member.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.jakartaBoldCharcoal14.copyWith(
                    fontSize: 13,
                    letterSpacing: 0,
                  ),
                ),
                Text(
                  member.role,
                  style: AppStyles.jakartaMediumMuted12.copyWith(
                    fontSize: 11.5,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 6),
          Material(
            color: member.avatarColor.withValues(alpha: 0.6),
            shape: const CircleBorder(),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: onCallTap,
              child: SizedBox(
                width: 34,
                height: 34,
                child: Icon(
                  Icons.call_outlined,
                  size: 17,
                  color: member.accentColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

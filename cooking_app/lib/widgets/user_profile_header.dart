import 'package:cooking_app/resources/app_icons.dart';
import 'package:cooking_app/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserProfileStaticHeader extends StatelessWidget {
  final String userName;
  final String location;

  static const Color _tealActive = AppColors.primary100;
  static const Color _tealInactive = AppColors.primary80;

  const UserProfileStaticHeader({
    super.key,
    required this.userName,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
      child: Column(
        children: <Widget>[
          _buildProfileRow(),

          const SizedBox(height: 20.0),

          _buildStaticToggleRow(),
        ],
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(AppIcons.followProfile),
        ),

        const SizedBox(width: 15.0),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                userName,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 2.0),
              Row(
                children: <Widget>[
                  SvgPicture.asset(
                    AppIcons.location,
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 11.0,
                      color: AppColors.gray3,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: 40.0,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: _tealActive,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10,
              ),
              elevation: 0,
            ),
            child: const Text(
              'Follow',
              style: TextStyle(
                fontSize: 11,
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStaticToggleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 33.0,
          width: 150,
          decoration: BoxDecoration(
            color: _tealActive,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'Ingredient',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.white,
                fontSize: 11.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        SizedBox(
          height: 33.0,
          width: 150,
          child: const Center(
            child: Text(
              'Procedure',
              style: TextStyle(
                color: _tealInactive,
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

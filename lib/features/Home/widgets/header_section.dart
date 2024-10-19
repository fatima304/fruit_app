import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/cubit/auth_cubit/auth_cubit.dart';
import 'package:fruit_app/cubit/auth_cubit/auth_state.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fruit_app/features/Home/widgets/search_bar.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit()
        ..createDatabase()
        ..getName(name),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              log('success name');

              if (state is AuthCreatedState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is AuthSuccessState) {
                log('success name');
                return Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hello $name, ',
                        style: GoogleFonts.darkerGrotesque(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                          color: ColorStyle.textColor,
                        ),
                      ),
                      TextSpan(
                        text: 'What fruit salad\ncombo do you want today?',
                        style: GoogleFonts.darkerGrotesque(
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorStyle.textColor,
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              const Flexible(
                child: CustomSearchBar(),
              ),
              SizedBox(width: 10.w),
              Image.asset(
                'assets/setting.png',
                width: 26.w,
                height: 17.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

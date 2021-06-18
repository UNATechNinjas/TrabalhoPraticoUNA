import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle textAppBar = GoogleFonts.roboto(
    color: AppColors.textAppBar,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle textAppBarWhite = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle textWhite = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle textBlack = GoogleFonts.roboto(
    color: AppColors.textAppBar,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle textBlacktitle = GoogleFonts.roboto(
    color: AppColors.textAppBar,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle textAppBarBold = GoogleFonts.roboto(
    color: AppColors.textAppBar,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle textbottomSheet = GoogleFonts.roboto(
    color: AppColors.textAppBar,
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );


}

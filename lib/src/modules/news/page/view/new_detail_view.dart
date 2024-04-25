import 'package:flutter/material.dart';
import 'package:vet_digital/src/app_constants/constants.dart';
import 'package:vet_digital/src/generated/assets.gen.dart';

import '../../../../app/theme/theme.dart';
import '../../../information/data/models/katalog_model.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({super.key, required this.newsItems});
  final KatalogModel newsItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.mainColor,
        backgroundColor: Colors.transparent,
        title: Text(
          newsItems.name!,
          style: AppTextStyles.poppinsBlack18w600,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Assets.icons.mainLogo.image(height: 37, width: 37),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              newsItems.title!,
              style: AppTextStyles.poppinsBlack16w400,
            ),
            AppSpace.sized20,
            Image.asset(
              newsItems.image!,
              fit: BoxFit.cover,
            ),
            AppSpace.sized20,
            Text(
              newsItems.title1!,
              style: AppTextStyles.poppinsBlack14w500,
            ),
          ],
        ),
      ),
    );
  }
}

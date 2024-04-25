import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/theme/theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../data/data.dart';
import 'sub_menu_info.dart';


class SubMenuView extends StatelessWidget {
  const SubMenuView({
    super.key,
    required this.infoSubMenuModel,
  });
  final InfoSubMenu infoSubMenuModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        title: Text(
          infoSubMenuModel.titleS,
          style: AppTextStyles.poppinsBlack15w600,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Assets.icons.mainLogo.image(height: 37, width: 37),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Stack(
                children: [
                  Image.asset(
                    Assets.images.categoryImage.path,
                    fit: BoxFit.cover,
                    width: 280,
                    height: 280,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(70),
                    child: CircleAvatar(
                      radius: 70,
                      child: ClipOval(
                        child: Image.asset(
                          infoSubMenuModel.image,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              itemCount: infoSubMenuModel.items.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                final newsInfoList = infoSubMenuModel.items[index];
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: OutlinedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (context) => SubMenuInfoView(
                          infoSubMenuModel: infoSubMenuModel.items[index],
                        ),
                      ),
                    ),
                    // ignore: lines_longer_than_80_chars
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      fixedSize: const Size(344, 80),
                      padding: const EdgeInsets.all(15),
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SvgPicture.asset(newsInfoList.icon),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              newsInfoList.title,
                              style: AppTextStyles.robotoWhite16w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

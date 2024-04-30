import 'package:flutter/material.dart';
import 'package:vet_digital/src/app/theme/colors/app_colors.dart';
import 'package:vet_digital/src/app/theme/typography/app_typography.dart';
import 'package:vet_digital/src/modules/information/page/view/momojemish_view.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
          child: Column(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const MomojemishView()),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      color: AppColors.mainColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/fruits.png',
                            height: 160,
                          ),
                          const SizedBox(height: 13),
                          const Text(
                            'Мөмө жемиштер',
                            style: AppTextStyles.robotoWhite16w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const MomojemishView()),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      color: AppColors.mainColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/vegetable.png',
                            height: 160,
                          ),
                          const SizedBox(height: 13),
                          const Text(
                            'Жер жемиштер',
                            style: AppTextStyles.robotoWhite16w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vet_digital/src/modules/home/home.dart';
import 'package:vet_digital/src/modules/information/information.dart';

import '../../../app/theme/colors/app_colors.dart';
import '../../connection/connection.dart';
import '../../news/news.dart';
import '../../news/page/logic/cubit/news_info_cubit.dart';
import '../../vet/page/logic/cubit/news_info_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final _controller = PageController();

  final _items = const [
    MenuPage(),
    NewsPage(),
    ConnectionPage(),
  ];

  Future<void> change(BuildContext context, int page) async {
    await _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    // ignore: use_build_context_synchronously
    context.read<HomeCubit>().change(page);
    // ignore: use_build_context_synchronously
    // context.read<InfoAboutAppCubit>().getVetInfo('HazfNNbTObVEBx9ie3FP');
    // ignore: use_build_context_synchronously
    context.read<InfoAboutAppCubit>().getKatalog('katalog');
    // ignore: use_build_context_synchronously
    context.read<InfoNewsCubit>().getVetInfo('HazfNNbTObVEBx9ie3FP');
    // context.read<InfoAboutAppCubit>().getVetInfo('HazfNNbTObVEBx9ie3FP');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: AppColors.black,
        title: const Text(
          'Fruits',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: AppColors.mainColor,
            fontFamily: 'DancingScript',
          ),
          // style: AppTextStyles.poppinsBlack15w600,
        ),
        // centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/icons/mainlogo.png',
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView.builder(
        controller: _controller,
        onPageChanged: context.read<HomeCubit>().change,
        itemBuilder: (context, index) {
          return _items[index];
        },
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: SizedBox(
          height: 100,
          child: BlocBuilder<HomeCubit, int>(
            builder: (context, state) {
              return BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                currentIndex: state,
                backgroundColor: AppColors.mainColor,
                items: [
                  _buildNavBarItem('assets/icons/home.svg', context, 0),
                  _buildNavBarItem('assets/icons/news.svg', context, 1),
                  _buildNavBarItem('assets/icons/call.svg', context, 3),
                ],
                onTap: (val) async {
                  await change(context, val);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavBarItem(
    String icon,
    BuildContext context,
    int index,
  ) {
    return BottomNavigationBarItem(
      label: '',
      icon: CircleAvatar(
        radius: 30,
        backgroundColor: context.read<HomeCubit>().state == index
            ? AppColors.white
            : Colors.transparent,
        child: SvgPicture.asset(
          icon,
          color: context.read<HomeCubit>().state == index
              ? AppColors.mainColor
              : AppColors.white,
        ),
      ),
    );
  }
}

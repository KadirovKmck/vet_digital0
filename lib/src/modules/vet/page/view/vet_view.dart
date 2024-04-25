import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/theme/theme.dart';
import '../../../../app_constants/constants.dart';
import '../../../../utils/components/components.dart';
import '../../../news/page/logic/cubit/news_info_cubit.dart';
import '../../data/models/vet_info_model.dart';
import '../widgets/vet.dart';

class VetView extends StatelessWidget {
  const VetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      // child: BlocBuilder<VetCubit, VetState>(
      //   builder: (context, state) {
      //     if (state.status == FetchStatus.initial) {
      //       return const FetchInitialWidget();
      //     } else if (state.status == FetchStatus.loading) {
      //       return const FetchLoadingWidget();
      //     } else if (state.item != null) {
      //       return VetSuccessWidget(veterinar: state.item!);
      //     } else if (state.status == FetchStatus.error) {
      //       return const FetchErrorWidget();
      //     } else {
      //       return const FetchUnkNown();
      //     }
      //   },
      // ),
      child: BlocBuilder<InfoNewsCubit, InfoNewsState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is LoadedVetState) {
            return VetSuccessWidget(veterinar: state.items!);
          } else {
            return const FetchUnkNown();
          }
        },
      ),
    );
  }
}

class VetSuccessWidget extends StatelessWidget {
  VetSuccessWidget({super.key, required this.veterinar});
  final VetInfoModel veterinar;

  List<VetModel> basketVet = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          veterinar.name ?? '',
          style: AppTextStyles.robotoGreen13w400,
        ),
        AppSpace.sized10,
        Text(
          veterinar.name2 ?? '',
          style: const TextStyle(fontSize: 18),
        ),
        AppSpace.sized30,
        Image.network(
          veterinar.image!,
          width: 366,
          height: 260,
          fit: BoxFit.cover,
        ),
        // Assets.images.veterinarImage.image(
        // width: 366,
        // height: 260,
        // fit: BoxFit.cover,
        // ),
        AppSpace.sized20,
        Card(
          child: Column(
            children: [
              AppSpace.sized30,
              Text(
                veterinar.title ?? '',
                style: AppTextStyles.robotoGreen13w400,
              ),
              AppSpace.sized15,
              Text(
                veterinar.title1 ?? '',
                // '${model.veterinaria}',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        // Expanded(
        //   child: ListView.builder(
        //     shrinkWrap: true,
        //     primary: false,
        //     itemCount: basketVet.length,
        //     itemBuilder: (context, index) {
        //       //final model = basketVet[index];
        // return Card(
        //   child: Column(
        //     children: [
        //       Text(
        //         basketVet[index].name ?? '',
        //         style: AppTextStyles.robotoGreen13w400,
        //       ),
        //       AppSpace.sized10,
        //       Text(
        //         basketVet[index].history ?? '',
        //         style: const TextStyle(fontSize: 18),
        //       ),
        //       AppSpace.sized30,
        //       Text(
        //         basketVet[index].veter ?? '',
        //         style: AppTextStyles.robotoGreen13w400,
        //       ),
        //       AppSpace.sized15,
        //       Text(
        //         basketVet[index].veterinaria ?? '',
        //         // '${model.veterinaria}',
        //         style: const TextStyle(fontSize: 18),
        //       ),
        //     ],
        //   ),
        // );
        //     },
        //   ),
        // ),
      ],
    );
    // return Column(

    // children: [
    // // TextButton(
    // //   onPressed: getData,
    // //   child: const Text('Okey'),
    // // ),
    // Assets.images.veterinarImage.image(width: 366, height: 240),
    // AppSpace.sized17,
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,

    // children: [
    //   Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text(
    //         '${basketVet[0].name}',
    //         style: AppTextStyles.poppinsBlack18w600,
    //       ),
    //     ],
    //   ),
    // ],
    // ),
    // AppSpace.sized10,

    // Text(
    //   '${basketVet[0].history}',
    //   style: const TextStyle(fontSize: 18),
    // ),
    // ListView.builder(
    //   itemCount: basketVet.length,
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       title: Text(basketVet[index].name ?? ''),
    //       subtitle: Text(basketVet[index].history ?? ''),
    //     );
    //   },
    // ),
    // SizedBox(
    //   height: 1000,
    //   width: double.infinity,
    //   child: SfPdfViewer.network(widget.veterinar.biographyLink),
    // )
    // ],
    // );
  }
}

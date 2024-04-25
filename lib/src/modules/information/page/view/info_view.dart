import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../data/data.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key, required this.infoModel});

  final InfoModel infoModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(infoModel.title),
      ),
      body: SfPdfViewer.network(
        infoModel.pdfLink,
        canShowScrollHead: false,
        canShowScrollStatus: false,
        canShowPaginationDialog: false,
      ),

      // body: SizedBox(
      //   width: double.infinity,
      //   height: context.height * 09,
      //   child: SfPdfViewer.network(info.pdfLink),
      // ),
    );
  }
}

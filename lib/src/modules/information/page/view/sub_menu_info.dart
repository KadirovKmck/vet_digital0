import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../data/data.dart';

class SubMenuInfoView extends StatelessWidget {
  const SubMenuInfoView({
    super.key,
    required this.infoSubMenuModel,
  });

  final InfoSubMenuItem infoSubMenuModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(infoSubMenuModel.title),
      ),
      body: SfPdfViewer.network(
        infoSubMenuModel.info.pdfLink,
        canShowScrollHead: false,
        canShowScrollStatus: false,
        canShowPaginationDialog: false,
      ),
    );
  }
}

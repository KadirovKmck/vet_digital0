// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vet_digital/src/app/theme/theme.dart';
import 'package:vet_digital/src/app_constants/constants.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

const string = AppString;
const space = AppSpace;

class AppBottomSheet {
  static void show({
    required BuildContext context,
    required Widget child,
    double? maxHeight,
    double? initialChildSize,
    double? maxChildSize,
    double? minChildSize,
  }) {
    showModalBottomSheet<dynamic>(
      backgroundColor: AppColors.mainColor,
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).canvasColor),
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context2) {
        return SizedBox(
          height: 200,
          child: DraggableScrollableSheet(
            initialChildSize: initialChildSize ?? 1,
            maxChildSize: maxChildSize ?? 1,
            minChildSize: minChildSize ?? 0.4,
            expand: false,
            builder: (BuildContext context2, ScrollController scr) {
              return Stack(
                children: [
                  SizedBox(
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.close,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        AppSpace.sized20,
                        ElevatedButton(
                          onPressed: () async {
                            String url = 'https://telegram.me/SZHORUBAEV';
                            // ignore: deprecated_member_use
                            if (await canLaunch(url)) {
                              // ignore: deprecated_member_use
                              await launch(url);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            //backgroundColor: AppColors.white,
                            fixedSize: const Size(307, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.telegram,
                                color: Color(0xff0088cc),
                              ),
                              AppSpace.sizedW10,
                              Text(
                                'Telegram',
                                style: AppTextStyles.poppinsBlack15w600,
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            const link = WhatsAppUnilink(
                              phoneNumber: '+996778787298',
                              text: 'Ассалам алайкум',
                            );
                            // ignore: deprecated_member_use
                            await launch('$link');
                          },
                          style: ElevatedButton.styleFrom(
                            //backgroundColor: AppColors.white,
                            fixedSize: const Size(307, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.abc,
                                color: Color(0xff25D366),
                              ),
                              AppSpace.sizedW10,
                              Text(
                                'WhatsApp',
                                style: AppTextStyles.poppinsBlack15w600,
                              ),
                            ],
                          ),
                        ),
                        AppSpace.sized10,
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}






// import 'package:flutter/material.dart';

// import '../../../../src.dart';

// Connection? vetContacts;

// class AppBottomSheet {
//   static void show({
//     required BuildContext context,
//     required Widget child,
//     double? maxHeight,
//     double? initialChildSize,
//     double? maxChildSize,
//     double? minChildSize,
//   }) {
//     showModalBottomSheet<dynamic>(
//       backgroundColor: AppColors.mainColor,
//       context: context,
//       isScrollControlled: true,
//       shape: RoundedRectangleBorder(
//         side: BorderSide(color: Theme.of(context).canvasColor),
//         borderRadius: const BorderRadius.vertical(
//           top: Radius.circular(25),
//         ),
//       ),
//       builder: (context2) {
//         return SizedBox(
//           height: 200,
//           child: DraggableScrollableSheet(
//             initialChildSize: initialChildSize ?? 1,
//             maxChildSize: maxChildSize ?? 1,
//             minChildSize: minChildSize ?? 0.4,
//             expand: false,
//             builder: (BuildContext context2, ScrollController scr) {
//               return Stack(
//                 children: [
//                   SizedBox(
//                     child: IconButton(
//                       onPressed: () => Navigator.pop(context),
//                       icon: const Icon(
//                         Icons.close,
//                         color: AppColors.white,
//                       ),
//                     ),
//                   ),
//                   Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: <Widget>[
//                         AppSpace.sized20,
//                         ElevatedButton(
//                           onPressed: () async =>
//                               UrlService.launchTelegram(connection1.telegram)
//                           style: ElevatedButton.styleFrom(
//                             primary: AppColors.white,
//                             fixedSize: const Size(307, 48),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const <Widget>[
//                               Icon(
//                                 Icons.telegram,
//                                 color: Color(0xff0088cc),
//                               ),
//                               AppSpace.sized10,
//                               Text(
//                                 AppString.telegram,
//                                 style: AppTextStyles.poppinsBlack15w600,
//                               ),
//                             ],
//                           ),
//                         ),
//                         ElevatedButton(
//                           onPressed: () async =>
//                               UrlService.launchWhatsApp(connection1.whatsApp)
//                           style: ElevatedButton.styleFrom(
//                             primary: AppColors.white,
//                             fixedSize: const Size(307, 48),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const <Widget>[
//                               Icon(
//                                 Icons.whatsapp,
//                                 color: Color(0xff25D366),
//                               ),
//                               AppSpace.sized10,
//                               Text(
//                                 AppString.whatsApp,
//                                 style: AppTextStyles.poppinsBlack15w600,
//                               ),
//                             ],
//                           ),
//                         ),
//                         AppSpace.sized10,
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }

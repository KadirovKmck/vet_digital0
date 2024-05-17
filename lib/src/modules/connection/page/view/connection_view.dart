import 'package:flutter/material.dart';
import 'package:vet_digital/src/app/theme/theme.dart';
import 'package:vet_digital/src/app_constants/constants.dart';

import '../widgets/connection_widgets.dart';

class ConnectionView extends StatelessWidget {
  const ConnectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Fruits',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w900,
              color: Color(0xFF423EFF),
              fontFamily: 'DancingScript',
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Бул номерлер аркылуу сиз жемиштерди кантип өстүрүү боюнча маалымат алсаңыз болот',
              textAlign: TextAlign.center,
              style: AppTextStyles.poppinsBlack16w400,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                AppBottomSheet.show(
                  context: context,
                  child: const TextField(),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF423EFF),
                fixedSize: const Size(307, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: const Text(
                AppString.baylanishuu,
                textAlign: TextAlign.center,
                style: AppTextStyles.poppinsWhite17w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

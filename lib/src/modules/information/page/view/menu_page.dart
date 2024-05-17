import 'package:flutter/material.dart';
import 'package:vet_digital/src/modules/information/page/view/sub%20fruits/vegetebls/jerjemish_view.dart';
import 'package:vet_digital/src/modules/information/page/view/sub%20fruits/fruits/fuits_view.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool isViewChaneges = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isViewChaneges = true;
                  });
                },
                child: Container(
                  width: 230,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: isViewChaneges
                        ? const Color(0xFF423EFF)
                        : const Color(0xffD6CDFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Fruits',
                      style: TextStyle(
                        color: isViewChaneges
                            ? Colors.white
                            : const Color(0xff150B3D),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isViewChaneges = false;
                  });
                },
                child: Container(
                  width: 230,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: isViewChaneges
                        ? const Color(0xffD6CDFE)
                        : const Color(0xFF423EFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Vegetables',
                      style: TextStyle(
                        color: isViewChaneges
                            ? const Color(0xff150B3D)
                            : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          isViewChaneges == false ? const Vegetbls() : const FrutsView(),
         
        ],
      ),
    );
  }
}

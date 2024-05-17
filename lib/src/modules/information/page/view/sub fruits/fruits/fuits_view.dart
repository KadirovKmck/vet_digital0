import 'package:flutter/material.dart';
import 'package:vet_digital/src/modules/information/page/view/About%20fruts/about_fruts_and_vegetebls.dart';
import 'package:vet_digital/src/modules/information/page/view/sub%20fruits/fruits/fruits_text.dart';

class FrutsView extends StatelessWidget {
  const FrutsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: FruitsText().name.length,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 35,
          mainAxisSpacing: 35,
        ),
        itemBuilder: (context, index) {
          final name = FruitsText().name[index];
          final description = FruitsText().description[index];
          final photo = FruitsText().photos[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutFrutsAndVegetables(
                    descrioption: description,
                    name: name,
                    photo: photo,
                  ),
                ),
              );
            },
            child: Container(
              height: 250,
              width: 125,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
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
              child: Column(
                children: [
                  Container(
                    height: 175,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(30)),
                      image: DecorationImage(
                          image: AssetImage(
                            FruitsText().photos[index],
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    FruitsText().name[index],
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xff150B3D),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

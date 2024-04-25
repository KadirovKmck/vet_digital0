import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vet_digital/src/app/theme/colors/app_colors.dart';
import 'package:vet_digital/src/app/theme/typography/app_typography.dart';

class FruitsView extends StatefulWidget {
  const FruitsView({Key? key}) : super(key: key);

  @override
  State<FruitsView> createState() => _FruitsViewState();
}

class _FruitsViewState extends State<FruitsView> {
  final controller = TextEditingController();
  late List<String> addToDo = [];
  late final Future<SharedPreferences> _prefs;

  @override
  void initState() {
    super.initState();
    _prefs = SharedPreferences.getInstance();
    initPrefs();
  }

  Future<void> initPrefs() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      addToDo = prefs.getStringList('addToDO') ?? [];
    });
  }

  void addToDoList() async {
    if (controller.text.isNotEmpty) {
      final text = controller.text;
      addToDo.add(text);
      controller.clear();
      final SharedPreferences prefs = await _prefs;
      await prefs.setStringList('addToDO', addToDo);
    } else {
      return null;
    }
    log(addToDo.toString());
    setState(() {});
  }

  void deleteItem(int index) async {
    final SharedPreferences prefs = await _prefs;
    addToDo.removeAt(index);
    await prefs.setStringList('addToDO', addToDo);
    setState(() {});
  }

  void toggleCompletion(int index) async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      addToDo[index] = addToDo[index].startsWith('Completed:')
          ? addToDo[index].substring(10)
          : 'Completed: ${addToDo[index]}';
    });
    await prefs.setStringList('addToDO', addToDo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.mainColor,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Алма',
          style: AppTextStyles.poppinsWhite24w600,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Выращивание яблок требует некоторых усилий и знаний, но в целом это достижимо даже для начинающих садоводов. Вот некоторые шаги, которые могут помочь вам правильно вырастить яблоко:\n\n'
                '1. Выбор места: Выберите хорошее место для посадки яблони. Оно должно получать достаточно солнечного света (примерно 6-8 часов в день) и иметь хорошую дренажную систему.\n\n'
                '2. Подготовка почвы: Почва должна быть хорошо дренированной и плодородной. Вы можете улучшить ее добавлением компоста или перегноя.\n\n'
                '3. Выбор саженца: Приобретите здоровый саженец яблони у надежного поставщика. Выбирайте саженцы с разветвленной корневой системой и без видимых повреждений.\n\n'
                '4. Посадка саженца: Саженец следует посадить в яму глубиной около 50-60 см. Убедитесь, что корни распределены равномерно и что земля хорошо уплотнена вокруг саженца.\n\n'
                '5. Полив: После посадки яблони ей нужно обеспечить достаточное количество влаги. В период сухости поливайте растение регулярно.\n\n'
                '6. Удобрение: Регулярно удобряйте яблоню органическим или минеральным удобрением, чтобы обеспечить ей необходимые питательные вещества.\n\n'
                '7. Обрезка: Проводите обрезку яблони для формирования правильной кроны и удаления больных или поврежденных ветвей.\n\n'
                '8. Защита от вредителей и болезней: Поддерживайте яблоню в чистоте, регулярно удаляйте опавшие листья и контролируйте возможные вредители и болезни.\n\n'
                '9. Уборка урожая: Собирайте яблоки, когда они достигнут зрелости. Это обычно происходит осенью. Правильно храните урожай, чтобы он сохранялся как можно дольше.\n\n'
                'Следуя этим шагам и оказывая заботу о своей яблоне, вы сможете вырастить вкусные и здоровые яблоки!',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Алма өстүрүүнү башта',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Алма өстүрүүгө план жаз',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      addToDoList();
                    },
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: addToDo.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: CheckboxListTile(
                      value: addToDo[index].startsWith('Completed'),
                      onChanged: (value) {
                        toggleCompletion(index);
                      },
                      title: Text(
                        addToDo[index].replaceAll('Completed: ', ''),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      secondary: IconButton(
                        onPressed: () {
                          deleteItem(index);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

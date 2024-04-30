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
                    color: addToDo[index].startsWith('Completed')
                        ? Colors.grey
                        : Colors.white,
                    child: ListTile(
                      title: CheckboxListTile(
                        title: Text(
                          addToDo[index].replaceAll('Completed: ', ''),
                        ),
                        subtitle: Text(
                            '${dates[index].day}-${dates[index].month}-${dates[index].year}'),
                        value: addToDo[index].startsWith('Completed'),
                        onChanged: (value) {
                          toggleCompletion(index);
                        },
                      ),
                      leading: IconButton(
                        icon: const Icon(
                          Icons.calendar_month,
                        ),
                        onPressed: () {
                          showDatePickerDay(index);
                        },
                      ),
                      trailing: IconButton(
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

  @override
  void initState() {
    super.initState();
    _prefs = SharedPreferences.getInstance();
    initPrefs();
    loadDates();
  }

  void saveDates() async {
    final SharedPreferences prefs = await _prefs;
    List<String> dateStrings =
        dates.map((date) => date.toIso8601String()).toList();
    await prefs.setStringList('dates', dateStrings);
  }

  Future<void> loadDates() async {
    final SharedPreferences prefs = await _prefs;
    List<String>? dateStrings = prefs.getStringList('dates');
    if (dateStrings != null) {
      dates = dateStrings.map((string) => DateTime.parse(string)).toList();
    }
  }

  Future<void> initPrefs() async {
    final SharedPreferences prefs = await _prefs;
    setState(
      () {
        addToDo = prefs.getStringList('addToDO') ?? [];
        dates =
            List<DateTime>.generate(addToDo.length, (index) => DateTime.now());
      },
    );
  }

  void addToDoList() async {
    if (controller.text.isNotEmpty) {
      final text = controller.text;
      addToDo.add(text);
      dates.add(DateTime.now());
      controller.clear();
      final SharedPreferences prefs = await _prefs;
      await prefs.setStringList('addToDO', addToDo);
    } else {
      return null;
    }
    log(addToDo.toString());
    setState(() {});
  }

  void toggleCompletion(int index) async {
    if (!addToDo[index].startsWith('Completed:')) {
      final SharedPreferences prefs = await _prefs;
      setState(() {
        addToDo[index] = 'Completed: ${addToDo[index]}';
      });
      await prefs.setStringList('addToDO', addToDo);
    }
  }

  void showDatePickerDay(int index) {
    showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
      initialDate: dates[index],
    ).then((value) {
      setState(() {
        if (value != null) {
          dates[index] = value;
          saveDates();
        }
      });
    });
  }

  void deleteItem(int index) async {
    final SharedPreferences prefs = await _prefs;
    addToDo.removeAt(index);
    dates.removeAt(index);
    await prefs.setStringList('addToDO', addToDo);
    setState(() {});
  }

  final controller = TextEditingController();
  late List<String> addToDo = [];
  late final Future<SharedPreferences> _prefs;
  bool isChek = false;
  late List<DateTime> dates = [];
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AboutFrutsAndVegetables extends StatefulWidget {
  const AboutFrutsAndVegetables(
      {super.key,
      required this.descrioption,
      required this.photo,
      required this.name});
  final String name;
  final String descrioption;
  final String photo;
  @override
  State<AboutFrutsAndVegetables> createState() =>
      _AboutFrutsAndVegetablesState();
}

class _AboutFrutsAndVegetablesState extends State<AboutFrutsAndVegetables> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.photo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        height: 50,
                        width: 50,
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 290),
                    child: Center(
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        child: Center(
                          child: Text(
                            widget.name,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Выращивание ${widget.descrioption} требует некоторых усилий и знаний, но в целом это достижимо даже для начинающих садоводов. Вот некоторые шаги, которые могут помочь вам правильно вырастить ${widget.descrioption}:\n\n'
                      '1. Выбор места: Выберите хорошее место для посадки ${widget.descrioption}. Оно должно получать достаточно солнечного света (примерно 6-8 часов в день) и иметь хорошую дренажную систему.\n\n'
                      '2. Подготовка почвы: Почва должна быть хорошо дренированной и плодородной. Вы можете улучшить ее добавлением компоста или перегноя.\n\n'
                      '3. Выбор саженца: Приобретите здоровый саженец ${widget.descrioption} у надежного поставщика. Выбирайте саженцы с разветвленной корневой системой и без видимых повреждений.\n\n'
                      '4. Посадка саженца: Саженец следует посадить в яму глубиной около 50-60 см. Убедитесь, что корни распределены равномерно и что земля хорошо уплотнена вокруг саженца.\n\n'
                      '5. Полив: После посадки ${widget.descrioption} ей нужно обеспечить достаточное количество влаги. В период сухости поливайте растение регулярно.\n\n'
                      '6. Удобрение: Регулярно удобряйте ${widget.descrioption} органическим или минеральным удобрением, чтобы обеспечить ей необходимые питательные вещества.\n\n'
                      '7. Обрезка: Проводите обрезку ${widget.descrioption} для формирования правильной кроны и удаления больных или поврежденных ветвей.\n\n'
                      '8. Защита от вредителей и болезней: Поддерживайте ${widget.descrioption} в чистоте, регулярно удаляйте опавшие листья и контролируйте возможные вредители и болезни.\n\n'
                      '9. Уборка урожая: Собирайте ${widget.descrioption}, когда они достигнут зрелости. Это обычно происходит осенью. Правильно храните урожай, чтобы он сохранялся как можно дольше.\n\n'
                      'Следуя этим шагам и оказывая заботу о своей ${widget.descrioption}, вы сможете вырастить вкусные и здоровые ${widget.descrioption}!',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    '${widget.name} өстүрүүнү башта',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 310,
                          child: Container(
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 5,
                                  offset: Offset(0, 4),
                                  spreadRadius: 1,
                                )
                              ],
                            ),
                            child: TextFormField(
                              controller: controller,
                              onChanged: (query) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 3.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                hintText: '${widget.name} өстүрүүгө план жаз',
                                hintStyle: const TextStyle(
                                    color: Color(0xff677294),
                                    fontSize: 15,
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.bold),
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      controller.clear();
                                      FocusScope.of(context).unfocus();
                                    },
                                    icon: const Icon(Icons.close,
                                        color: Color(0xff677294))),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    )),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        FloatingActionButton(
                          onPressed: addToDoList,
                          child: const Icon(Icons.add),
                        ),
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
            ],
          ),
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
  late final Future<SharedPreferences> _prefs;
  bool isChek = false;

  late List<String> addToDo = [];
  late List<DateTime> dates = [];
}

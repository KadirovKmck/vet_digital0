
import '../../../../app_constants/constants.dart';

class InfoModel {
  InfoModel(
    this.title,
    this.pdfLink,
  );

  final String title;
  final String pdfLink;
}

final aboutUs = InfoModel(
  'Биз жөнүндө',
  AppLink.aboutUsPdfLink,
);
final feed = InfoModel(
  'Тоюттар',
  AppLink.feed,
);
final insemination = InfoModel(
  'Жасалма уруктандыруу',
  AppLink.insemination,
);
final pain = InfoModel(
  'Жаныбарлардан жугуучу оорулар',
  AppLink.pain,
);
final history = InfoModel(
  'Тарыхчам',
  AppLink.history,
);
final animalDisease = InfoModel(
  'Мал оорулары',
  AppLink.animalDisease,
);
final animalFeed = InfoModel(
  'Мал тоюту',
  AppLink.animalFeed,
);
final inseminationOfAnimals = InfoModel(
  'Мал уруктандыруу',
  AppLink.inseminationOfAnimals,
);
final inseminationOfSheep = InfoModel(
  'Кой уруктандыруу',
  AppLink.inseminationOfSheep,
);
final sheepFeed = InfoModel(
  'Кой тоюту',
  AppLink.sheepFeed,
);
final sheepShearing = InfoModel(
  'Кой оорулары',
  AppLink.sheepShearing,
);
final horseSickness = InfoModel(
  'Жылкы оорулары',
  AppLink.horseSickness,
);
final horseInsemination = InfoModel(
  'Жылкы уруктандыруу',
  AppLink.horseInsemination,
);
final horseFeed = InfoModel(
  'Жылкы тоют',
  AppLink.horseFeed,
);
final chickenFeed = InfoModel(
  'Тооктун багылышы',
  AppLink.chickenFeed,
);
final chickenDisease = InfoModel(
  'Тоок оорулары',
  AppLink.chickenDisease,
);

// /// news Images

// final newsImage1 = InfoModel('Жанылыктар', AppLink.newsImage1,);
// final newsImage2 = InfoModel('Жанылыктар', AppLink.newsImage2,);
// final newsImage3 = InfoModel('Жанылыктар', AppLink.newsImage3,);
// final newsImage4 = InfoModel('Жанылыктар', AppLink.newsImage4,);


import 'package:vet_digital/src/generated/assets.gen.dart';

import '../../information.dart';

class InfoSubMenu {
  InfoSubMenu({
    required this.image,
    required this.titleS,
    required this.id,
    required this.items,
  });

  final String image;
  final String titleS;
  final int id;
  final List<InfoSubMenuItem> items;
}

class InfoSubMenuItem {
  InfoSubMenuItem({
    required this.id,
    required this.icon,
    required this.title,
    required this.info,
  });

  final int id;
  final String icon;
  final String title;
  final InfoModel info;
}

final bd = InfoSubMenu(
  titleS: 'Бодо Мал',
  image: Assets.images.bodomal.path,
  id: 1,
  items: [
    InfoSubMenuItem(
      id: 1,
      icon: Assets.icons.toyut.path,
      title: 'Тоюттар',
      info: animalFeed,
    ),
    InfoSubMenuItem(
      id: 2,
      icon: Assets.icons.ooruu.path,
      title: 'Оорусу',
      info: animalDisease,
    ),
    InfoSubMenuItem(
      id: 3,
      icon: Assets.icons.uruktandiruu.path,
      title: 'Уруктандыруу',
      info: inseminationOfAnimals,
    ),
  ],
);

final echki = InfoSubMenu(
  titleS: 'Кой Эчки',
  image: Assets.images.koyEchkiler.path,
  id: 2,
  items: [
    InfoSubMenuItem(
      id: 1,
      icon: Assets.icons.toyut.path,
      title: 'Тоюттар',
      info: sheepFeed,
    ),
    InfoSubMenuItem(
      id: 2,
      icon: Assets.icons.ooruu.path,
      title: 'Оорусу',
      info: sheepShearing,
    ),
    InfoSubMenuItem(
      id: 3,
      icon: Assets.icons.uruktandiruu.path,
      title: 'Уруктандыруу',
      info: inseminationOfSheep,
    ),
  ],
);

final jylky = InfoSubMenu(
  titleS: 'Жылкы',
  image: Assets.images.jilki.path,
  id: 3,
  items: [
    InfoSubMenuItem(
      id: 1,
      icon: Assets.icons.toyut.path,
      title: 'Тоюттар',
      info: horseFeed,
    ),
    InfoSubMenuItem(
      id: 2,
      icon: Assets.icons.ooruu.path,
      title: 'Оорусу',
      info: horseSickness,
    ),
    InfoSubMenuItem(
      id: 3,
      icon: Assets.icons.uruktandiruu.path,
      title: 'Уруктандыруу',
      info: horseInsemination,
    ),
  ],
);

final took = InfoSubMenu(
  titleS: 'Тоок',
  image: Assets.images.took.path,
  id: 4,
  items: [
    InfoSubMenuItem(
      id: 1,
      icon: Assets.icons.toyut.path,
      title: 'Тоюттар',
      info: chickenFeed,
    ),
    InfoSubMenuItem(
      id: 2,
      icon: Assets.icons.ooruu.path,
      title: 'Оорусу',
      info: chickenDisease,
    ),
  ],
);

final infoSubMenuList = [bd, echki, jylky, took];

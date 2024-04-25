
import 'package:vet_digital/src/generated/assets.gen.dart';

import '../../information.dart';

class InfoMenu {
  InfoMenu({
    required this.id,
    required this.icon,
    required this.title,
    this.isInfo = false,
    this.infoModel,
    this.infoSubMenu,
  });

  final int id;
  final String icon;
  final String title;
  final bool isInfo;
  final InfoModel? infoModel;
  final InfoSubMenu? infoSubMenu;
}

final menu1 = InfoMenu(
  id: 1,
  icon: Assets.icons.bizJonundo.path,
  title: 'Биз жөнүндө',
  isInfo: true,
  infoModel: aboutUs,
);

final menu2 = InfoMenu(
  id: 2,
  icon: Assets.icons.toyut.path,
  title: 'Тоюттар',
  isInfo: true,
  infoModel: feed,
);

final menu3 = InfoMenu(
  id: 3,
  icon: Assets.icons.uruktandiruu.path,
  title: 'Уруктандыруу',
  isInfo: true,
  infoModel: insemination,
);

final menu4 = InfoMenu(
  id: 4,
  icon: Assets.icons.ooruu.path,
  title: 'Ооруулар',
  isInfo: true,
  infoModel: pain,
);

final menu5 = InfoMenu(
  id: 5,
  icon: Assets.icons.bodoMal.path,
  title: 'Бодо мал',
  infoSubMenu: bd,
);
final menu6 = InfoMenu(
  id: 6,
  icon: Assets.icons.koyEchkiler.path,
  title: 'Кой-Эчки',
  infoSubMenu: echki,
);
final menu7 = InfoMenu(
  id: 7,
  icon: Assets.icons.jilkilar.path,
  title: 'Жылкы',
  infoSubMenu: jylky,
);
final menu8 = InfoMenu(
  id: 8,
  icon: Assets.icons.took.path,
  title: 'Тоок',
  infoSubMenu: took,
);

final infoMunuList = [menu1, menu2, menu3, menu4, menu5, menu6, menu7, menu8];

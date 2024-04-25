
import '../../../../app_constants/constants.dart';

class Veterinar {
  Veterinar({
    required this.id,
    required this.name,
    required this.profession,
    required this.lastName,
    required this.experience,
    required this.biographyLink,
    required this.telegram,
    required this.whatsApp,
  });

  final int id;
  final String name;
  final String profession;
  final String lastName;
  final int experience;
  final String biographyLink;
  final String telegram;
  final String whatsApp;
}

final vet1 = Veterinar(
  id: 1,
  name: 'Семетей',
  profession: 'Ветеринар',
  lastName: 'Жорубаев',
  experience: 3,
  biographyLink: AppLink.history,
  telegram: '+996 990 553161',
  whatsApp: '+996 778 787 298',
);

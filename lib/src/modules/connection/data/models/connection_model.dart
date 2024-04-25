class Connection {
  Connection({
    required this.id,
    required this.whatsApp,
    required this.telegram,
  });

  final int id;
  final String whatsApp;
  final String telegram;
}

final connection1 = Connection(
  id: 1,
  whatsApp: '996778787298',
  telegram: '@szorubaev',
);

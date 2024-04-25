import 'package:vet_digital/src/app_constants/constants.dart';


class News {
  News({
    required this.id,
    required this.title,
    required this.image,
    required this.subTitle,
    required this.date,
    required this.description,
  });

  final int id;
  final String title;
  final String image;
  final String subTitle;
  final String date;
  final String description;
}

final news1 = News(
  id: 1,
  title: 'Жанылык 1',
  image: AppLink.newsImage1,
  subTitle: 'What is Lorem Ipsum Lorem Ipsum ',
  date: '26-07-2022',
  description: AppLink.news1Des,
);

final news2 = News(
  id: 2,
  title: 'Жанылык 2',
  image: AppLink.newsImage2,
  subTitle: 'What is Lorem Ipsum Lorem Ipsum ',
  date: '26-07-2022',
  description: AppLink.news1Des2,
);

final news3 = News(
  id: 3,
  title: 'Жанылык 3',
  image: AppLink.newsImage3,
  subTitle: 'What is Lorem Ipsum Lorem Ipsum ',
  date: '26-07-2022',
  description: AppLink.news1Des2,
);

final news4 = News(
  id: 4,
  title: 'Жанылык 4',
  image: AppLink.newsImage3,
  subTitle: 'What is Lorem Ipsum Lorem Ipsum ',
  date: '26-07-2022',
  description: AppLink.news1Des3,
);
final newslist = [
  news1,
  news2,
  news3,
  news4,
  news1,
  news2,
  news3,
  news4,
  news1,
  news2,
  news3,
  news4,
];

class ListHorModel {
  final String image;
  final String title;
  final String subTitle;

  ListHorModel({
    required this.image,
    required this.subTitle,
    required this.title,
  });
}

List<ListHorModel> listHorData = <ListHorModel>[
  ListHorModel(
    image: 'assets/images/arivable_3.png',
    title: 'Chicken Biryani',
    subTitle: 'Ambrosia Hotel &\nRestaurant',
  ),
  ListHorModel(
    image: 'assets/images/arivable_1.png',
    title: 'Sauce Tonkatsu',
    subTitle: 'Handi Restaurant,\nChittagong',
  ),
  ListHorModel(
    image: 'assets/images/arivable_2.png',
    title: 'Chicken Katsu',
    subTitle: 'Ambrosia Hotel &\nRestaurant',
  ),
];

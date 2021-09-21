class BookingListModel {
  final String title;
  final String subTitle;
  final String image;

  BookingListModel(
      {required this.image, required this.subTitle, required this.title});
}

List<BookingListModel> bookingList = <BookingListModel>[
  BookingListModel(
    image: 'assets/images/resraurants.png',
    subTitle: 'kazi Deiry, Taiger Pass\nChittagong',
    title: 'Ambrosia Hotel & Restaurant',
  ),
  BookingListModel(
    image: 'assets/images/resraurants2.png',
    subTitle: 'Zakir Hossain Rd,\nChittagong',
    title: 'Tava Restaurant',
  ),
  BookingListModel(
    image: 'assets/images/resraurants.png',
    subTitle: '6 Surson Road,\nChittagong',
    title: 'Haatkhola',
  ),
];

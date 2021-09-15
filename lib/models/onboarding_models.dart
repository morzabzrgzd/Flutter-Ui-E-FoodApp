class OnboardingModel {
  final String imageAsset;
  final String title;
  final String description;

  OnboardingModel(
      {required this.description,
      required this.imageAsset,
      required this.title});
}

List<OnboardingModel> onboardong = <OnboardingModel>[
  OnboardingModel(
    description: '''You don't have to go far to find a good restaurant,
we have provided all the restaurants that is 
near you''',
    imageAsset: 'assets/images/ill1.png',
    title: 'Nearby restaurants',
  ),
  OnboardingModel(
    description: '''Now eat well, don't leave the house,You can 
choose your favorite food only with 
one click''',
    imageAsset: 'assets/images/ill2.png',
    title: 'Select the Favorites Menu',
  ),
  OnboardingModel(
    description: '''You can eat at expensive restaurants with
affordable price''',
    imageAsset: 'assets/images/ill3.png',
    title: 'Good food at a cheap price',
  ),
];

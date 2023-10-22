class BottomNavModel {
  final String name;
  final String image;

  BottomNavModel({required this.name, required this.image});
}

final bottomNavModel = [
  BottomNavModel(name: 'Home', image: 'home'),
  BottomNavModel(name: 'Schedule', image: 'schedule'),
  BottomNavModel(name: 'Prescription', image: 'medical'),
  BottomNavModel(name: 'Search', image: 'search'),
  BottomNavModel(name: 'Chat', image: 'chat'),
];

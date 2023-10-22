class SpecialistModel {
  final String image;
  final String name;

  SpecialistModel({required this.image, required this.name});
}

final specialistModel = [
  SpecialistModel(image: 'dental', name: 'Dentist'),
  SpecialistModel(image: 'eye', name: 'Optometrist'),
  SpecialistModel(image: 'ent', name: 'ENT'),
  SpecialistModel(image: 'brain', name: 'Neurologist'),
  SpecialistModel(image: 'heart', name: 'Cardiologist'),
  SpecialistModel(image: 'foot', name: 'Orthopedic'),
  SpecialistModel(image: 'tone_baby', name: 'Pediatrician'),
  SpecialistModel(image: 'hair_fill', name: 'Dermatologist'),
  SpecialistModel(image: 'lungs', name: 'Pulmonologist')
];

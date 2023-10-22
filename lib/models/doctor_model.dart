class DoctorModel {
  final String name;
  final String image;
  final String education;
  final String specialist;
  final String rating;
  final String location;

  DoctorModel(
      {required this.name,
      required this.image,
      required this.education,
      required this.specialist,
      required this.rating,
      required this.location});
}

final doctorModel = [
  DoctorModel(
      name: 'Dr. Jaya Lakshmi',
      image: 'doctor_2',
      education: 'M.S.(ENT), D.L.O',
      specialist: 'ENT Specialist',
      rating: '4.5',
      location: 'West Mambalam, chennai'),
  DoctorModel(
      name: 'Dr. Vijay Kumar',
      image: 'doctor_3',
      education: 'M.B.B.S, D.L.O',
      specialist: 'ENT Specialist',
      rating: '4.0',
      location: 'Kodambakkam, chennai'),
  DoctorModel(
      name: 'Dr. Siva Ram Krishnan',
      image: 'doctor_4',
      education: 'M.B.B.S, D.L.O',
      specialist: 'ENT Specialist',
      rating: '4.7',
      location: 'West Mambalam, chennai'),
  DoctorModel(
      name: 'Dr. Radha Shree',
      image: 'doctor_5',
      education: 'M.S.(ENT), D.L.O',
      specialist: 'ENT Specialist',
      rating: '4.5',
      location: 'West Mambalam, chennai'),
  DoctorModel(
      name: 'Dr. Ravi Kumar',
      image: 'doctor_6',
      education: 'M.S.(ENT), D.L.O',
      specialist: 'ENT Specialist',
      rating: '4.5',
      location: 'West Mambalam, chennai'),
  DoctorModel(
      name: 'Dr. Abhishek Raaja',
      image: 'doctor_7',
      education: 'M.S.(ENT), D.L.O',
      specialist: 'ENT Specialist',
      rating: '4.5',
      location: 'West Mambalam, chennai'),
];

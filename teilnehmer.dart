class Participant {
  final String lastname;
  final String firstname;
  final double? avgGrade;
  final int birthDay;
  final int birthMonth;
  final int birthYear;
  final int age;
  final bool? hasPrevExpercience;

  Participant({
    required this.lastname,
    required this.firstname,
    this.avgGrade,
    required this.birthDay,
    required this.birthMonth,
    required this.birthYear,
    required this.age,
    this.hasPrevExpercience,
  });
}

enum Gender {
  female('Female'),
  male('Male'),
  diverse('Diverse'),
  skip('No answer');
  
  final String label;
  const Gender(this.label);
}


class Participant {
  final String lastname;
  final String firstname;
  final Gender gender;
  final int id;

  Participant({
    required this.lastname,
    required this.firstname,
    required this.gender,
    required this.id
  });
}

class Course {
  String courseName;
  final List<Participant> participants;

  Course(this.courseName, this.participants);
}

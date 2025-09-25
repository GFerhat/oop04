import 'teilnehmer.dart';

void main() {
  final participant1 = Participant(
    lastname: "Ali",
    firstname: "Mohammed",
    avgGrade: 2.2,
    birthDay: 28,
    birthMonth: 6,
    birthYear: 1999,
    age: 26,
  );

  final participant1Bday = birthdayFormatter(
    participant1.birthDay,
    participant1.birthMonth,
    participant1.birthYear,
  );

  print(participant1Bday);

  final participant2 = Participant(
    lastname: "der dreckige",
    firstname: "Dan",
    birthDay: 5,
    birthMonth: 1,
    birthYear: 2000,
    age: 25,
    // hasPrevExpercience: false,
  );
  print("${participant2.lastname} ${participant2.firstname}");
  print(participant2.hasPrevExpercience == null 
    ? "Keine Angabe zu Vorerfahrungen"
    : participant2.hasPrevExpercience == true
        ? "hat bereits Vorerfahrungen"
        : "hat keine Vorerfahrungen");
}

birthdayFormatter(int day, int month, int year) {
  day.toString().padLeft(2, '0');
  month.toString().padLeft(2, '0');

  final String birthday = "${day}.${month}.${year}";
  return birthday;
}

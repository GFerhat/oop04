import 'dart:math';

import 'teilnehmer.dart';

void main() {
  Set <int> participantsId={};


  final participant1 = Participant(
    lastname: "der dreckige",
    firstname: "Dan",
    gender: Gender.male,
    id: randomizer(participantsId)
  );
  final participant2 = Participant(
    lastname: "der saubere",
    firstname: "Dan",
    gender: Gender.male,
    id: randomizer(participantsId)
  );
final myCourse = Course('Lernsituation', [participant1, participant2]);
print(myCourse.participants[0].id);
print(myCourse.participants[1].id);
print(participantsId);

}

int randomizer(Set <int> participantsId){
  int id=0;
  do {id = Random().nextInt(100000)+100000; } 
  while (participantsId.contains(id));
  participantsId.add(id);
  return id;
}


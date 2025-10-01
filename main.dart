import 'AccessIdGenerator.dart';

void main() {
  AccessIdGenerator.initialize({});
  List<Participant> participants = [];
  for (var i = 0; i < 11; i++) {
    final newParticipant = Participant(
      lastname: "der dreckige",
      firstname: "Dan",
      gender: Gender.male,
      accessId: AccessIdGenerator.genNewId(),
    );
    participants.add(newParticipant);
    print(newParticipant.accessId);
  }
}

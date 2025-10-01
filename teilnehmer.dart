part of 'AccessIdGenerator.dart';

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
  final AccessId accessId;
  Participant({
    required this.lastname,
    required this.firstname,
    required this.gender,
    required this.accessId,
  });
}

class AccessId {
  int get accessId => _accessId;
  final int _accessId;

  AccessId._(this._accessId);

  @override
  bool operator ==(Object other) {
    if (other is! AccessId) return false;
    if (_accessId != other._accessId) return false;
    return true;
  }

  @override
  int get hashCode => _accessId.hashCode;

  @override
  String toString() {
    return "AccessId($_accessId)";
  }
}

class Course {
  String courseName;
  final List<Participant> participants;

  Course(this.courseName, this.participants);
}

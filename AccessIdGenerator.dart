import 'dart:math';
part 'teilnehmer.dart';

abstract class AccessIdGenerator {
  static Set<AccessId> usedIdsSet = {};
  static bool isInitialized = false;
  static initialize(Set<AccessId> usedIds) {
    assert(!isInitialized, "Already Initialized");
    usedIdsSet = usedIds;
    isInitialized = true;
  }

  static AccessId _getRandomizedId() {
    AccessId? accessId;
    assert(usedIdsSet.length < 10, "Set is full");
    do {
      final accessIdInt = Random().nextInt(10) + 10;
      accessId = AccessId._(accessIdInt);
    } while (usedIdsSet.contains(accessId));
    return accessId;
  }

  static genNewId() {
    final newId = _getRandomizedId();
    usedIdsSet.add(newId);
    print(usedIdsSet);
    return newId;
  }
}

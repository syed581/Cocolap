import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class OederlistRecord extends FirestoreRecord {
  OederlistRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "brew" field.
  String? _brew;
  String get brew => _brew ?? '';
  bool hasBrew() => _brew != null;

  // "sedr" field.
  String? _sedr;
  String get sedr => _sedr ?? '';
  bool hasSedr() => _sedr != null;

  // "cghu" field.
  String? _cghu;
  String get cghu => _cghu ?? '';
  bool hasCghu() => _cghu != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "timer" field.
  DateTime? _timer;
  DateTime? get timer => _timer;
  bool hasTimer() => _timer != null;

  // "stuts" field.
  bool? _stuts;
  bool get stuts => _stuts ?? false;
  bool hasStuts() => _stuts != null;

  // "ordernumber" field.
  int? _ordernumber;
  int get ordernumber => _ordernumber ?? 0;
  bool hasOrdernumber() => _ordernumber != null;

  // "hotbrew" field.
  String? _hotbrew;
  String get hotbrew => _hotbrew ?? '';
  bool hasHotbrew() => _hotbrew != null;

  // "milk" field.
  String? _milk;
  String get milk => _milk ?? '';
  bool hasMilk() => _milk != null;

  void _initializeFields() {
    _brew = snapshotData['brew'] as String?;
    _sedr = snapshotData['sedr'] as String?;
    _cghu = snapshotData['cghu'] as String?;
    _name = snapshotData['name'] as String?;
    _timer = snapshotData['timer'] as DateTime?;
    _stuts = snapshotData['stuts'] as bool?;
    _ordernumber = castToType<int>(snapshotData['ordernumber']);
    _hotbrew = snapshotData['hotbrew'] as String?;
    _milk = snapshotData['milk'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('oederlist');

  static Stream<OederlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OederlistRecord.fromSnapshot(s));

  static Future<OederlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OederlistRecord.fromSnapshot(s));

  static OederlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OederlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OederlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OederlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OederlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OederlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOederlistRecordData({
  String? brew,
  String? sedr,
  String? cghu,
  String? name,
  DateTime? timer,
  bool? stuts,
  int? ordernumber,
  String? hotbrew,
  String? milk,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'brew': brew,
      'sedr': sedr,
      'cghu': cghu,
      'name': name,
      'timer': timer,
      'stuts': stuts,
      'ordernumber': ordernumber,
      'hotbrew': hotbrew,
      'milk': milk,
    }.withoutNulls,
  );

  return firestoreData;
}

class OederlistRecordDocumentEquality implements Equality<OederlistRecord> {
  const OederlistRecordDocumentEquality();

  @override
  bool equals(OederlistRecord? e1, OederlistRecord? e2) {
    return e1?.brew == e2?.brew &&
        e1?.sedr == e2?.sedr &&
        e1?.cghu == e2?.cghu &&
        e1?.name == e2?.name &&
        e1?.timer == e2?.timer &&
        e1?.stuts == e2?.stuts &&
        e1?.ordernumber == e2?.ordernumber &&
        e1?.hotbrew == e2?.hotbrew &&
        e1?.milk == e2?.milk;
  }

  @override
  int hash(OederlistRecord? e) => const ListEquality().hash([
        e?.brew,
        e?.sedr,
        e?.cghu,
        e?.name,
        e?.timer,
        e?.stuts,
        e?.ordernumber,
        e?.hotbrew,
        e?.milk
      ]);

  @override
  bool isValidKey(Object? o) => o is OederlistRecord;
}

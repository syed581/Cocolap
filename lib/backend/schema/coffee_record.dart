import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CoffeeRecord extends FirestoreRecord {
  CoffeeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "coffename" field.
  String? _coffename;
  String get coffename => _coffename ?? '';
  bool hasCoffename() => _coffename != null;

  // "coffeprize" field.
  double? _coffeprize;
  double get coffeprize => _coffeprize ?? 0.0;
  bool hasCoffeprize() => _coffeprize != null;

  // "coffeimage" field.
  String? _coffeimage;
  String get coffeimage => _coffeimage ?? '';
  bool hasCoffeimage() => _coffeimage != null;

  // "milkcnf" field.
  bool? _milkcnf;
  bool get milkcnf => _milkcnf ?? false;
  bool hasMilkcnf() => _milkcnf != null;

  void _initializeFields() {
    _coffename = snapshotData['coffename'] as String?;
    _coffeprize = castToType<double>(snapshotData['coffeprize']);
    _coffeimage = snapshotData['coffeimage'] as String?;
    _milkcnf = snapshotData['milkcnf'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coffee');

  static Stream<CoffeeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoffeeRecord.fromSnapshot(s));

  static Future<CoffeeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoffeeRecord.fromSnapshot(s));

  static CoffeeRecord fromSnapshot(DocumentSnapshot snapshot) => CoffeeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoffeeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoffeeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoffeeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoffeeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoffeeRecordData({
  String? coffename,
  double? coffeprize,
  String? coffeimage,
  bool? milkcnf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'coffename': coffename,
      'coffeprize': coffeprize,
      'coffeimage': coffeimage,
      'milkcnf': milkcnf,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoffeeRecordDocumentEquality implements Equality<CoffeeRecord> {
  const CoffeeRecordDocumentEquality();

  @override
  bool equals(CoffeeRecord? e1, CoffeeRecord? e2) {
    return e1?.coffename == e2?.coffename &&
        e1?.coffeprize == e2?.coffeprize &&
        e1?.coffeimage == e2?.coffeimage &&
        e1?.milkcnf == e2?.milkcnf;
  }

  @override
  int hash(CoffeeRecord? e) => const ListEquality()
      .hash([e?.coffename, e?.coffeprize, e?.coffeimage, e?.milkcnf]);

  @override
  bool isValidKey(Object? o) => o is CoffeeRecord;
}

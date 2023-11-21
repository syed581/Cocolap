import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MilkRecord extends FirestoreRecord {
  MilkRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "milkimage" field.
  String? _milkimage;
  String get milkimage => _milkimage ?? '';
  bool hasMilkimage() => _milkimage != null;

  // "milkname" field.
  String? _milkname;
  String get milkname => _milkname ?? '';
  bool hasMilkname() => _milkname != null;

  void _initializeFields() {
    _milkimage = snapshotData['milkimage'] as String?;
    _milkname = snapshotData['milkname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('milk');

  static Stream<MilkRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MilkRecord.fromSnapshot(s));

  static Future<MilkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MilkRecord.fromSnapshot(s));

  static MilkRecord fromSnapshot(DocumentSnapshot snapshot) => MilkRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MilkRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MilkRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MilkRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MilkRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMilkRecordData({
  String? milkimage,
  String? milkname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'milkimage': milkimage,
      'milkname': milkname,
    }.withoutNulls,
  );

  return firestoreData;
}

class MilkRecordDocumentEquality implements Equality<MilkRecord> {
  const MilkRecordDocumentEquality();

  @override
  bool equals(MilkRecord? e1, MilkRecord? e2) {
    return e1?.milkimage == e2?.milkimage && e1?.milkname == e2?.milkname;
  }

  @override
  int hash(MilkRecord? e) =>
      const ListEquality().hash([e?.milkimage, e?.milkname]);

  @override
  bool isValidKey(Object? o) => o is MilkRecord;
}

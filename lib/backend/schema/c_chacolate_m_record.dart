import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CChacolateMRecord extends FirestoreRecord {
  CChacolateMRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cCimage" field.
  String? _cCimage;
  String get cCimage => _cCimage ?? '';
  bool hasCCimage() => _cCimage != null;

  // "cCname" field.
  String? _cCname;
  String get cCname => _cCname ?? '';
  bool hasCCname() => _cCname != null;

  // "cCprize" field.
  double? _cCprize;
  double get cCprize => _cCprize ?? 0.0;
  bool hasCCprize() => _cCprize != null;

  void _initializeFields() {
    _cCimage = snapshotData['cCimage'] as String?;
    _cCname = snapshotData['cCname'] as String?;
    _cCprize = castToType<double>(snapshotData['cCprize']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cChacolateM');

  static Stream<CChacolateMRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CChacolateMRecord.fromSnapshot(s));

  static Future<CChacolateMRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CChacolateMRecord.fromSnapshot(s));

  static CChacolateMRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CChacolateMRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CChacolateMRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CChacolateMRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CChacolateMRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CChacolateMRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCChacolateMRecordData({
  String? cCimage,
  String? cCname,
  double? cCprize,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cCimage': cCimage,
      'cCname': cCname,
      'cCprize': cCprize,
    }.withoutNulls,
  );

  return firestoreData;
}

class CChacolateMRecordDocumentEquality implements Equality<CChacolateMRecord> {
  const CChacolateMRecordDocumentEquality();

  @override
  bool equals(CChacolateMRecord? e1, CChacolateMRecord? e2) {
    return e1?.cCimage == e2?.cCimage &&
        e1?.cCname == e2?.cCname &&
        e1?.cCprize == e2?.cCprize;
  }

  @override
  int hash(CChacolateMRecord? e) =>
      const ListEquality().hash([e?.cCimage, e?.cCname, e?.cCprize]);

  @override
  bool isValidKey(Object? o) => o is CChacolateMRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CBrewMRecord extends FirestoreRecord {
  CBrewMRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cBimage" field.
  String? _cBimage;
  String get cBimage => _cBimage ?? '';
  bool hasCBimage() => _cBimage != null;

  // "cBname" field.
  String? _cBname;
  String get cBname => _cBname ?? '';
  bool hasCBname() => _cBname != null;

  // "cBvedio" field.
  String? _cBvedio;
  String get cBvedio => _cBvedio ?? '';
  bool hasCBvedio() => _cBvedio != null;

  void _initializeFields() {
    _cBimage = snapshotData['cBimage'] as String?;
    _cBname = snapshotData['cBname'] as String?;
    _cBvedio = snapshotData['cBvedio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cBrewM');

  static Stream<CBrewMRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CBrewMRecord.fromSnapshot(s));

  static Future<CBrewMRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CBrewMRecord.fromSnapshot(s));

  static CBrewMRecord fromSnapshot(DocumentSnapshot snapshot) => CBrewMRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CBrewMRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CBrewMRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CBrewMRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CBrewMRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCBrewMRecordData({
  String? cBimage,
  String? cBname,
  String? cBvedio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cBimage': cBimage,
      'cBname': cBname,
      'cBvedio': cBvedio,
    }.withoutNulls,
  );

  return firestoreData;
}

class CBrewMRecordDocumentEquality implements Equality<CBrewMRecord> {
  const CBrewMRecordDocumentEquality();

  @override
  bool equals(CBrewMRecord? e1, CBrewMRecord? e2) {
    return e1?.cBimage == e2?.cBimage &&
        e1?.cBname == e2?.cBname &&
        e1?.cBvedio == e2?.cBvedio;
  }

  @override
  int hash(CBrewMRecord? e) =>
      const ListEquality().hash([e?.cBimage, e?.cBname, e?.cBvedio]);

  @override
  bool isValidKey(Object? o) => o is CBrewMRecord;
}

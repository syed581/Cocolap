import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CSeedMRecord extends FirestoreRecord {
  CSeedMRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cSimage" field.
  String? _cSimage;
  String get cSimage => _cSimage ?? '';
  bool hasCSimage() => _cSimage != null;

  // "cSname" field.
  String? _cSname;
  String get cSname => _cSname ?? '';
  bool hasCSname() => _cSname != null;

  // "cSprize" field.
  double? _cSprize;
  double get cSprize => _cSprize ?? 0.0;
  bool hasCSprize() => _cSprize != null;

  // "cSvedio" field.
  String? _cSvedio;
  String get cSvedio => _cSvedio ?? '';
  bool hasCSvedio() => _cSvedio != null;

  // "Favt" field.
  String? _favt;
  String get favt => _favt ?? '';
  bool hasFavt() => _favt != null;

  void _initializeFields() {
    _cSimage = snapshotData['cSimage'] as String?;
    _cSname = snapshotData['cSname'] as String?;
    _cSprize = castToType<double>(snapshotData['cSprize']);
    _cSvedio = snapshotData['cSvedio'] as String?;
    _favt = snapshotData['Favt'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cSeedM');

  static Stream<CSeedMRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CSeedMRecord.fromSnapshot(s));

  static Future<CSeedMRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CSeedMRecord.fromSnapshot(s));

  static CSeedMRecord fromSnapshot(DocumentSnapshot snapshot) => CSeedMRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CSeedMRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CSeedMRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CSeedMRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CSeedMRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCSeedMRecordData({
  String? cSimage,
  String? cSname,
  double? cSprize,
  String? cSvedio,
  String? favt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cSimage': cSimage,
      'cSname': cSname,
      'cSprize': cSprize,
      'cSvedio': cSvedio,
      'Favt': favt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CSeedMRecordDocumentEquality implements Equality<CSeedMRecord> {
  const CSeedMRecordDocumentEquality();

  @override
  bool equals(CSeedMRecord? e1, CSeedMRecord? e2) {
    return e1?.cSimage == e2?.cSimage &&
        e1?.cSname == e2?.cSname &&
        e1?.cSprize == e2?.cSprize &&
        e1?.cSvedio == e2?.cSvedio &&
        e1?.favt == e2?.favt;
  }

  @override
  int hash(CSeedMRecord? e) => const ListEquality()
      .hash([e?.cSimage, e?.cSname, e?.cSprize, e?.cSvedio, e?.favt]);

  @override
  bool isValidKey(Object? o) => o is CSeedMRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class Oeder3Record extends FirestoreRecord {
  Oeder3Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "choname" field.
  String? _choname;
  String get choname => _choname ?? '';
  bool hasChoname() => _choname != null;

  // "choimage" field.
  String? _choimage;
  String get choimage => _choimage ?? '';
  bool hasChoimage() => _choimage != null;

  void _initializeFields() {
    _choname = snapshotData['choname'] as String?;
    _choimage = snapshotData['choimage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('oeder3');

  static Stream<Oeder3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Oeder3Record.fromSnapshot(s));

  static Future<Oeder3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Oeder3Record.fromSnapshot(s));

  static Oeder3Record fromSnapshot(DocumentSnapshot snapshot) => Oeder3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Oeder3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Oeder3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Oeder3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Oeder3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOeder3RecordData({
  String? choname,
  String? choimage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'choname': choname,
      'choimage': choimage,
    }.withoutNulls,
  );

  return firestoreData;
}

class Oeder3RecordDocumentEquality implements Equality<Oeder3Record> {
  const Oeder3RecordDocumentEquality();

  @override
  bool equals(Oeder3Record? e1, Oeder3Record? e2) {
    return e1?.choname == e2?.choname && e1?.choimage == e2?.choimage;
  }

  @override
  int hash(Oeder3Record? e) =>
      const ListEquality().hash([e?.choname, e?.choimage]);

  @override
  bool isValidKey(Object? o) => o is Oeder3Record;
}

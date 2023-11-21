import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class Order2Record extends FirestoreRecord {
  Order2Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "seedname" field.
  String? _seedname;
  String get seedname => _seedname ?? '';
  bool hasSeedname() => _seedname != null;

  // "seedimage" field.
  String? _seedimage;
  String get seedimage => _seedimage ?? '';
  bool hasSeedimage() => _seedimage != null;

  void _initializeFields() {
    _seedname = snapshotData['seedname'] as String?;
    _seedimage = snapshotData['seedimage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order2');

  static Stream<Order2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Order2Record.fromSnapshot(s));

  static Future<Order2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Order2Record.fromSnapshot(s));

  static Order2Record fromSnapshot(DocumentSnapshot snapshot) => Order2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Order2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Order2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Order2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Order2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrder2RecordData({
  String? seedname,
  String? seedimage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'seedname': seedname,
      'seedimage': seedimage,
    }.withoutNulls,
  );

  return firestoreData;
}

class Order2RecordDocumentEquality implements Equality<Order2Record> {
  const Order2RecordDocumentEquality();

  @override
  bool equals(Order2Record? e1, Order2Record? e2) {
    return e1?.seedname == e2?.seedname && e1?.seedimage == e2?.seedimage;
  }

  @override
  int hash(Order2Record? e) =>
      const ListEquality().hash([e?.seedname, e?.seedimage]);

  @override
  bool isValidKey(Object? o) => o is Order2Record;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class Order1Record extends FirestoreRecord {
  Order1Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "BRname" field.
  String? _bRname;
  String get bRname => _bRname ?? '';
  bool hasBRname() => _bRname != null;

  // "BRimage" field.
  String? _bRimage;
  String get bRimage => _bRimage ?? '';
  bool hasBRimage() => _bRimage != null;

  // "byeremail" field.
  String? _byeremail;
  String get byeremail => _byeremail ?? '';
  bool hasByeremail() => _byeremail != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "numer" field.
  int? _numer;
  int get numer => _numer ?? 0;
  bool hasNumer() => _numer != null;

  // "username" field.
  DocumentReference? _username;
  DocumentReference? get username => _username;
  bool hasUsername() => _username != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "fgty" field.
  DocumentReference? _fgty;
  DocumentReference? get fgty => _fgty;
  bool hasFgty() => _fgty != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "seed" field.
  String? _seed;
  String get seed => _seed ?? '';
  bool hasSeed() => _seed != null;

  // "cholalate" field.
  String? _cholalate;
  String get cholalate => _cholalate ?? '';
  bool hasCholalate() => _cholalate != null;

  // "brew" field.
  String? _brew;
  String get brew => _brew ?? '';
  bool hasBrew() => _brew != null;

  void _initializeFields() {
    _bRname = snapshotData['BRname'] as String?;
    _bRimage = snapshotData['BRimage'] as String?;
    _byeremail = snapshotData['byeremail'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _numer = castToType<int>(snapshotData['numer']);
    _username = snapshotData['username'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _fgty = snapshotData['fgty'] as DocumentReference?;
    _status = snapshotData['status'] as bool?;
    _seed = snapshotData['seed'] as String?;
    _cholalate = snapshotData['cholalate'] as String?;
    _brew = snapshotData['brew'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order1');

  static Stream<Order1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Order1Record.fromSnapshot(s));

  static Future<Order1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Order1Record.fromSnapshot(s));

  static Order1Record fromSnapshot(DocumentSnapshot snapshot) => Order1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Order1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Order1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Order1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Order1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrder1RecordData({
  String? bRname,
  String? bRimage,
  String? byeremail,
  DateTime? time,
  int? numer,
  DocumentReference? username,
  String? name,
  DocumentReference? fgty,
  bool? status,
  String? seed,
  String? cholalate,
  String? brew,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'BRname': bRname,
      'BRimage': bRimage,
      'byeremail': byeremail,
      'time': time,
      'numer': numer,
      'username': username,
      'name': name,
      'fgty': fgty,
      'status': status,
      'seed': seed,
      'cholalate': cholalate,
      'brew': brew,
    }.withoutNulls,
  );

  return firestoreData;
}

class Order1RecordDocumentEquality implements Equality<Order1Record> {
  const Order1RecordDocumentEquality();

  @override
  bool equals(Order1Record? e1, Order1Record? e2) {
    return e1?.bRname == e2?.bRname &&
        e1?.bRimage == e2?.bRimage &&
        e1?.byeremail == e2?.byeremail &&
        e1?.time == e2?.time &&
        e1?.numer == e2?.numer &&
        e1?.username == e2?.username &&
        e1?.name == e2?.name &&
        e1?.fgty == e2?.fgty &&
        e1?.status == e2?.status &&
        e1?.seed == e2?.seed &&
        e1?.cholalate == e2?.cholalate &&
        e1?.brew == e2?.brew;
  }

  @override
  int hash(Order1Record? e) => const ListEquality().hash([
        e?.bRname,
        e?.bRimage,
        e?.byeremail,
        e?.time,
        e?.numer,
        e?.username,
        e?.name,
        e?.fgty,
        e?.status,
        e?.seed,
        e?.cholalate,
        e?.brew
      ]);

  @override
  bool isValidKey(Object? o) => o is Order1Record;
}

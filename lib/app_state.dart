import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DocumentReference> _breMethodlist = [];
  List<DocumentReference> get breMethodlist => _breMethodlist;
  set breMethodlist(List<DocumentReference> value) {
    _breMethodlist = value;
  }

  void addToBreMethodlist(DocumentReference value) {
    _breMethodlist.add(value);
  }

  void removeFromBreMethodlist(DocumentReference value) {
    _breMethodlist.remove(value);
  }

  void removeAtIndexFromBreMethodlist(int index) {
    _breMethodlist.removeAt(index);
  }

  void updateBreMethodlistAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _breMethodlist[index] = updateFn(_breMethodlist[index]);
  }

  void insertAtIndexInBreMethodlist(int index, DocumentReference value) {
    _breMethodlist.insert(index, value);
  }

  List<DocumentReference> _seedlist = [];
  List<DocumentReference> get seedlist => _seedlist;
  set seedlist(List<DocumentReference> value) {
    _seedlist = value;
  }

  void addToSeedlist(DocumentReference value) {
    _seedlist.add(value);
  }

  void removeFromSeedlist(DocumentReference value) {
    _seedlist.remove(value);
  }

  void removeAtIndexFromSeedlist(int index) {
    _seedlist.removeAt(index);
  }

  void updateSeedlistAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _seedlist[index] = updateFn(_seedlist[index]);
  }

  void insertAtIndexInSeedlist(int index, DocumentReference value) {
    _seedlist.insert(index, value);
  }

  List<DocumentReference> _cholist = [];
  List<DocumentReference> get cholist => _cholist;
  set cholist(List<DocumentReference> value) {
    _cholist = value;
  }

  void addToCholist(DocumentReference value) {
    _cholist.add(value);
  }

  void removeFromCholist(DocumentReference value) {
    _cholist.remove(value);
  }

  void removeAtIndexFromCholist(int index) {
    _cholist.removeAt(index);
  }

  void updateCholistAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _cholist[index] = updateFn(_cholist[index]);
  }

  void insertAtIndexInCholist(int index, DocumentReference value) {
    _cholist.insert(index, value);
  }

  int _number = 1;
  int get number => _number;
  set number(int value) {
    _number = value;
  }

  List<DocumentReference> _username = [];
  List<DocumentReference> get username => _username;
  set username(List<DocumentReference> value) {
    _username = value;
  }

  void addToUsername(DocumentReference value) {
    _username.add(value);
  }

  void removeFromUsername(DocumentReference value) {
    _username.remove(value);
  }

  void removeAtIndexFromUsername(int index) {
    _username.removeAt(index);
  }

  void updateUsernameAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _username[index] = updateFn(_username[index]);
  }

  void insertAtIndexInUsername(int index, DocumentReference value) {
    _username.insert(index, value);
  }

  List<String> _udty = [];
  List<String> get udty => _udty;
  set udty(List<String> value) {
    _udty = value;
  }

  void addToUdty(String value) {
    _udty.add(value);
  }

  void removeFromUdty(String value) {
    _udty.remove(value);
  }

  void removeAtIndexFromUdty(int index) {
    _udty.removeAt(index);
  }

  void updateUdtyAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _udty[index] = updateFn(_udty[index]);
  }

  void insertAtIndexInUdty(int index, String value) {
    _udty.insert(index, value);
  }

  List<String> _stutud = [];
  List<String> get stutud => _stutud;
  set stutud(List<String> value) {
    _stutud = value;
  }

  void addToStutud(String value) {
    _stutud.add(value);
  }

  void removeFromStutud(String value) {
    _stutud.remove(value);
  }

  void removeAtIndexFromStutud(int index) {
    _stutud.removeAt(index);
  }

  void updateStutudAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _stutud[index] = updateFn(_stutud[index]);
  }

  void insertAtIndexInStutud(int index, String value) {
    _stutud.insert(index, value);
  }

  List<String> _cgugt = [];
  List<String> get cgugt => _cgugt;
  set cgugt(List<String> value) {
    _cgugt = value;
  }

  void addToCgugt(String value) {
    _cgugt.add(value);
  }

  void removeFromCgugt(String value) {
    _cgugt.remove(value);
  }

  void removeAtIndexFromCgugt(int index) {
    _cgugt.removeAt(index);
  }

  void updateCgugtAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _cgugt[index] = updateFn(_cgugt[index]);
  }

  void insertAtIndexInCgugt(int index, String value) {
    _cgugt.insert(index, value);
  }

  List<String> _seddrt = [];
  List<String> get seddrt => _seddrt;
  set seddrt(List<String> value) {
    _seddrt = value;
  }

  void addToSeddrt(String value) {
    _seddrt.add(value);
  }

  void removeFromSeddrt(String value) {
    _seddrt.remove(value);
  }

  void removeAtIndexFromSeddrt(int index) {
    _seddrt.removeAt(index);
  }

  void updateSeddrtAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _seddrt[index] = updateFn(_seddrt[index]);
  }

  void insertAtIndexInSeddrt(int index, String value) {
    _seddrt.insert(index, value);
  }

  List<String> _cghoo = [];
  List<String> get cghoo => _cghoo;
  set cghoo(List<String> value) {
    _cghoo = value;
  }

  void addToCghoo(String value) {
    _cghoo.add(value);
  }

  void removeFromCghoo(String value) {
    _cghoo.remove(value);
  }

  void removeAtIndexFromCghoo(int index) {
    _cghoo.removeAt(index);
  }

  void updateCghooAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _cghoo[index] = updateFn(_cghoo[index]);
  }

  void insertAtIndexInCghoo(int index, String value) {
    _cghoo.insert(index, value);
  }

  List<bool> _stutts = [];
  List<bool> get stutts => _stutts;
  set stutts(List<bool> value) {
    _stutts = value;
  }

  void addToStutts(bool value) {
    _stutts.add(value);
  }

  void removeFromStutts(bool value) {
    _stutts.remove(value);
  }

  void removeAtIndexFromStutts(int index) {
    _stutts.removeAt(index);
  }

  void updateStuttsAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    _stutts[index] = updateFn(_stutts[index]);
  }

  void insertAtIndexInStutts(int index, bool value) {
    _stutts.insert(index, value);
  }

  int _lastnumber = 1;
  int get lastnumber => _lastnumber;
  set lastnumber(int value) {
    _lastnumber = value;
  }

  int _comporderr = 0;
  int get comporderr => _comporderr;
  set comporderr(int value) {
    _comporderr = value;
  }

  List<DocumentReference> _coffee = [];
  List<DocumentReference> get coffee => _coffee;
  set coffee(List<DocumentReference> value) {
    _coffee = value;
  }

  void addToCoffee(DocumentReference value) {
    _coffee.add(value);
  }

  void removeFromCoffee(DocumentReference value) {
    _coffee.remove(value);
  }

  void removeAtIndexFromCoffee(int index) {
    _coffee.removeAt(index);
  }

  void updateCoffeeAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _coffee[index] = updateFn(_coffee[index]);
  }

  void insertAtIndexInCoffee(int index, DocumentReference value) {
    _coffee.insert(index, value);
  }

  List<DocumentReference> _milkht = [];
  List<DocumentReference> get milkht => _milkht;
  set milkht(List<DocumentReference> value) {
    _milkht = value;
  }

  void addToMilkht(DocumentReference value) {
    _milkht.add(value);
  }

  void removeFromMilkht(DocumentReference value) {
    _milkht.remove(value);
  }

  void removeAtIndexFromMilkht(int index) {
    _milkht.removeAt(index);
  }

  void updateMilkhtAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _milkht[index] = updateFn(_milkht[index]);
  }

  void insertAtIndexInMilkht(int index, DocumentReference value) {
    _milkht.insert(index, value);
  }

  List<String> _hotcofe = [];
  List<String> get hotcofe => _hotcofe;
  set hotcofe(List<String> value) {
    _hotcofe = value;
  }

  void addToHotcofe(String value) {
    _hotcofe.add(value);
  }

  void removeFromHotcofe(String value) {
    _hotcofe.remove(value);
  }

  void removeAtIndexFromHotcofe(int index) {
    _hotcofe.removeAt(index);
  }

  void updateHotcofeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _hotcofe[index] = updateFn(_hotcofe[index]);
  }

  void insertAtIndexInHotcofe(int index, String value) {
    _hotcofe.insert(index, value);
  }

  List<String> _milkco = [];
  List<String> get milkco => _milkco;
  set milkco(List<String> value) {
    _milkco = value;
  }

  void addToMilkco(String value) {
    _milkco.add(value);
  }

  void removeFromMilkco(String value) {
    _milkco.remove(value);
  }

  void removeAtIndexFromMilkco(int index) {
    _milkco.removeAt(index);
  }

  void updateMilkcoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _milkco[index] = updateFn(_milkco[index]);
  }

  void insertAtIndexInMilkco(int index, String value) {
    _milkco.insert(index, value);
  }

  List<String> _milkimage = [];
  List<String> get milkimage => _milkimage;
  set milkimage(List<String> value) {
    _milkimage = value;
  }

  void addToMilkimage(String value) {
    _milkimage.add(value);
  }

  void removeFromMilkimage(String value) {
    _milkimage.remove(value);
  }

  void removeAtIndexFromMilkimage(int index) {
    _milkimage.removeAt(index);
  }

  void updateMilkimageAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _milkimage[index] = updateFn(_milkimage[index]);
  }

  void insertAtIndexInMilkimage(int index, String value) {
    _milkimage.insert(index, value);
  }

  int _ongoingnumber = 0;
  int get ongoingnumber => _ongoingnumber;
  set ongoingnumber(int value) {
    _ongoingnumber = value;
  }

  List<String> _Flavourprofile = [];
  List<String> get Flavourprofile => _Flavourprofile;
  set Flavourprofile(List<String> value) {
    _Flavourprofile = value;
  }

  void addToFlavourprofile(String value) {
    _Flavourprofile.add(value);
  }

  void removeFromFlavourprofile(String value) {
    _Flavourprofile.remove(value);
  }

  void removeAtIndexFromFlavourprofile(int index) {
    _Flavourprofile.removeAt(index);
  }

  void updateFlavourprofileAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Flavourprofile[index] = updateFn(_Flavourprofile[index]);
  }

  void insertAtIndexInFlavourprofile(int index, String value) {
    _Flavourprofile.insert(index, value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

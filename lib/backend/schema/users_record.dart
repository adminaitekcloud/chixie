import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "isFollowed" field.
  bool? _isFollowed;
  bool get isFollowed => _isFollowed ?? false;
  bool hasIsFollowed() => _isFollowed != null;

  // "cxt" field.
  int? _cxt;
  int get cxt => _cxt ?? 0;
  bool hasCxt() => _cxt != null;

  // "walletaddress" field.
  String? _walletaddress;
  String get walletaddress => _walletaddress ?? '';
  bool hasWalletaddress() => _walletaddress != null;

  // "sponsor_id" field.
  int? _sponsorId;
  int get sponsorId => _sponsorId ?? 0;
  bool hasSponsorId() => _sponsorId != null;

  // "refferral_id" field.
  int? _refferralId;
  int get refferralId => _refferralId ?? 0;
  bool hasRefferralId() => _refferralId != null;

  // "cxtBalance" field.
  int? _cxtBalance;
  int get cxtBalance => _cxtBalance ?? 0;
  bool hasCxtBalance() => _cxtBalance != null;

  // "currentcxtBalance" field.
  int? _currentcxtBalance;
  int get currentcxtBalance => _currentcxtBalance ?? 0;
  bool hasCurrentcxtBalance() => _currentcxtBalance != null;

  // "dogs" field.
  List<DocumentReference>? _dogs;
  List<DocumentReference> get dogs => _dogs ?? const [];
  bool hasDogs() => _dogs != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userName = snapshotData['userName'] as String?;
    _bio = snapshotData['bio'] as String?;
    _isFollowed = snapshotData['isFollowed'] as bool?;
    _cxt = castToType<int>(snapshotData['cxt']);
    _walletaddress = snapshotData['walletaddress'] as String?;
    _sponsorId = castToType<int>(snapshotData['sponsor_id']);
    _refferralId = castToType<int>(snapshotData['refferral_id']);
    _cxtBalance = castToType<int>(snapshotData['cxtBalance']);
    _currentcxtBalance = castToType<int>(snapshotData['currentcxtBalance']);
    _dogs = getDataList(snapshotData['dogs']);
    _admin = snapshotData['admin'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? displayName,
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? userName,
  String? bio,
  bool? isFollowed,
  int? cxt,
  String? walletaddress,
  int? sponsorId,
  int? refferralId,
  int? cxtBalance,
  int? currentcxtBalance,
  bool? admin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'userName': userName,
      'bio': bio,
      'isFollowed': isFollowed,
      'cxt': cxt,
      'walletaddress': walletaddress,
      'sponsor_id': sponsorId,
      'refferral_id': refferralId,
      'cxtBalance': cxtBalance,
      'currentcxtBalance': currentcxtBalance,
      'admin': admin,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userName == e2?.userName &&
        e1?.bio == e2?.bio &&
        e1?.isFollowed == e2?.isFollowed &&
        e1?.cxt == e2?.cxt &&
        e1?.walletaddress == e2?.walletaddress &&
        e1?.sponsorId == e2?.sponsorId &&
        e1?.refferralId == e2?.refferralId &&
        e1?.cxtBalance == e2?.cxtBalance &&
        e1?.currentcxtBalance == e2?.currentcxtBalance &&
        listEquality.equals(e1?.dogs, e2?.dogs) &&
        e1?.admin == e2?.admin;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.userName,
        e?.bio,
        e?.isFollowed,
        e?.cxt,
        e?.walletaddress,
        e?.sponsorId,
        e?.refferralId,
        e?.cxtBalance,
        e?.currentcxtBalance,
        e?.dogs,
        e?.admin
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

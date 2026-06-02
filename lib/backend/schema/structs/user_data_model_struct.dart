// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserDataModelStruct extends FFFirebaseStruct {
  UserDataModelStruct({
    String? fullname,
    String? employeeId,
    String? profileImage,
    String? dob,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fullname = fullname,
        _employeeId = employeeId,
        _profileImage = profileImage,
        _dob = dob,
        super(firestoreUtilData);

  // "fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  set fullname(String? val) => _fullname = val;

  bool hasFullname() => _fullname != null;

  // "employeeId" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  set employeeId(String? val) => _employeeId = val;

  bool hasEmployeeId() => _employeeId != null;

  // "profileImage" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  set profileImage(String? val) => _profileImage = val;

  bool hasProfileImage() => _profileImage != null;

  // "dob" field.
  String? _dob;
  String get dob => _dob ?? '';
  set dob(String? val) => _dob = val;

  bool hasDob() => _dob != null;

  static UserDataModelStruct fromMap(Map<String, dynamic> data) =>
      UserDataModelStruct(
        fullname: data['fullname'] as String?,
        employeeId: data['employeeId'] as String?,
        profileImage: data['profileImage'] as String?,
        dob: data['dob'] as String?,
      );

  static UserDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fullname': _fullname,
        'employeeId': _employeeId,
        'profileImage': _profileImage,
        'dob': _dob,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fullname': serializeParam(
          _fullname,
          ParamType.String,
        ),
        'employeeId': serializeParam(
          _employeeId,
          ParamType.String,
        ),
        'profileImage': serializeParam(
          _profileImage,
          ParamType.String,
        ),
        'dob': serializeParam(
          _dob,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDataModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataModelStruct(
        fullname: deserializeParam(
          data['fullname'],
          ParamType.String,
          false,
        ),
        employeeId: deserializeParam(
          data['employeeId'],
          ParamType.String,
          false,
        ),
        profileImage: deserializeParam(
          data['profileImage'],
          ParamType.String,
          false,
        ),
        dob: deserializeParam(
          data['dob'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataModelStruct &&
        fullname == other.fullname &&
        employeeId == other.employeeId &&
        profileImage == other.profileImage &&
        dob == other.dob;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fullname, employeeId, profileImage, dob]);
}

UserDataModelStruct createUserDataModelStruct({
  String? fullname,
  String? employeeId,
  String? profileImage,
  String? dob,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserDataModelStruct(
      fullname: fullname,
      employeeId: employeeId,
      profileImage: profileImage,
      dob: dob,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserDataModelStruct? updateUserDataModelStruct(
  UserDataModelStruct? userDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserDataModelStructData(
  Map<String, dynamic> firestoreData,
  UserDataModelStruct? userDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userDataModel == null) {
    return;
  }
  if (userDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userDataModelData =
      getUserDataModelFirestoreData(userDataModel, forFieldValue);
  final nestedData =
      userDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserDataModelFirestoreData(
  UserDataModelStruct? userDataModel, [
  bool forFieldValue = false,
]) {
  if (userDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userDataModel.toMap());

  // Add any Firestore field values
  mapToFirestore(userDataModel.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserDataModelListFirestoreData(
  List<UserDataModelStruct>? userDataModels,
) =>
    userDataModels
        ?.map((e) => getUserDataModelFirestoreData(e, true))
        .toList() ??
    [];

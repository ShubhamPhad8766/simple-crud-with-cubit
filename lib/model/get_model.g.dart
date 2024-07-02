// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetModel _$GetModelFromJson(Map<String, dynamic> json) => GetModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetModelToJson(GetModel instance) => <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalItems: (json['totalItems'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: json['pageSize'],
      totalPages: json['totalPages'],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'items': instance.items,
      'totalItems': instance.totalItems,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      the0: json['0'],
      id: json['_id'] as String?,
      groupId: (json['groupId'] as num?)?.toInt(),
      leadId: (json['leadId'] as num?)?.toInt(),
      phoneNumber: (json['phoneNumber'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$TypeEnumMap, json['type']),
      source: $enumDecodeNullable(_$SourceEnumMap, json['source']),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      tag: (json['tag'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$The0EnumEnumMap, e))
          .toList(),
      assignedTo: json['assignedTo'],
      isHandled: json['isHandled'] as bool?,
      location: json['location'] as String?,
      comments: json['comments'] as String?,
      customFields: (json['customFields'] as List<dynamic>?)
          ?.map((e) => ItemCustomField.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updateBy: (json['updateBy'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      member1: $enumDecodeNullable(_$Member1EnumMap, json['member1']),
      member1Contact: json['member1Contact'] as String?,
      member2: $enumDecodeNullable(_$Member2EnumMap, json['member2']),
      member2Contact: json['member2Contact'] as String?,
      selected: json['selected'],
      handledBy: json['handledBy'],
      tags: json['tags'] as List<dynamic>?,
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
      the1: json['1'],
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      callDate: json['callDate'] == null
          ? null
          : DateTime.parse(json['callDate'] as String),
      followUpDate: json['followUpDate'] == null
          ? null
          : DateTime.parse(json['followUpDate'] as String),
      leadCallTime: json['leadCallTime'] as String?,
      recordText: json['recordText'] as String?,
      time: json['Time'] as String?,
      index: (json['index'] as num?)?.toInt(),
      the2: $enumDecodeNullable(_$The0EnumEnumMap, json['2']),
      startDate: json['startDate'],
      endDate: json['endDate'],
      the3: json['3'] as String?,
      leadData: json['leadData'] == null
          ? null
          : LeadData.fromJson(json['leadData'] as Map<String, dynamic>),
      operatorData: (json['operatorData'] as List<dynamic>?)
          ?.map((e) => OperatorDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      templateData: json['templateData'] as List<dynamic>?,
      response: json['response'],
      customFileds: json['customFileds'],
      endTime: json['endTime'] as String?,
      specificTime: json['specificTime'] as String?,
      startTime: json['startTime'],
      timeOption: $enumDecodeNullable(_$TimeOptionEnumMap, json['timeOption']),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      '0': instance.the0,
      '_id': instance.id,
      'groupId': instance.groupId,
      'leadId': instance.leadId,
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
      'type': _$TypeEnumMap[instance.type],
      'source': _$SourceEnumMap[instance.source],
      'status': _$StatusEnumMap[instance.status],
      'tag': instance.tag?.map((e) => _$The0EnumEnumMap[e]!).toList(),
      'assignedTo': instance.assignedTo,
      'isHandled': instance.isHandled,
      'location': instance.location,
      'comments': instance.comments,
      'customFields': instance.customFields,
      'createdBy': instance.createdBy,
      'updateBy': instance.updateBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'member1': _$Member1EnumMap[instance.member1],
      'member1Contact': instance.member1Contact,
      'member2': _$Member2EnumMap[instance.member2],
      'member2Contact': instance.member2Contact,
      'selected': instance.selected,
      'handledBy': instance.handledBy,
      'tags': instance.tags,
      'updatedBy': instance.updatedBy,
      '1': instance.the1,
      'date': instance.date?.toIso8601String(),
      'callDate': instance.callDate?.toIso8601String(),
      'followUpDate': instance.followUpDate?.toIso8601String(),
      'leadCallTime': instance.leadCallTime,
      'recordText': instance.recordText,
      'Time': instance.time,
      'index': instance.index,
      '2': _$The0EnumEnumMap[instance.the2],
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      '3': instance.the3,
      'leadData': instance.leadData,
      'operatorData': instance.operatorData,
      'templateData': instance.templateData,
      'response': instance.response,
      'customFileds': instance.customFileds,
      'endTime': instance.endTime,
      'specificTime': instance.specificTime,
      'startTime': instance.startTime,
      'timeOption': _$TimeOptionEnumMap[instance.timeOption],
    };

const _$TypeEnumMap = {
  Type.CUSTEMER: 'Custemer',
  Type.CUSTOMER: 'customer',
  Type.EMPTY: '',
  Type.PATIENT: 'patient',
  Type.STUDENT: 'student',
  Type.TYPE_CUSTOMER: 'Customer',
};

const _$SourceEnumMap = {
  Source.DIRECT: 'direct',
  Source.EMPTY: '',
  Source.FACEBOOK: 'facebook',
  Source.FB: 'fb',
  Source.FG: 'fg',
  Source.INSTAGRAM: 'instagram',
  Source.WHATS_APP: 'whatsApp',
  Source.YOUTUBE: 'youtube',
};

const _$StatusEnumMap = {
  Status.BUSY: 'Busy',
  Status.LOST: 'lost',
  Status.NEGATIVE: 'negative',
  Status.NEUTRAL: 'neutral',
  Status.NEW: 'new',
  Status.OPEN: 'open',
  Status.POSITIVE: 'positive',
  Status.WON: 'won',
};

const _$The0EnumEnumMap = {
  The0Enum.ABCDEF: 'abcdef',
  The0Enum.BAAP_MEDICAL_HUMAN: 'Baap Medical (human)',
  The0Enum.BAAP_PATHOLOGY: 'Baap Pathology',
  The0Enum.CHEMISTRY: 'Chemistry',
  The0Enum.CLASS: 'class',
  The0Enum.CSC_CENTER: 'CSC Center',
  The0Enum.CUSTOMER: 'customer',
  The0Enum.EDUCATION: 'Education',
  The0Enum.EXPERIENCE_CENTER: 'Experience Center',
  The0Enum.INFORMATION_TECHNOLOGY: 'Information Technology',
  The0Enum.INVENTORY: 'Inventory',
  The0Enum.KRUSHISEVA_KENDRA: 'Krushiseva Kendra',
  The0Enum.MALKIN: 'Malkin',
  The0Enum.MCA: 'MCA',
  The0Enum.NIKITA: 'nikita',
  The0Enum.PURPLE_MALKIN: 'Malkin ',
  The0Enum.THE_0_MALKIN: 'malkin',
};

const _$Member1EnumMap = {
  Member1.EMPTY: '',
  Member1.TESTING: 'Testing',
};

const _$Member2EnumMap = {
  Member2.EMPTY: '',
  Member2.TRUE: 'True',
};

const _$TimeOptionEnumMap = {
  TimeOption.EMPTY: '',
  TimeOption.RANGE: 'range',
  TimeOption.SPECIFIC: 'specific',
};

AssignedToClass _$AssignedToClassFromJson(Map<String, dynamic> json) =>
    AssignedToClass(
      assignedTo: (json['assignedTo'] as num?)?.toInt(),
      name: $enumDecodeNullable(_$NameEnumMap, json['name']),
    );

Map<String, dynamic> _$AssignedToClassToJson(AssignedToClass instance) =>
    <String, dynamic>{
      'assignedTo': instance.assignedTo,
      'name': _$NameEnumMap[instance.name],
    };

const _$NameEnumMap = {
  Name.ARCHANA_HALWAR: 'Archana Halwar',
  Name.PRATHMESH_RAMDAS_PADWAL: 'Prathmesh Ramdas Padwal',
  Name.PRATIBHA_NAWALE: 'Pratibha nawale',
  Name.SHUBHANGI_N_CHAUDHARI: 'Shubhangi N Chaudhari',
  Name.SIDDHI_WAMAN: 'Siddhi Waman',
  Name.SONALI_KULKARNI: 'Sonali Kulkarni',
  Name.TEJAS_SOMNATH_JADHAV: 'Tejas Somnath Jadhav',
  Name.TUSHAR_KALE: 'Tushar Kale',
  Name.TUSHAR_PAITHANKAR: 'Tushar Paithankar',
};

ItemCustomField _$ItemCustomFieldFromJson(Map<String, dynamic> json) =>
    ItemCustomField(
      keyName: json['keyName'] as String?,
      value: json['value'],
    );

Map<String, dynamic> _$ItemCustomFieldToJson(ItemCustomField instance) =>
    <String, dynamic>{
      'keyName': instance.keyName,
      'value': instance.value,
    };

CustomFiled _$CustomFiledFromJson(Map<String, dynamic> json) => CustomFiled(
      keyName: json['keyName'] as String?,
      value: json['value'],
    );

Map<String, dynamic> _$CustomFiledToJson(CustomFiled instance) =>
    <String, dynamic>{
      'keyName': instance.keyName,
      'value': instance.value,
    };

CustomFiledsClass _$CustomFiledsClassFromJson(Map<String, dynamic> json) =>
    CustomFiledsClass(
      firstName: json['First name'] as String?,
      phoneNumber: json['Phone number'] as String?,
      date:
          json['Date'] == null ? null : DateTime.parse(json['Date'] as String),
      biyane:
          (json['Biyane'] as List<dynamic>?)?.map((e) => e as String).toList(),
      fathersName: json['Fathers name'] as String?,
      customFiledsContactNumber: json['Contact number'] as String?,
      dateOfJoining: json['Date of joining'] == null
          ? null
          : DateTime.parse(json['Date of joining'] as String),
      gender: json['Gender'] as String?,
      interestedSubjects: (json['Interested subjects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      contactNumber: json['Contact Number'] as String?,
      malkinSakshiSatara: json['Malkin Sakshi Satara'] as String?,
      motherName: json['motherName'] as String?,
      customFiledsPhoneNumber: json['PhoneNumber'] as String?,
      fdsgds: json['fdsgds'] as String?,
      phoneNo: json['phoneNo'] as String?,
      followUpDate: json['FollowUp Date'] == null
          ? null
          : DateTime.parse(json['FollowUp Date'] as String),
      featuresFlag: json['features_flag'] as String?,
      hi: json['Hi'] as bool?,
      nameOfStudents: (json['Name of students'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CustomFiledsClassToJson(CustomFiledsClass instance) =>
    <String, dynamic>{
      'First name': instance.firstName,
      'Phone number': instance.phoneNumber,
      'Date': instance.date?.toIso8601String(),
      'Biyane': instance.biyane,
      'Fathers name': instance.fathersName,
      'Contact number': instance.customFiledsContactNumber,
      'Date of joining': instance.dateOfJoining?.toIso8601String(),
      'Gender': instance.gender,
      'Interested subjects': instance.interestedSubjects,
      'Contact Number': instance.contactNumber,
      'Malkin Sakshi Satara': instance.malkinSakshiSatara,
      'motherName': instance.motherName,
      'PhoneNumber': instance.customFiledsPhoneNumber,
      'fdsgds': instance.fdsgds,
      'phoneNo': instance.phoneNo,
      'FollowUp Date': instance.followUpDate?.toIso8601String(),
      'features_flag': instance.featuresFlag,
      'Hi': instance.hi,
      'Name of students': instance.nameOfStudents,
    };

LeadData _$LeadDataFromJson(Map<String, dynamic> json) => LeadData(
      the0: $enumDecodeNullable(_$The0EnumEnumMap, json['0']),
      name: json['name'] as String?,
      phoneNumber: (json['phoneNumber'] as num?)?.toInt(),
      source: $enumDecodeNullable(_$SourceEnumMap, json['source']),
      location: json['location'] as String?,
      type: $enumDecodeNullable(_$The0EnumEnumMap, json['type']),
      member1: json['member1'] as String?,
      member2: json['member2'] as String?,
      member1Contact: json['member1Contact'] as String?,
      member2Contact: json['member2Contact'] as String?,
      comments: json['comments'] as String?,
      tag: json['tag'] as List<dynamic>?,
      assignedTo: json['assignedTo'] as String?,
      id: json['_id'] as String?,
      groupId: (json['groupId'] as num?)?.toInt(),
      leadId: (json['leadId'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      isHandled: json['isHandled'] as bool?,
      customFields: (json['customFields'] as List<dynamic>?)
          ?.map((e) => LeadDataCustomField.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updateBy: (json['updateBy'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      selected: json['selected'] as String?,
      callDate: json['callDate'] == null
          ? null
          : DateTime.parse(json['callDate'] as String),
      followUpDate: json['followUpDate'] == null
          ? null
          : DateTime.parse(json['followUpDate'] as String),
      leadCallTime: json['leadCallTime'] as String?,
      recordText: json['recordText'] as String?,
      time: json['Time'] as String?,
      index: (json['index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LeadDataToJson(LeadData instance) => <String, dynamic>{
      '0': _$The0EnumEnumMap[instance.the0],
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'source': _$SourceEnumMap[instance.source],
      'location': instance.location,
      'type': _$The0EnumEnumMap[instance.type],
      'member1': instance.member1,
      'member2': instance.member2,
      'member1Contact': instance.member1Contact,
      'member2Contact': instance.member2Contact,
      'comments': instance.comments,
      'tag': instance.tag,
      'assignedTo': instance.assignedTo,
      '_id': instance.id,
      'groupId': instance.groupId,
      'leadId': instance.leadId,
      'status': _$StatusEnumMap[instance.status],
      'isHandled': instance.isHandled,
      'customFields': instance.customFields,
      'createdBy': instance.createdBy,
      'updateBy': instance.updateBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'selected': instance.selected,
      'callDate': instance.callDate?.toIso8601String(),
      'followUpDate': instance.followUpDate?.toIso8601String(),
      'leadCallTime': instance.leadCallTime,
      'recordText': instance.recordText,
      'Time': instance.time,
      'index': instance.index,
    };

LeadDataCustomField _$LeadDataCustomFieldFromJson(Map<String, dynamic> json) =>
    LeadDataCustomField(
      keyName: json['keyName'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$LeadDataCustomFieldToJson(
        LeadDataCustomField instance) =>
    <String, dynamic>{
      'keyName': instance.keyName,
      'value': instance.value,
    };

OperatorDatum _$OperatorDatumFromJson(Map<String, dynamic> json) =>
    OperatorDatum(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      groupId: (json['groupId'] as num?)?.toInt(),
      roleId: (json['roleId'] as num?)?.toInt(),
      phoneNumber: (json['phoneNumber'] as num?)?.toInt(),
      empId: (json['empId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      rfid: json['RFID'] as String?,
      membership: json['membership'] as List<dynamic>?,
      accountDetails: json['accountDetails'] as List<dynamic>?,
      experiences: json['experiences'] as List<dynamic>?,
      operatorId: (json['operatorId'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
      reportingManager: json['reportingManager'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OperatorDatumToJson(OperatorDatum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'groupId': instance.groupId,
      'roleId': instance.roleId,
      'phoneNumber': instance.phoneNumber,
      'empId': instance.empId,
      'userId': instance.userId,
      'RFID': instance.rfid,
      'membership': instance.membership,
      'accountDetails': instance.accountDetails,
      'experiences': instance.experiences,
      'operatorId': instance.operatorId,
      'gender': instance.gender,
      'role': instance.role,
      'reportingManager': instance.reportingManager,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      name: json['name'] as String?,
      roleId: (json['roleId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'name': instance.name,
      'roleId': instance.roleId,
    };

The0Element _$The0ElementFromJson(Map<String, dynamic> json) => The0Element(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$The0ElementToJson(The0Element instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

SelectedClass _$SelectedClassFromJson(Map<String, dynamic> json) =>
    SelectedClass(
      categoryId: $enumDecodeNullable(_$CategoryIdEnumMap, json['categoryId']),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SelectedClassToJson(SelectedClass instance) =>
    <String, dynamic>{
      'categoryId': _$CategoryIdEnumMap[instance.categoryId],
      'name': instance.name,
    };

const _$CategoryIdEnumMap = {
  CategoryId.BAAP_MEDICAL_HUMAN: 'Baap Medical (human)',
  CategoryId.EMPTY: '',
};

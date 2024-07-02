import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'get_model.g.dart';

GetModel getModelFromJson(String str) => GetModel.fromJson(json.decode(str));

String getModelToJson(GetModel data) => json.encode(data.toJson());

@JsonSerializable()
class GetModel {
    @JsonKey(name: "data")
    Data? data;

    GetModel({
        this.data,
    });

    factory GetModel.fromJson(Map<String, dynamic> json) => _$GetModelFromJson(json);

    Map<String, dynamic> toJson() => _$GetModelToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "items")
    List<Item>? items;
    @JsonKey(name: "totalItems")
    int? totalItems;
    @JsonKey(name: "page")
    int? page;
    @JsonKey(name: "pageSize")
    dynamic pageSize;
    @JsonKey(name: "totalPages")
    dynamic totalPages;

    Data({
        this.items,
        this.totalItems,
        this.page,
        this.pageSize,
        this.totalPages,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Item {
    @JsonKey(name: "0")
    dynamic the0;
    @JsonKey(name: "_id")
    String? id;
    @JsonKey(name: "groupId")
    int? groupId;
    @JsonKey(name: "leadId")
    int? leadId;
    @JsonKey(name: "phoneNumber")
    int? phoneNumber;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "type")
    Type? type;
    @JsonKey(name: "source")
    Source? source;
    @JsonKey(name: "status")
    Status? status;
    @JsonKey(name: "tag")
    List<The0Enum>? tag;
    @JsonKey(name: "assignedTo")
    dynamic assignedTo;
    @JsonKey(name: "isHandled")
    bool? isHandled;
    @JsonKey(name: "location")
    String? location;
    @JsonKey(name: "comments")
    String? comments;
    @JsonKey(name: "customFields")
    List<ItemCustomField>? customFields;
    @JsonKey(name: "createdBy")
    int? createdBy;
    @JsonKey(name: "updateBy")
    int? updateBy;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "updatedAt")
    DateTime? updatedAt;
    @JsonKey(name: "__v")
    int? v;
    @JsonKey(name: "member1")
    Member1? member1;
    @JsonKey(name: "member1Contact")
    String? member1Contact;
    @JsonKey(name: "member2")
    Member2? member2;
    @JsonKey(name: "member2Contact")
    String? member2Contact;
    @JsonKey(name: "selected")
    dynamic selected;
    @JsonKey(name: "handledBy")
    dynamic handledBy;
    @JsonKey(name: "tags")
    List<dynamic>? tags;
    @JsonKey(name: "updatedBy")
    int? updatedBy;
    @JsonKey(name: "1")
    dynamic the1;
    @JsonKey(name: "date")
    DateTime? date;
    @JsonKey(name: "callDate")
    DateTime? callDate;
    @JsonKey(name: "followUpDate")
    DateTime? followUpDate;
    @JsonKey(name: "leadCallTime")
    String? leadCallTime;
    @JsonKey(name: "recordText")
    String? recordText;
    @JsonKey(name: "Time")
    String? time;
    @JsonKey(name: "index")
    int? index;
    @JsonKey(name: "2")
    The0Enum? the2;
    @JsonKey(name: "startDate")
    dynamic startDate;
    @JsonKey(name: "endDate")
    dynamic endDate;
    @JsonKey(name: "3")
    String? the3;
    @JsonKey(name: "leadData")
    LeadData? leadData;
    @JsonKey(name: "operatorData")
    List<OperatorDatum>? operatorData;
    @JsonKey(name: "templateData")
    List<dynamic>? templateData;
    @JsonKey(name: "response")
    dynamic response;
    @JsonKey(name: "customFileds")
    dynamic customFileds;
    @JsonKey(name: "endTime")
    String? endTime;
    @JsonKey(name: "specificTime")
    String? specificTime;
    @JsonKey(name: "startTime")
    dynamic startTime;
    @JsonKey(name: "timeOption")
    TimeOption? timeOption;

    Item({
        this.the0,
        this.id,
        this.groupId,
        this.leadId,
        this.phoneNumber,
        this.name,
        this.type,
        this.source,
        this.status,
        this.tag,
        this.assignedTo,
        this.isHandled,
        this.location,
        this.comments,
        this.customFields,
        this.createdBy,
        this.updateBy,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.member1,
        this.member1Contact,
        this.member2,
        this.member2Contact,
        this.selected,
        this.handledBy,
        this.tags,
        this.updatedBy,
        this.the1,
        this.date,
        this.callDate,
        this.followUpDate,
        this.leadCallTime,
        this.recordText,
        this.time,
        this.index,
        this.the2,
        this.startDate,
        this.endDate,
        this.the3,
        this.leadData,
        this.operatorData,
        this.templateData,
        this.response,
        this.customFileds,
        this.endTime,
        this.specificTime,
        this.startTime,
        this.timeOption,
    });

    factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

    Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonSerializable()
class AssignedToClass {
    @JsonKey(name: "assignedTo")
    int? assignedTo;
    @JsonKey(name: "name")
    Name? name;

    AssignedToClass({
        this.assignedTo,
        this.name,
    });

    factory AssignedToClass.fromJson(Map<String, dynamic> json) => _$AssignedToClassFromJson(json);

    Map<String, dynamic> toJson() => _$AssignedToClassToJson(this);
}

enum Name {
    @JsonValue("Archana Halwar")
    ARCHANA_HALWAR,
    @JsonValue("Prathmesh Ramdas Padwal")
    PRATHMESH_RAMDAS_PADWAL,
    @JsonValue("Pratibha nawale")
    PRATIBHA_NAWALE,
    @JsonValue("Shubhangi N Chaudhari")
    SHUBHANGI_N_CHAUDHARI,
    @JsonValue("Siddhi Waman")
    SIDDHI_WAMAN,
    @JsonValue("Sonali Kulkarni")
    SONALI_KULKARNI,
    @JsonValue("Tejas Somnath Jadhav")
    TEJAS_SOMNATH_JADHAV,
    @JsonValue("Tushar Kale")
    TUSHAR_KALE,
    @JsonValue("Tushar Paithankar")
    TUSHAR_PAITHANKAR
}

final nameValues = EnumValues({
    "Archana Halwar": Name.ARCHANA_HALWAR,
    "Prathmesh Ramdas Padwal": Name.PRATHMESH_RAMDAS_PADWAL,
    "Pratibha nawale": Name.PRATIBHA_NAWALE,
    "Shubhangi N Chaudhari": Name.SHUBHANGI_N_CHAUDHARI,
    "Siddhi Waman": Name.SIDDHI_WAMAN,
    "Sonali Kulkarni": Name.SONALI_KULKARNI,
    "Tejas Somnath Jadhav": Name.TEJAS_SOMNATH_JADHAV,
    "Tushar Kale": Name.TUSHAR_KALE,
    "Tushar Paithankar": Name.TUSHAR_PAITHANKAR
});

@JsonSerializable()
class ItemCustomField {
    @JsonKey(name: "keyName")
    String? keyName;
    @JsonKey(name: "value")
    dynamic value;

    ItemCustomField({
        this.keyName,
        this.value,
    });

    factory ItemCustomField.fromJson(Map<String, dynamic> json) => _$ItemCustomFieldFromJson(json);

    Map<String, dynamic> toJson() => _$ItemCustomFieldToJson(this);
}

@JsonSerializable()
class CustomFiled {
    @JsonKey(name: "keyName")
    String? keyName;
    @JsonKey(name: "value")
    dynamic value;

    CustomFiled({
        this.keyName,
        this.value,
    });

    factory CustomFiled.fromJson(Map<String, dynamic> json) => _$CustomFiledFromJson(json);

    Map<String, dynamic> toJson() => _$CustomFiledToJson(this);
}

@JsonSerializable()
class CustomFiledsClass {
    @JsonKey(name: "First name")
    String? firstName;
    @JsonKey(name: "Phone number")
    String? phoneNumber;
    @JsonKey(name: "Date")
    DateTime? date;
    @JsonKey(name: "Biyane")
    List<String>? biyane;
    @JsonKey(name: "Fathers name")
    String? fathersName;
    @JsonKey(name: "Contact number")
    String? customFiledsContactNumber;
    @JsonKey(name: "Date of joining")
    DateTime? dateOfJoining;
    @JsonKey(name: "Gender")
    String? gender;
    @JsonKey(name: "Interested subjects")
    List<String>? interestedSubjects;
    @JsonKey(name: "Contact Number")
    String? contactNumber;
    @JsonKey(name: "Malkin Sakshi Satara")
    String? malkinSakshiSatara;
    @JsonKey(name: "motherName")
    String? motherName;
    @JsonKey(name: "PhoneNumber")
    String? customFiledsPhoneNumber;
    @JsonKey(name: "fdsgds")
    String? fdsgds;
    @JsonKey(name: "phoneNo")
    String? phoneNo;
    @JsonKey(name: "FollowUp Date")
    DateTime? followUpDate;
    @JsonKey(name: "features_flag")
    String? featuresFlag;
    @JsonKey(name: "Hi")
    bool? hi;
    @JsonKey(name: "Name of students")
    List<String>? nameOfStudents;

    CustomFiledsClass({
        this.firstName,
        this.phoneNumber,
        this.date,
        this.biyane,
        this.fathersName,
        this.customFiledsContactNumber,
        this.dateOfJoining,
        this.gender,
        this.interestedSubjects,
        this.contactNumber,
        this.malkinSakshiSatara,
        this.motherName,
        this.customFiledsPhoneNumber,
        this.fdsgds,
        this.phoneNo,
        this.followUpDate,
        this.featuresFlag,
        this.hi,
        this.nameOfStudents,
    });

    factory CustomFiledsClass.fromJson(Map<String, dynamic> json) => _$CustomFiledsClassFromJson(json);

    Map<String, dynamic> toJson() => _$CustomFiledsClassToJson(this);
}

enum HandledByEnum {
    @JsonValue("Akash Pansare")
    AKASH_PANSARE,
    @JsonValue("Ashish Shinde")
    ASHISH_SHINDE,
    @JsonValue("")
    EMPTY,
    @JsonValue("Poonam Nagare")
    POONAM_NAGARE,
    @JsonValue("Shubhangi N Chaudhari")
    SHUBHANGI_N_CHAUDHARI
}

final handledByEnumValues = EnumValues({
    "Akash Pansare": HandledByEnum.AKASH_PANSARE,
    "Ashish Shinde": HandledByEnum.ASHISH_SHINDE,
    "": HandledByEnum.EMPTY,
    "Poonam Nagare": HandledByEnum.POONAM_NAGARE,
    "Shubhangi N Chaudhari": HandledByEnum.SHUBHANGI_N_CHAUDHARI
});

@JsonSerializable()
class LeadData {
    @JsonKey(name: "0")
    The0Enum? the0;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "phoneNumber")
    int? phoneNumber;
    @JsonKey(name: "source")
    Source? source;
    @JsonKey(name: "location")
    String? location;
    @JsonKey(name: "type")
    The0Enum? type;
    @JsonKey(name: "member1")
    String? member1;
    @JsonKey(name: "member2")
    String? member2;
    @JsonKey(name: "member1Contact")
    String? member1Contact;
    @JsonKey(name: "member2Contact")
    String? member2Contact;
    @JsonKey(name: "comments")
    String? comments;
    @JsonKey(name: "tag")
    List<dynamic>? tag;
    @JsonKey(name: "assignedTo")
    String? assignedTo;
    @JsonKey(name: "_id")
    String? id;
    @JsonKey(name: "groupId")
    int? groupId;
    @JsonKey(name: "leadId")
    int? leadId;
    @JsonKey(name: "status")
    Status? status;
    @JsonKey(name: "isHandled")
    bool? isHandled;
    @JsonKey(name: "customFields")
    List<LeadDataCustomField>? customFields;
    @JsonKey(name: "createdBy")
    int? createdBy;
    @JsonKey(name: "updateBy")
    int? updateBy;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "updatedAt")
    DateTime? updatedAt;
    @JsonKey(name: "__v")
    int? v;
    @JsonKey(name: "selected")
    String? selected;
    @JsonKey(name: "callDate")
    DateTime? callDate;
    @JsonKey(name: "followUpDate")
    DateTime? followUpDate;
    @JsonKey(name: "leadCallTime")
    String? leadCallTime;
    @JsonKey(name: "recordText")
    String? recordText;
    @JsonKey(name: "Time")
    String? time;
    @JsonKey(name: "index")
    int? index;

    LeadData({
        this.the0,
        this.name,
        this.phoneNumber,
        this.source,
        this.location,
        this.type,
        this.member1,
        this.member2,
        this.member1Contact,
        this.member2Contact,
        this.comments,
        this.tag,
        this.assignedTo,
        this.id,
        this.groupId,
        this.leadId,
        this.status,
        this.isHandled,
        this.customFields,
        this.createdBy,
        this.updateBy,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.selected,
        this.callDate,
        this.followUpDate,
        this.leadCallTime,
        this.recordText,
        this.time,
        this.index,
    });

    factory LeadData.fromJson(Map<String, dynamic> json) => _$LeadDataFromJson(json);

    Map<String, dynamic> toJson() => _$LeadDataToJson(this);
}

@JsonSerializable()
class LeadDataCustomField {
    @JsonKey(name: "keyName")
    String? keyName;
    @JsonKey(name: "value")
    String? value;

    LeadDataCustomField({
        this.keyName,
        this.value,
    });

    factory LeadDataCustomField.fromJson(Map<String, dynamic> json) => _$LeadDataCustomFieldFromJson(json);

    Map<String, dynamic> toJson() => _$LeadDataCustomFieldToJson(this);
}

enum Source {
    @JsonValue("direct")
    DIRECT,
    @JsonValue("")
    EMPTY,
    @JsonValue("facebook")
    FACEBOOK,
    @JsonValue("fb")
    FB,
    @JsonValue("fg")
    FG,
    @JsonValue("instagram")
    INSTAGRAM,
    @JsonValue("whatsApp")
    WHATS_APP,
    @JsonValue("youtube")
    YOUTUBE
}

final sourceValues = EnumValues({
    "direct": Source.DIRECT,
    "": Source.EMPTY,
    "facebook": Source.FACEBOOK,
    "fb": Source.FB,
    "fg": Source.FG,
    "instagram": Source.INSTAGRAM,
    "whatsApp": Source.WHATS_APP,
    "youtube": Source.YOUTUBE
});

enum Status {
    @JsonValue("Busy")
    BUSY,
    @JsonValue("lost")
    LOST,
    @JsonValue("negative")
    NEGATIVE,
    @JsonValue("neutral")
    NEUTRAL,
    @JsonValue("new")
    NEW,
    @JsonValue("open")
    OPEN,
    @JsonValue("positive")
    POSITIVE,
    @JsonValue("won")
    WON
}

final statusValues = EnumValues({
    "Busy": Status.BUSY,
    "lost": Status.LOST,
    "negative": Status.NEGATIVE,
    "neutral": Status.NEUTRAL,
    "new": Status.NEW,
    "open": Status.OPEN,
    "positive": Status.POSITIVE,
    "won": Status.WON
});

enum The0Enum {
    @JsonValue("abcdef")
    ABCDEF,
    @JsonValue("Baap Medical (human)")
    BAAP_MEDICAL_HUMAN,
    @JsonValue("Baap Pathology")
    BAAP_PATHOLOGY,
    @JsonValue("Chemistry")
    CHEMISTRY,
    @JsonValue("class")
    CLASS,
    @JsonValue("CSC Center")
    CSC_CENTER,
    @JsonValue("customer")
    CUSTOMER,
    @JsonValue("Education")
    EDUCATION,
    @JsonValue("Experience Center")
    EXPERIENCE_CENTER,
    @JsonValue("Information Technology")
    INFORMATION_TECHNOLOGY,
    @JsonValue("Inventory")
    INVENTORY,
    @JsonValue("Krushiseva Kendra")
    KRUSHISEVA_KENDRA,
    @JsonValue("Malkin")
    MALKIN,
    @JsonValue("MCA")
    MCA,
    @JsonValue("nikita")
    NIKITA,
    @JsonValue("Malkin ")
    PURPLE_MALKIN,
    @JsonValue("malkin")
    THE_0_MALKIN
}

final the0EnumValues = EnumValues({
    "abcdef": The0Enum.ABCDEF,
    "Baap Medical (human)": The0Enum.BAAP_MEDICAL_HUMAN,
    "Baap Pathology": The0Enum.BAAP_PATHOLOGY,
    "Chemistry": The0Enum.CHEMISTRY,
    "class": The0Enum.CLASS,
    "CSC Center": The0Enum.CSC_CENTER,
    "customer": The0Enum.CUSTOMER,
    "Education": The0Enum.EDUCATION,
    "Experience Center": The0Enum.EXPERIENCE_CENTER,
    "Information Technology": The0Enum.INFORMATION_TECHNOLOGY,
    "Inventory": The0Enum.INVENTORY,
    "Krushiseva Kendra": The0Enum.KRUSHISEVA_KENDRA,
    "Malkin": The0Enum.MALKIN,
    "MCA": The0Enum.MCA,
    "nikita": The0Enum.NIKITA,
    "Malkin ": The0Enum.PURPLE_MALKIN,
    "malkin": The0Enum.THE_0_MALKIN
});

enum Member1 {
    @JsonValue("")
    EMPTY,
    @JsonValue("Testing")
    TESTING
}

final member1Values = EnumValues({
    "": Member1.EMPTY,
    "Testing": Member1.TESTING
});

enum Member2 {
    @JsonValue("")
    EMPTY,
    @JsonValue("True")
    TRUE
}

final member2Values = EnumValues({
    "": Member2.EMPTY,
    "True": Member2.TRUE
});

@JsonSerializable()
class OperatorDatum {
    @JsonKey(name: "_id")
    String? id;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "groupId")
    int? groupId;
    @JsonKey(name: "roleId")
    int? roleId;
    @JsonKey(name: "phoneNumber")
    int? phoneNumber;
    @JsonKey(name: "empId")
    int? empId;
    @JsonKey(name: "userId")
    int? userId;
    @JsonKey(name: "RFID")
    String? rfid;
    @JsonKey(name: "membership")
    List<dynamic>? membership;
    @JsonKey(name: "accountDetails")
    List<dynamic>? accountDetails;
    @JsonKey(name: "experiences")
    List<dynamic>? experiences;
    @JsonKey(name: "operatorId")
    int? operatorId;
    @JsonKey(name: "gender")
    String? gender;
    @JsonKey(name: "role")
    Role? role;
    @JsonKey(name: "reportingManager")
    dynamic reportingManager;
    @JsonKey(name: "createdAt")
    DateTime? createdAt;
    @JsonKey(name: "updatedAt")
    DateTime? updatedAt;
    @JsonKey(name: "__v")
    int? v;

    OperatorDatum({
        this.id,
        this.name,
        this.groupId,
        this.roleId,
        this.phoneNumber,
        this.empId,
        this.userId,
        this.rfid,
        this.membership,
        this.accountDetails,
        this.experiences,
        this.operatorId,
        this.gender,
        this.role,
        this.reportingManager,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory OperatorDatum.fromJson(Map<String, dynamic> json) => _$OperatorDatumFromJson(json);

    Map<String, dynamic> toJson() => _$OperatorDatumToJson(this);
}

@JsonSerializable()
class Role {
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "roleId")
    int? roleId;

    Role({
        this.name,
        this.roleId,
    });

    factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

    Map<String, dynamic> toJson() => _$RoleToJson(this);
}

@JsonSerializable()
class The0Element {
    @JsonKey(name: "name")
    String? name;

    The0Element({
        this.name,
    });

    factory The0Element.fromJson(Map<String, dynamic> json) => _$The0ElementFromJson(json);

    Map<String, dynamic> toJson() => _$The0ElementToJson(this);
}

@JsonSerializable()
class SelectedClass {
    @JsonKey(name: "categoryId")
    CategoryId? categoryId;
    @JsonKey(name: "name")
    String? name;

    SelectedClass({
        this.categoryId,
        this.name,
    });

    factory SelectedClass.fromJson(Map<String, dynamic> json) => _$SelectedClassFromJson(json);

    Map<String, dynamic> toJson() => _$SelectedClassToJson(this);
}

enum CategoryId {
    @JsonValue("Baap Medical (human)")
    BAAP_MEDICAL_HUMAN,
    @JsonValue("")
    EMPTY
}

final categoryIdValues = EnumValues({
    "Baap Medical (human)": CategoryId.BAAP_MEDICAL_HUMAN,
    "": CategoryId.EMPTY
});

enum TimeOption {
    @JsonValue("")
    EMPTY,
    @JsonValue("range")
    RANGE,
    @JsonValue("specific")
    SPECIFIC
}

final timeOptionValues = EnumValues({
    "": TimeOption.EMPTY,
    "range": TimeOption.RANGE,
    "specific": TimeOption.SPECIFIC
});

enum Type {
    @JsonValue("Custemer")
    CUSTEMER,
    @JsonValue("customer")
    CUSTOMER,
    @JsonValue("")
    EMPTY,
    @JsonValue("patient")
    PATIENT,
    @JsonValue("student")
    STUDENT,
    @JsonValue("Customer")
    TYPE_CUSTOMER
}

final typeValues = EnumValues({
    "Custemer": Type.CUSTEMER,
    "customer": Type.CUSTOMER,
    "": Type.EMPTY,
    "patient": Type.PATIENT,
    "student": Type.STUDENT,
    "Customer": Type.TYPE_CUSTOMER
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'fecha_nacimiento')
  DateTime? get fechaNacimiento;

  @BuiltValueField(wireName: 'limite_anuncios')
  int? get limiteAnuncios;

  @BuiltValueField(wireName: 'anuncios_creados')
  int? get anunciosCreados;

  @BuiltValueField(wireName: 'es_tienda')
  bool? get esTienda;

  @BuiltValueField(wireName: 'nombre_tienda')
  String? get nombreTienda;

  @BuiltValueField(wireName: 'logo_tienda')
  String? get logoTienda;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..limiteAnuncios = 0
    ..anunciosCreados = 0
    ..esTienda = false
    ..nombreTienda = ''
    ..logoTienda = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? fechaNacimiento,
  int? limiteAnuncios,
  int? anunciosCreados,
  bool? esTienda,
  String? nombreTienda,
  String? logoTienda,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..fechaNacimiento = fechaNacimiento
        ..limiteAnuncios = limiteAnuncios
        ..anunciosCreados = anunciosCreados
        ..esTienda = esTienda
        ..nombreTienda = nombreTienda
        ..logoTienda = logoTienda,
    ),
  );

  return firestoreData;
}

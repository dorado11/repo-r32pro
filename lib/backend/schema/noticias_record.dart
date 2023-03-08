import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'noticias_record.g.dart';

abstract class NoticiasRecord
    implements Built<NoticiasRecord, NoticiasRecordBuilder> {
  static Serializer<NoticiasRecord> get serializer =>
      _$noticiasRecordSerializer;

  @BuiltValueField(wireName: 'titulo_noti')
  String? get tituloNoti;

  @BuiltValueField(wireName: 'descrip_noti')
  String? get descripNoti;

  @BuiltValueField(wireName: 'fecha_evento')
  DateTime? get fechaEvento;

  @BuiltValueField(wireName: 'imagen_noti')
  String? get imagenNoti;

  @BuiltValueField(wireName: 'organizador_noti')
  String? get organizadorNoti;

  @BuiltValueField(wireName: 'tlf_noti')
  int? get tlfNoti;

  @BuiltValueField(wireName: 'email_noti')
  String? get emailNoti;

  @BuiltValueField(wireName: 'gratis_noti')
  bool? get gratisNoti;

  @BuiltValueField(wireName: 'precio_noti')
  int? get precioNoti;

  @BuiltValueField(wireName: 'Tipo')
  String? get tipo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NoticiasRecordBuilder builder) => builder
    ..tituloNoti = ''
    ..descripNoti = ''
    ..imagenNoti = ''
    ..organizadorNoti = ''
    ..tlfNoti = 0
    ..emailNoti = ''
    ..gratisNoti = false
    ..precioNoti = 0
    ..tipo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('noticias');

  static Stream<NoticiasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NoticiasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NoticiasRecord._();
  factory NoticiasRecord([void Function(NoticiasRecordBuilder) updates]) =
      _$NoticiasRecord;

  static NoticiasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNoticiasRecordData({
  String? tituloNoti,
  String? descripNoti,
  DateTime? fechaEvento,
  String? imagenNoti,
  String? organizadorNoti,
  int? tlfNoti,
  String? emailNoti,
  bool? gratisNoti,
  int? precioNoti,
  String? tipo,
}) {
  final firestoreData = serializers.toFirestore(
    NoticiasRecord.serializer,
    NoticiasRecord(
      (n) => n
        ..tituloNoti = tituloNoti
        ..descripNoti = descripNoti
        ..fechaEvento = fechaEvento
        ..imagenNoti = imagenNoti
        ..organizadorNoti = organizadorNoti
        ..tlfNoti = tlfNoti
        ..emailNoti = emailNoti
        ..gratisNoti = gratisNoti
        ..precioNoti = precioNoti
        ..tipo = tipo,
    ),
  );

  return firestoreData;
}

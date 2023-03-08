import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sub_categoria_record.g.dart';

abstract class SubCategoriaRecord
    implements Built<SubCategoriaRecord, SubCategoriaRecordBuilder> {
  static Serializer<SubCategoriaRecord> get serializer =>
      _$subCategoriaRecordSerializer;

  @BuiltValueField(wireName: 'nombre_sub')
  String? get nombreSub;

  @BuiltValueField(wireName: 'categoria_asoc')
  DocumentReference? get categoriaAsoc;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SubCategoriaRecordBuilder builder) =>
      builder..nombreSub = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sub_categoria');

  static Stream<SubCategoriaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SubCategoriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SubCategoriaRecord._();
  factory SubCategoriaRecord(
          [void Function(SubCategoriaRecordBuilder) updates]) =
      _$SubCategoriaRecord;

  static SubCategoriaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSubCategoriaRecordData({
  String? nombreSub,
  DocumentReference? categoriaAsoc,
}) {
  final firestoreData = serializers.toFirestore(
    SubCategoriaRecord.serializer,
    SubCategoriaRecord(
      (s) => s
        ..nombreSub = nombreSub
        ..categoriaAsoc = categoriaAsoc,
    ),
  );

  return firestoreData;
}

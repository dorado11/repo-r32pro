// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_categoria_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubCategoriaRecord> _$subCategoriaRecordSerializer =
    new _$SubCategoriaRecordSerializer();

class _$SubCategoriaRecordSerializer
    implements StructuredSerializer<SubCategoriaRecord> {
  @override
  final Iterable<Type> types = const [SubCategoriaRecord, _$SubCategoriaRecord];
  @override
  final String wireName = 'SubCategoriaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SubCategoriaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreSub;
    if (value != null) {
      result
        ..add('nombre_sub')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoriaAsoc;
    if (value != null) {
      result
        ..add('categoria_asoc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  SubCategoriaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubCategoriaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre_sub':
          result.nombreSub = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categoria_asoc':
          result.categoriaAsoc = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$SubCategoriaRecord extends SubCategoriaRecord {
  @override
  final String? nombreSub;
  @override
  final DocumentReference<Object?>? categoriaAsoc;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SubCategoriaRecord(
          [void Function(SubCategoriaRecordBuilder)? updates]) =>
      (new SubCategoriaRecordBuilder()..update(updates))._build();

  _$SubCategoriaRecord._({this.nombreSub, this.categoriaAsoc, this.ffRef})
      : super._();

  @override
  SubCategoriaRecord rebuild(
          void Function(SubCategoriaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubCategoriaRecordBuilder toBuilder() =>
      new SubCategoriaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubCategoriaRecord &&
        nombreSub == other.nombreSub &&
        categoriaAsoc == other.categoriaAsoc &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, nombreSub.hashCode), categoriaAsoc.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubCategoriaRecord')
          ..add('nombreSub', nombreSub)
          ..add('categoriaAsoc', categoriaAsoc)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SubCategoriaRecordBuilder
    implements Builder<SubCategoriaRecord, SubCategoriaRecordBuilder> {
  _$SubCategoriaRecord? _$v;

  String? _nombreSub;
  String? get nombreSub => _$this._nombreSub;
  set nombreSub(String? nombreSub) => _$this._nombreSub = nombreSub;

  DocumentReference<Object?>? _categoriaAsoc;
  DocumentReference<Object?>? get categoriaAsoc => _$this._categoriaAsoc;
  set categoriaAsoc(DocumentReference<Object?>? categoriaAsoc) =>
      _$this._categoriaAsoc = categoriaAsoc;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SubCategoriaRecordBuilder() {
    SubCategoriaRecord._initializeBuilder(this);
  }

  SubCategoriaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreSub = $v.nombreSub;
      _categoriaAsoc = $v.categoriaAsoc;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubCategoriaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubCategoriaRecord;
  }

  @override
  void update(void Function(SubCategoriaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubCategoriaRecord build() => _build();

  _$SubCategoriaRecord _build() {
    final _$result = _$v ??
        new _$SubCategoriaRecord._(
            nombreSub: nombreSub, categoriaAsoc: categoriaAsoc, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

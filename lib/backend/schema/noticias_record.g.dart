// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noticias_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NoticiasRecord> _$noticiasRecordSerializer =
    new _$NoticiasRecordSerializer();

class _$NoticiasRecordSerializer
    implements StructuredSerializer<NoticiasRecord> {
  @override
  final Iterable<Type> types = const [NoticiasRecord, _$NoticiasRecord];
  @override
  final String wireName = 'NoticiasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NoticiasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tituloNoti;
    if (value != null) {
      result
        ..add('titulo_noti')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripNoti;
    if (value != null) {
      result
        ..add('descrip_noti')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaEvento;
    if (value != null) {
      result
        ..add('fecha_evento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.imagenNoti;
    if (value != null) {
      result
        ..add('imagen_noti')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.organizadorNoti;
    if (value != null) {
      result
        ..add('organizador_noti')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tlfNoti;
    if (value != null) {
      result
        ..add('tlf_noti')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.emailNoti;
    if (value != null) {
      result
        ..add('email_noti')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gratisNoti;
    if (value != null) {
      result
        ..add('gratis_noti')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.precioNoti;
    if (value != null) {
      result
        ..add('precio_noti')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tipo;
    if (value != null) {
      result
        ..add('Tipo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  NoticiasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NoticiasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'titulo_noti':
          result.tituloNoti = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descrip_noti':
          result.descripNoti = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fecha_evento':
          result.fechaEvento = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'imagen_noti':
          result.imagenNoti = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organizador_noti':
          result.organizadorNoti = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tlf_noti':
          result.tlfNoti = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'email_noti':
          result.emailNoti = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gratis_noti':
          result.gratisNoti = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'precio_noti':
          result.precioNoti = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Tipo':
          result.tipo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$NoticiasRecord extends NoticiasRecord {
  @override
  final String? tituloNoti;
  @override
  final String? descripNoti;
  @override
  final DateTime? fechaEvento;
  @override
  final String? imagenNoti;
  @override
  final String? organizadorNoti;
  @override
  final int? tlfNoti;
  @override
  final String? emailNoti;
  @override
  final bool? gratisNoti;
  @override
  final int? precioNoti;
  @override
  final String? tipo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NoticiasRecord([void Function(NoticiasRecordBuilder)? updates]) =>
      (new NoticiasRecordBuilder()..update(updates))._build();

  _$NoticiasRecord._(
      {this.tituloNoti,
      this.descripNoti,
      this.fechaEvento,
      this.imagenNoti,
      this.organizadorNoti,
      this.tlfNoti,
      this.emailNoti,
      this.gratisNoti,
      this.precioNoti,
      this.tipo,
      this.ffRef})
      : super._();

  @override
  NoticiasRecord rebuild(void Function(NoticiasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoticiasRecordBuilder toBuilder() =>
      new NoticiasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoticiasRecord &&
        tituloNoti == other.tituloNoti &&
        descripNoti == other.descripNoti &&
        fechaEvento == other.fechaEvento &&
        imagenNoti == other.imagenNoti &&
        organizadorNoti == other.organizadorNoti &&
        tlfNoti == other.tlfNoti &&
        emailNoti == other.emailNoti &&
        gratisNoti == other.gratisNoti &&
        precioNoti == other.precioNoti &&
        tipo == other.tipo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, tituloNoti.hashCode),
                                            descripNoti.hashCode),
                                        fechaEvento.hashCode),
                                    imagenNoti.hashCode),
                                organizadorNoti.hashCode),
                            tlfNoti.hashCode),
                        emailNoti.hashCode),
                    gratisNoti.hashCode),
                precioNoti.hashCode),
            tipo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoticiasRecord')
          ..add('tituloNoti', tituloNoti)
          ..add('descripNoti', descripNoti)
          ..add('fechaEvento', fechaEvento)
          ..add('imagenNoti', imagenNoti)
          ..add('organizadorNoti', organizadorNoti)
          ..add('tlfNoti', tlfNoti)
          ..add('emailNoti', emailNoti)
          ..add('gratisNoti', gratisNoti)
          ..add('precioNoti', precioNoti)
          ..add('tipo', tipo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NoticiasRecordBuilder
    implements Builder<NoticiasRecord, NoticiasRecordBuilder> {
  _$NoticiasRecord? _$v;

  String? _tituloNoti;
  String? get tituloNoti => _$this._tituloNoti;
  set tituloNoti(String? tituloNoti) => _$this._tituloNoti = tituloNoti;

  String? _descripNoti;
  String? get descripNoti => _$this._descripNoti;
  set descripNoti(String? descripNoti) => _$this._descripNoti = descripNoti;

  DateTime? _fechaEvento;
  DateTime? get fechaEvento => _$this._fechaEvento;
  set fechaEvento(DateTime? fechaEvento) => _$this._fechaEvento = fechaEvento;

  String? _imagenNoti;
  String? get imagenNoti => _$this._imagenNoti;
  set imagenNoti(String? imagenNoti) => _$this._imagenNoti = imagenNoti;

  String? _organizadorNoti;
  String? get organizadorNoti => _$this._organizadorNoti;
  set organizadorNoti(String? organizadorNoti) =>
      _$this._organizadorNoti = organizadorNoti;

  int? _tlfNoti;
  int? get tlfNoti => _$this._tlfNoti;
  set tlfNoti(int? tlfNoti) => _$this._tlfNoti = tlfNoti;

  String? _emailNoti;
  String? get emailNoti => _$this._emailNoti;
  set emailNoti(String? emailNoti) => _$this._emailNoti = emailNoti;

  bool? _gratisNoti;
  bool? get gratisNoti => _$this._gratisNoti;
  set gratisNoti(bool? gratisNoti) => _$this._gratisNoti = gratisNoti;

  int? _precioNoti;
  int? get precioNoti => _$this._precioNoti;
  set precioNoti(int? precioNoti) => _$this._precioNoti = precioNoti;

  String? _tipo;
  String? get tipo => _$this._tipo;
  set tipo(String? tipo) => _$this._tipo = tipo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NoticiasRecordBuilder() {
    NoticiasRecord._initializeBuilder(this);
  }

  NoticiasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tituloNoti = $v.tituloNoti;
      _descripNoti = $v.descripNoti;
      _fechaEvento = $v.fechaEvento;
      _imagenNoti = $v.imagenNoti;
      _organizadorNoti = $v.organizadorNoti;
      _tlfNoti = $v.tlfNoti;
      _emailNoti = $v.emailNoti;
      _gratisNoti = $v.gratisNoti;
      _precioNoti = $v.precioNoti;
      _tipo = $v.tipo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoticiasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoticiasRecord;
  }

  @override
  void update(void Function(NoticiasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoticiasRecord build() => _build();

  _$NoticiasRecord _build() {
    final _$result = _$v ??
        new _$NoticiasRecord._(
            tituloNoti: tituloNoti,
            descripNoti: descripNoti,
            fechaEvento: fechaEvento,
            imagenNoti: imagenNoti,
            organizadorNoti: organizadorNoti,
            tlfNoti: tlfNoti,
            emailNoti: emailNoti,
            gratisNoti: gratisNoti,
            precioNoti: precioNoti,
            tipo: tipo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

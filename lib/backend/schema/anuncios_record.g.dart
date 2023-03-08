// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anuncios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnunciosRecord> _$anunciosRecordSerializer =
    new _$AnunciosRecordSerializer();

class _$AnunciosRecordSerializer
    implements StructuredSerializer<AnunciosRecord> {
  @override
  final Iterable<Type> types = const [AnunciosRecord, _$AnunciosRecord];
  @override
  final String wireName = 'AnunciosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AnunciosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tituloAnun;
    if (value != null) {
      result
        ..add('titulo_anun')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripAnun;
    if (value != null) {
      result
        ..add('descrip_anun')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotoAnun;
    if (value != null) {
      result
        ..add('foto_anun')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precioAnun;
    if (value != null) {
      result
        ..add('precio_anun')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.divisaAnun;
    if (value != null) {
      result
        ..add('divisa_anun')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaCreacion;
    if (value != null) {
      result
        ..add('fecha_creacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.nuevo;
    if (value != null) {
      result
        ..add('Nuevo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.activo;
    if (value != null) {
      result
        ..add('Activo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.propietarioAnun;
    if (value != null) {
      result
        ..add('propietario_anun')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.categoriaAnun;
    if (value != null) {
      result
        ..add('categoria_anun')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.subcategAnun;
    if (value != null) {
      result
        ..add('subcateg_anun')
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
  AnunciosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnunciosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'titulo_anun':
          result.tituloAnun = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descrip_anun':
          result.descripAnun = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'foto_anun':
          result.fotoAnun = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precio_anun':
          result.precioAnun = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'divisa_anun':
          result.divisaAnun = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fecha_creacion':
          result.fechaCreacion = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Nuevo':
          result.nuevo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Activo':
          result.activo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'propietario_anun':
          result.propietarioAnun = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'categoria_anun':
          result.categoriaAnun = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'subcateg_anun':
          result.subcategAnun = serializers.deserialize(value,
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

class _$AnunciosRecord extends AnunciosRecord {
  @override
  final String? tituloAnun;
  @override
  final String? descripAnun;
  @override
  final String? fotoAnun;
  @override
  final int? precioAnun;
  @override
  final String? divisaAnun;
  @override
  final DateTime? fechaCreacion;
  @override
  final bool? nuevo;
  @override
  final bool? activo;
  @override
  final DocumentReference<Object?>? propietarioAnun;
  @override
  final DocumentReference<Object?>? categoriaAnun;
  @override
  final DocumentReference<Object?>? subcategAnun;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AnunciosRecord([void Function(AnunciosRecordBuilder)? updates]) =>
      (new AnunciosRecordBuilder()..update(updates))._build();

  _$AnunciosRecord._(
      {this.tituloAnun,
      this.descripAnun,
      this.fotoAnun,
      this.precioAnun,
      this.divisaAnun,
      this.fechaCreacion,
      this.nuevo,
      this.activo,
      this.propietarioAnun,
      this.categoriaAnun,
      this.subcategAnun,
      this.ffRef})
      : super._();

  @override
  AnunciosRecord rebuild(void Function(AnunciosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnunciosRecordBuilder toBuilder() =>
      new AnunciosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnunciosRecord &&
        tituloAnun == other.tituloAnun &&
        descripAnun == other.descripAnun &&
        fotoAnun == other.fotoAnun &&
        precioAnun == other.precioAnun &&
        divisaAnun == other.divisaAnun &&
        fechaCreacion == other.fechaCreacion &&
        nuevo == other.nuevo &&
        activo == other.activo &&
        propietarioAnun == other.propietarioAnun &&
        categoriaAnun == other.categoriaAnun &&
        subcategAnun == other.subcategAnun &&
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
                                        $jc(
                                            $jc($jc(0, tituloAnun.hashCode),
                                                descripAnun.hashCode),
                                            fotoAnun.hashCode),
                                        precioAnun.hashCode),
                                    divisaAnun.hashCode),
                                fechaCreacion.hashCode),
                            nuevo.hashCode),
                        activo.hashCode),
                    propietarioAnun.hashCode),
                categoriaAnun.hashCode),
            subcategAnun.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnunciosRecord')
          ..add('tituloAnun', tituloAnun)
          ..add('descripAnun', descripAnun)
          ..add('fotoAnun', fotoAnun)
          ..add('precioAnun', precioAnun)
          ..add('divisaAnun', divisaAnun)
          ..add('fechaCreacion', fechaCreacion)
          ..add('nuevo', nuevo)
          ..add('activo', activo)
          ..add('propietarioAnun', propietarioAnun)
          ..add('categoriaAnun', categoriaAnun)
          ..add('subcategAnun', subcategAnun)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AnunciosRecordBuilder
    implements Builder<AnunciosRecord, AnunciosRecordBuilder> {
  _$AnunciosRecord? _$v;

  String? _tituloAnun;
  String? get tituloAnun => _$this._tituloAnun;
  set tituloAnun(String? tituloAnun) => _$this._tituloAnun = tituloAnun;

  String? _descripAnun;
  String? get descripAnun => _$this._descripAnun;
  set descripAnun(String? descripAnun) => _$this._descripAnun = descripAnun;

  String? _fotoAnun;
  String? get fotoAnun => _$this._fotoAnun;
  set fotoAnun(String? fotoAnun) => _$this._fotoAnun = fotoAnun;

  int? _precioAnun;
  int? get precioAnun => _$this._precioAnun;
  set precioAnun(int? precioAnun) => _$this._precioAnun = precioAnun;

  String? _divisaAnun;
  String? get divisaAnun => _$this._divisaAnun;
  set divisaAnun(String? divisaAnun) => _$this._divisaAnun = divisaAnun;

  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _$this._fechaCreacion;
  set fechaCreacion(DateTime? fechaCreacion) =>
      _$this._fechaCreacion = fechaCreacion;

  bool? _nuevo;
  bool? get nuevo => _$this._nuevo;
  set nuevo(bool? nuevo) => _$this._nuevo = nuevo;

  bool? _activo;
  bool? get activo => _$this._activo;
  set activo(bool? activo) => _$this._activo = activo;

  DocumentReference<Object?>? _propietarioAnun;
  DocumentReference<Object?>? get propietarioAnun => _$this._propietarioAnun;
  set propietarioAnun(DocumentReference<Object?>? propietarioAnun) =>
      _$this._propietarioAnun = propietarioAnun;

  DocumentReference<Object?>? _categoriaAnun;
  DocumentReference<Object?>? get categoriaAnun => _$this._categoriaAnun;
  set categoriaAnun(DocumentReference<Object?>? categoriaAnun) =>
      _$this._categoriaAnun = categoriaAnun;

  DocumentReference<Object?>? _subcategAnun;
  DocumentReference<Object?>? get subcategAnun => _$this._subcategAnun;
  set subcategAnun(DocumentReference<Object?>? subcategAnun) =>
      _$this._subcategAnun = subcategAnun;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AnunciosRecordBuilder() {
    AnunciosRecord._initializeBuilder(this);
  }

  AnunciosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tituloAnun = $v.tituloAnun;
      _descripAnun = $v.descripAnun;
      _fotoAnun = $v.fotoAnun;
      _precioAnun = $v.precioAnun;
      _divisaAnun = $v.divisaAnun;
      _fechaCreacion = $v.fechaCreacion;
      _nuevo = $v.nuevo;
      _activo = $v.activo;
      _propietarioAnun = $v.propietarioAnun;
      _categoriaAnun = $v.categoriaAnun;
      _subcategAnun = $v.subcategAnun;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnunciosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnunciosRecord;
  }

  @override
  void update(void Function(AnunciosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnunciosRecord build() => _build();

  _$AnunciosRecord _build() {
    final _$result = _$v ??
        new _$AnunciosRecord._(
            tituloAnun: tituloAnun,
            descripAnun: descripAnun,
            fotoAnun: fotoAnun,
            precioAnun: precioAnun,
            divisaAnun: divisaAnun,
            fechaCreacion: fechaCreacion,
            nuevo: nuevo,
            activo: activo,
            propietarioAnun: propietarioAnun,
            categoriaAnun: categoriaAnun,
            subcategAnun: subcategAnun,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

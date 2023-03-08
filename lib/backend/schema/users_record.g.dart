// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaNacimiento;
    if (value != null) {
      result
        ..add('fecha_nacimiento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.limiteAnuncios;
    if (value != null) {
      result
        ..add('limite_anuncios')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.anunciosCreados;
    if (value != null) {
      result
        ..add('anuncios_creados')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.esTienda;
    if (value != null) {
      result
        ..add('es_tienda')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.nombreTienda;
    if (value != null) {
      result
        ..add('nombre_tienda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logoTienda;
    if (value != null) {
      result
        ..add('logo_tienda')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fecha_nacimiento':
          result.fechaNacimiento = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'limite_anuncios':
          result.limiteAnuncios = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'anuncios_creados':
          result.anunciosCreados = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'es_tienda':
          result.esTienda = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'nombre_tienda':
          result.nombreTienda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logo_tienda':
          result.logoTienda = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DateTime? fechaNacimiento;
  @override
  final int? limiteAnuncios;
  @override
  final int? anunciosCreados;
  @override
  final bool? esTienda;
  @override
  final String? nombreTienda;
  @override
  final String? logoTienda;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.fechaNacimiento,
      this.limiteAnuncios,
      this.anunciosCreados,
      this.esTienda,
      this.nombreTienda,
      this.logoTienda,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        fechaNacimiento == other.fechaNacimiento &&
        limiteAnuncios == other.limiteAnuncios &&
        anunciosCreados == other.anunciosCreados &&
        esTienda == other.esTienda &&
        nombreTienda == other.nombreTienda &&
        logoTienda == other.logoTienda &&
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
                                            $jc(
                                                $jc($jc(0, email.hashCode),
                                                    displayName.hashCode),
                                                photoUrl.hashCode),
                                            uid.hashCode),
                                        createdTime.hashCode),
                                    phoneNumber.hashCode),
                                fechaNacimiento.hashCode),
                            limiteAnuncios.hashCode),
                        anunciosCreados.hashCode),
                    esTienda.hashCode),
                nombreTienda.hashCode),
            logoTienda.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('fechaNacimiento', fechaNacimiento)
          ..add('limiteAnuncios', limiteAnuncios)
          ..add('anunciosCreados', anunciosCreados)
          ..add('esTienda', esTienda)
          ..add('nombreTienda', nombreTienda)
          ..add('logoTienda', logoTienda)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _$this._fechaNacimiento;
  set fechaNacimiento(DateTime? fechaNacimiento) =>
      _$this._fechaNacimiento = fechaNacimiento;

  int? _limiteAnuncios;
  int? get limiteAnuncios => _$this._limiteAnuncios;
  set limiteAnuncios(int? limiteAnuncios) =>
      _$this._limiteAnuncios = limiteAnuncios;

  int? _anunciosCreados;
  int? get anunciosCreados => _$this._anunciosCreados;
  set anunciosCreados(int? anunciosCreados) =>
      _$this._anunciosCreados = anunciosCreados;

  bool? _esTienda;
  bool? get esTienda => _$this._esTienda;
  set esTienda(bool? esTienda) => _$this._esTienda = esTienda;

  String? _nombreTienda;
  String? get nombreTienda => _$this._nombreTienda;
  set nombreTienda(String? nombreTienda) => _$this._nombreTienda = nombreTienda;

  String? _logoTienda;
  String? get logoTienda => _$this._logoTienda;
  set logoTienda(String? logoTienda) => _$this._logoTienda = logoTienda;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _fechaNacimiento = $v.fechaNacimiento;
      _limiteAnuncios = $v.limiteAnuncios;
      _anunciosCreados = $v.anunciosCreados;
      _esTienda = $v.esTienda;
      _nombreTienda = $v.nombreTienda;
      _logoTienda = $v.logoTienda;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            fechaNacimiento: fechaNacimiento,
            limiteAnuncios: limiteAnuncios,
            anunciosCreados: anunciosCreados,
            esTienda: esTienda,
            nombreTienda: nombreTienda,
            logoTienda: logoTienda,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of producers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Producers> _$producersSerializer = new _$ProducersSerializer();

class _$ProducersSerializer implements StructuredSerializer<Producers> {
  @override
  final Iterable<Type> types = const [Producers, _$Producers];
  @override
  final String wireName = 'Producers';

  @override
  Iterable<Object> serialize(Serializers serializers, Producers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(ProducerMeta)));
    }
    if (object.anime != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(object.anime,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Anime)])));
    }
    return result;
  }

  @override
  Producers deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProducersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProducerMeta)) as ProducerMeta);
          break;
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Anime)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Producers extends Producers {
  @override
  final ProducerMeta meta;
  @override
  final BuiltList<Anime> anime;

  factory _$Producers([void Function(ProducersBuilder) updates]) =>
      (new ProducersBuilder()..update(updates)).build();

  _$Producers._({this.meta, this.anime}) : super._();

  @override
  Producers rebuild(void Function(ProducersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProducersBuilder toBuilder() => new ProducersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Producers && meta == other.meta && anime == other.anime;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, meta.hashCode), anime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Producers')
          ..add('meta', meta)
          ..add('anime', anime))
        .toString();
  }
}

class ProducersBuilder implements Builder<Producers, ProducersBuilder> {
  _$Producers _$v;

  ProducerMetaBuilder _meta;
  ProducerMetaBuilder get meta => _$this._meta ??= new ProducerMetaBuilder();
  set meta(ProducerMetaBuilder meta) => _$this._meta = meta;

  ListBuilder<Anime> _anime;
  ListBuilder<Anime> get anime => _$this._anime ??= new ListBuilder<Anime>();
  set anime(ListBuilder<Anime> anime) => _$this._anime = anime;

  ProducersBuilder();

  ProducersBuilder get _$this {
    if (_$v != null) {
      _meta = _$v.meta?.toBuilder();
      _anime = _$v.anime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Producers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Producers;
  }

  @override
  void update(void Function(ProducersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Producers build() {
    _$Producers _$result;
    try {
      _$result = _$v ??
          new _$Producers._(meta: _meta?.build(), anime: _anime?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'anime';
        _anime?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Producers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

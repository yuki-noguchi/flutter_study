import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$FetchAllTodos {
  Query$FetchAllTodos({
    this.todos,
    this.$__typename = 'Query',
  });

  factory Query$FetchAllTodos.fromJson(Map<String, dynamic> json) {
    final l$todos = json['todos'];
    final l$$__typename = json['__typename'];
    return Query$FetchAllTodos(
      todos: l$todos == null
          ? null
          : Query$FetchAllTodos$todos.fromJson(
              (l$todos as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchAllTodos$todos? todos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$todos = todos;
    _resultData['todos'] = l$todos?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$todos = todos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$todos,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchAllTodos) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$todos = todos;
    final lOther$todos = other.todos;
    if (l$todos != lOther$todos) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchAllTodos on Query$FetchAllTodos {
  CopyWith$Query$FetchAllTodos<Query$FetchAllTodos> get copyWith =>
      CopyWith$Query$FetchAllTodos(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchAllTodos<TRes> {
  factory CopyWith$Query$FetchAllTodos(
    Query$FetchAllTodos instance,
    TRes Function(Query$FetchAllTodos) then,
  ) = _CopyWithImpl$Query$FetchAllTodos;

  factory CopyWith$Query$FetchAllTodos.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchAllTodos;

  TRes call({
    Query$FetchAllTodos$todos? todos,
    String? $__typename,
  });
  CopyWith$Query$FetchAllTodos$todos<TRes> get todos;
}

class _CopyWithImpl$Query$FetchAllTodos<TRes>
    implements CopyWith$Query$FetchAllTodos<TRes> {
  _CopyWithImpl$Query$FetchAllTodos(
    this._instance,
    this._then,
  );

  final Query$FetchAllTodos _instance;

  final TRes Function(Query$FetchAllTodos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? todos = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchAllTodos(
        todos: todos == _undefined
            ? _instance.todos
            : (todos as Query$FetchAllTodos$todos?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchAllTodos$todos<TRes> get todos {
    final local$todos = _instance.todos;
    return local$todos == null
        ? CopyWith$Query$FetchAllTodos$todos.stub(_then(_instance))
        : CopyWith$Query$FetchAllTodos$todos(
            local$todos, (e) => call(todos: e));
  }
}

class _CopyWithStubImpl$Query$FetchAllTodos<TRes>
    implements CopyWith$Query$FetchAllTodos<TRes> {
  _CopyWithStubImpl$Query$FetchAllTodos(this._res);

  TRes _res;

  call({
    Query$FetchAllTodos$todos? todos,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchAllTodos$todos<TRes> get todos =>
      CopyWith$Query$FetchAllTodos$todos.stub(_res);
}

const documentNodeQueryFetchAllTodos = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchAllTodos'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'todos'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'data'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$FetchAllTodos _parserFn$Query$FetchAllTodos(Map<String, dynamic> data) =>
    Query$FetchAllTodos.fromJson(data);
typedef OnQueryComplete$Query$FetchAllTodos = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchAllTodos?,
);

class Options$Query$FetchAllTodos
    extends graphql.QueryOptions<Query$FetchAllTodos> {
  Options$Query$FetchAllTodos({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchAllTodos? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchAllTodos? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$FetchAllTodos(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchAllTodos,
          parserFn: _parserFn$Query$FetchAllTodos,
        );

  final OnQueryComplete$Query$FetchAllTodos? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchAllTodos
    extends graphql.WatchQueryOptions<Query$FetchAllTodos> {
  WatchOptions$Query$FetchAllTodos({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchAllTodos? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchAllTodos,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchAllTodos,
        );
}

class FetchMoreOptions$Query$FetchAllTodos extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchAllTodos(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchAllTodos,
        );
}

extension ClientExtension$Query$FetchAllTodos on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchAllTodos>> query$FetchAllTodos(
          [Options$Query$FetchAllTodos? options]) async =>
      await this.query(options ?? Options$Query$FetchAllTodos());
  graphql.ObservableQuery<Query$FetchAllTodos> watchQuery$FetchAllTodos(
          [WatchOptions$Query$FetchAllTodos? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchAllTodos());
  void writeQuery$FetchAllTodos({
    required Query$FetchAllTodos data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFetchAllTodos)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchAllTodos? readQuery$FetchAllTodos({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchAllTodos)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchAllTodos.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchAllTodos> useQuery$FetchAllTodos(
        [Options$Query$FetchAllTodos? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchAllTodos());
graphql.ObservableQuery<Query$FetchAllTodos> useWatchQuery$FetchAllTodos(
        [WatchOptions$Query$FetchAllTodos? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FetchAllTodos());

class Query$FetchAllTodos$Widget
    extends graphql_flutter.Query<Query$FetchAllTodos> {
  Query$FetchAllTodos$Widget({
    widgets.Key? key,
    Options$Query$FetchAllTodos? options,
    required graphql_flutter.QueryBuilder<Query$FetchAllTodos> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchAllTodos(),
          builder: builder,
        );
}

class Query$FetchAllTodos$todos {
  Query$FetchAllTodos$todos({
    this.data,
    this.$__typename = 'TodosPage',
  });

  factory Query$FetchAllTodos$todos.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Query$FetchAllTodos$todos(
      data: (l$data as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchAllTodos$todos$data.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchAllTodos$todos$data?>? data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$data == null ? null : Object.hashAll(l$data.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchAllTodos$todos) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != null && lOther$data != null) {
      if (l$data.length != lOther$data.length) {
        return false;
      }
      for (int i = 0; i < l$data.length; i++) {
        final l$data$entry = l$data[i];
        final lOther$data$entry = lOther$data[i];
        if (l$data$entry != lOther$data$entry) {
          return false;
        }
      }
    } else if (l$data != lOther$data) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchAllTodos$todos
    on Query$FetchAllTodos$todos {
  CopyWith$Query$FetchAllTodos$todos<Query$FetchAllTodos$todos> get copyWith =>
      CopyWith$Query$FetchAllTodos$todos(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchAllTodos$todos<TRes> {
  factory CopyWith$Query$FetchAllTodos$todos(
    Query$FetchAllTodos$todos instance,
    TRes Function(Query$FetchAllTodos$todos) then,
  ) = _CopyWithImpl$Query$FetchAllTodos$todos;

  factory CopyWith$Query$FetchAllTodos$todos.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchAllTodos$todos;

  TRes call({
    List<Query$FetchAllTodos$todos$data?>? data,
    String? $__typename,
  });
  TRes data(
      Iterable<Query$FetchAllTodos$todos$data?>? Function(
              Iterable<
                  CopyWith$Query$FetchAllTodos$todos$data<
                      Query$FetchAllTodos$todos$data>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchAllTodos$todos<TRes>
    implements CopyWith$Query$FetchAllTodos$todos<TRes> {
  _CopyWithImpl$Query$FetchAllTodos$todos(
    this._instance,
    this._then,
  );

  final Query$FetchAllTodos$todos _instance;

  final TRes Function(Query$FetchAllTodos$todos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchAllTodos$todos(
        data: data == _undefined
            ? _instance.data
            : (data as List<Query$FetchAllTodos$todos$data?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes data(
          Iterable<Query$FetchAllTodos$todos$data?>? Function(
                  Iterable<
                      CopyWith$Query$FetchAllTodos$todos$data<
                          Query$FetchAllTodos$todos$data>?>?)
              _fn) =>
      call(
          data: _fn(_instance.data?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchAllTodos$todos$data(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchAllTodos$todos<TRes>
    implements CopyWith$Query$FetchAllTodos$todos<TRes> {
  _CopyWithStubImpl$Query$FetchAllTodos$todos(this._res);

  TRes _res;

  call({
    List<Query$FetchAllTodos$todos$data?>? data,
    String? $__typename,
  }) =>
      _res;

  data(_fn) => _res;
}

class Query$FetchAllTodos$todos$data {
  Query$FetchAllTodos$todos$data({
    this.id,
    this.title,
    this.$__typename = 'Todo',
  });

  factory Query$FetchAllTodos$todos$data.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$FetchAllTodos$todos$data(
      id: (l$id as String?),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchAllTodos$todos$data) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchAllTodos$todos$data
    on Query$FetchAllTodos$todos$data {
  CopyWith$Query$FetchAllTodos$todos$data<Query$FetchAllTodos$todos$data>
      get copyWith => CopyWith$Query$FetchAllTodos$todos$data(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchAllTodos$todos$data<TRes> {
  factory CopyWith$Query$FetchAllTodos$todos$data(
    Query$FetchAllTodos$todos$data instance,
    TRes Function(Query$FetchAllTodos$todos$data) then,
  ) = _CopyWithImpl$Query$FetchAllTodos$todos$data;

  factory CopyWith$Query$FetchAllTodos$todos$data.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchAllTodos$todos$data;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchAllTodos$todos$data<TRes>
    implements CopyWith$Query$FetchAllTodos$todos$data<TRes> {
  _CopyWithImpl$Query$FetchAllTodos$todos$data(
    this._instance,
    this._then,
  );

  final Query$FetchAllTodos$todos$data _instance;

  final TRes Function(Query$FetchAllTodos$todos$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchAllTodos$todos$data(
        id: id == _undefined ? _instance.id : (id as String?),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchAllTodos$todos$data<TRes>
    implements CopyWith$Query$FetchAllTodos$todos$data<TRes> {
  _CopyWithStubImpl$Query$FetchAllTodos$todos$data(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

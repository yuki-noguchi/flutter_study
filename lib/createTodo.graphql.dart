import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$CreateTodo {
  factory Variables$Mutation$CreateTodo({required String title}) =>
      Variables$Mutation$CreateTodo._({
        r'title': title,
      });

  Variables$Mutation$CreateTodo._(this._$data);

  factory Variables$Mutation$CreateTodo.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    return Variables$Mutation$CreateTodo._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateTodo<Variables$Mutation$CreateTodo>
      get copyWith => CopyWith$Variables$Mutation$CreateTodo(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateTodo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    return Object.hashAll([l$title]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateTodo<TRes> {
  factory CopyWith$Variables$Mutation$CreateTodo(
    Variables$Mutation$CreateTodo instance,
    TRes Function(Variables$Mutation$CreateTodo) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateTodo;

  factory CopyWith$Variables$Mutation$CreateTodo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateTodo;

  TRes call({String? title});
}

class _CopyWithImpl$Variables$Mutation$CreateTodo<TRes>
    implements CopyWith$Variables$Mutation$CreateTodo<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateTodo(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateTodo _instance;

  final TRes Function(Variables$Mutation$CreateTodo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? title = _undefined}) =>
      _then(Variables$Mutation$CreateTodo._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateTodo<TRes>
    implements CopyWith$Variables$Mutation$CreateTodo<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateTodo(this._res);

  TRes _res;

  call({String? title}) => _res;
}

class Mutation$CreateTodo {
  Mutation$CreateTodo({
    this.createTodo,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateTodo.fromJson(Map<String, dynamic> json) {
    final l$createTodo = json['createTodo'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTodo(
      createTodo: l$createTodo == null
          ? null
          : Mutation$CreateTodo$createTodo.fromJson(
              (l$createTodo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateTodo$createTodo? createTodo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createTodo = createTodo;
    _resultData['createTodo'] = l$createTodo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createTodo = createTodo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createTodo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateTodo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTodo = createTodo;
    final lOther$createTodo = other.createTodo;
    if (l$createTodo != lOther$createTodo) {
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

extension UtilityExtension$Mutation$CreateTodo on Mutation$CreateTodo {
  CopyWith$Mutation$CreateTodo<Mutation$CreateTodo> get copyWith =>
      CopyWith$Mutation$CreateTodo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTodo<TRes> {
  factory CopyWith$Mutation$CreateTodo(
    Mutation$CreateTodo instance,
    TRes Function(Mutation$CreateTodo) then,
  ) = _CopyWithImpl$Mutation$CreateTodo;

  factory CopyWith$Mutation$CreateTodo.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTodo;

  TRes call({
    Mutation$CreateTodo$createTodo? createTodo,
    String? $__typename,
  });
  CopyWith$Mutation$CreateTodo$createTodo<TRes> get createTodo;
}

class _CopyWithImpl$Mutation$CreateTodo<TRes>
    implements CopyWith$Mutation$CreateTodo<TRes> {
  _CopyWithImpl$Mutation$CreateTodo(
    this._instance,
    this._then,
  );

  final Mutation$CreateTodo _instance;

  final TRes Function(Mutation$CreateTodo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createTodo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateTodo(
        createTodo: createTodo == _undefined
            ? _instance.createTodo
            : (createTodo as Mutation$CreateTodo$createTodo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateTodo$createTodo<TRes> get createTodo {
    final local$createTodo = _instance.createTodo;
    return local$createTodo == null
        ? CopyWith$Mutation$CreateTodo$createTodo.stub(_then(_instance))
        : CopyWith$Mutation$CreateTodo$createTodo(
            local$createTodo, (e) => call(createTodo: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateTodo<TRes>
    implements CopyWith$Mutation$CreateTodo<TRes> {
  _CopyWithStubImpl$Mutation$CreateTodo(this._res);

  TRes _res;

  call({
    Mutation$CreateTodo$createTodo? createTodo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateTodo$createTodo<TRes> get createTodo =>
      CopyWith$Mutation$CreateTodo$createTodo.stub(_res);
}

const documentNodeMutationCreateTodo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateTodo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'title')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createTodo'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'title'),
                value: VariableNode(name: NameNode(value: 'title')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'completed'),
                value: BooleanValueNode(value: true),
              ),
            ]),
          )
        ],
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
Mutation$CreateTodo _parserFn$Mutation$CreateTodo(Map<String, dynamic> data) =>
    Mutation$CreateTodo.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateTodo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateTodo?,
);

class Options$Mutation$CreateTodo
    extends graphql.MutationOptions<Mutation$CreateTodo> {
  Options$Mutation$CreateTodo({
    String? operationName,
    required Variables$Mutation$CreateTodo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateTodo? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateTodo? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateTodo>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateTodo(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateTodo,
          parserFn: _parserFn$Mutation$CreateTodo,
        );

  final OnMutationCompleted$Mutation$CreateTodo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateTodo
    extends graphql.WatchQueryOptions<Mutation$CreateTodo> {
  WatchOptions$Mutation$CreateTodo({
    String? operationName,
    required Variables$Mutation$CreateTodo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateTodo? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationCreateTodo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateTodo,
        );
}

extension ClientExtension$Mutation$CreateTodo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateTodo>> mutate$CreateTodo(
          Options$Mutation$CreateTodo options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateTodo> watchMutation$CreateTodo(
          WatchOptions$Mutation$CreateTodo options) =>
      this.watchMutation(options);
}

class Mutation$CreateTodo$HookResult {
  Mutation$CreateTodo$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateTodo runMutation;

  final graphql.QueryResult<Mutation$CreateTodo> result;
}

Mutation$CreateTodo$HookResult useMutation$CreateTodo(
    [WidgetOptions$Mutation$CreateTodo? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateTodo());
  return Mutation$CreateTodo$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateTodo> useWatchMutation$CreateTodo(
        WatchOptions$Mutation$CreateTodo options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateTodo
    extends graphql.MutationOptions<Mutation$CreateTodo> {
  WidgetOptions$Mutation$CreateTodo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateTodo? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateTodo? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateTodo>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateTodo(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateTodo,
          parserFn: _parserFn$Mutation$CreateTodo,
        );

  final OnMutationCompleted$Mutation$CreateTodo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateTodo
    = graphql.MultiSourceResult<Mutation$CreateTodo> Function(
  Variables$Mutation$CreateTodo, {
  Object? optimisticResult,
  Mutation$CreateTodo? typedOptimisticResult,
});
typedef Builder$Mutation$CreateTodo = widgets.Widget Function(
  RunMutation$Mutation$CreateTodo,
  graphql.QueryResult<Mutation$CreateTodo>?,
);

class Mutation$CreateTodo$Widget
    extends graphql_flutter.Mutation<Mutation$CreateTodo> {
  Mutation$CreateTodo$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateTodo? options,
    required Builder$Mutation$CreateTodo builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateTodo(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$CreateTodo$createTodo {
  Mutation$CreateTodo$createTodo({
    this.id,
    this.$__typename = 'Todo',
  });

  factory Mutation$CreateTodo$createTodo.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTodo$createTodo(
      id: (l$id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateTodo$createTodo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$CreateTodo$createTodo
    on Mutation$CreateTodo$createTodo {
  CopyWith$Mutation$CreateTodo$createTodo<Mutation$CreateTodo$createTodo>
      get copyWith => CopyWith$Mutation$CreateTodo$createTodo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateTodo$createTodo<TRes> {
  factory CopyWith$Mutation$CreateTodo$createTodo(
    Mutation$CreateTodo$createTodo instance,
    TRes Function(Mutation$CreateTodo$createTodo) then,
  ) = _CopyWithImpl$Mutation$CreateTodo$createTodo;

  factory CopyWith$Mutation$CreateTodo$createTodo.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTodo$createTodo;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateTodo$createTodo<TRes>
    implements CopyWith$Mutation$CreateTodo$createTodo<TRes> {
  _CopyWithImpl$Mutation$CreateTodo$createTodo(
    this._instance,
    this._then,
  );

  final Mutation$CreateTodo$createTodo _instance;

  final TRes Function(Mutation$CreateTodo$createTodo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateTodo$createTodo(
        id: id == _undefined ? _instance.id : (id as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateTodo$createTodo<TRes>
    implements CopyWith$Mutation$CreateTodo$createTodo<TRes> {
  _CopyWithStubImpl$Mutation$CreateTodo$createTodo(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

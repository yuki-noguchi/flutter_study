import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_study/createTodo.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'allTodos.graphql.dart';

void main() async {
  await initHiveForFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final link = HttpLink('https://graphqlzero.almansi.me/api');

    final client = ValueNotifier<GraphQLClient>(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(store: HiveStore()),
      ),
    );

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TodoList(),
      ),
    );
  }
}

class TodoList extends HookWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final allTodosResult = useQuery$FetchAllTodos().result;
    final createTodo = useMutation$CreateTodo();

    Widget body;

    if (allTodosResult.isLoading) {
      body = const Center(
        child: CircularProgressIndicator(),
      );
    } else if (allTodosResult.hasException) {
      body = Text("エラーが発生しました: ${allTodosResult.exception.toString()}");
    } else {
      final todos = allTodosResult.parsedData?.todos;
      body = ListView.builder(
        itemCount: todos?.data?.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(todos?.data?[index]?.title ?? ""),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: const NavigationBar(title: "TODOリスト"),
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var newTodo = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TodoAddPage()));
          if (newTodo != null) {
            createTodo
                .runMutation(Variables$Mutation$CreateTodo(title: newTodo));
          }
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class NavigationBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const NavigationBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class TodoAddPage extends StatefulWidget {
  const TodoAddPage({super.key});

  @override
  State<StatefulWidget> createState() => _TodoAddPage();
}

class _TodoAddPage extends State<TodoAddPage> {
  String _todoTitle = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NavigationBar(title: "TODOを追加"),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 64.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: "タイトルを入力"),
                onChanged: (value) {
                  setState(() {
                    _todoTitle = value;
                  });
                },
              ), //
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context, _todoTitle),
                  child: const Text("TODOを追加する")),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("キャンセル"))
            ])));
  }
}

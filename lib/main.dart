import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<StatefulWidget> createState() => _TodoListPage();
}

class _TodoListPage extends State<TodoList> {
  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavigationBar(title: "TODOリスト"),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(todos[index]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var newTodo = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TodoAddPage()));
          if (newTodo != null) {
            setState(() {
              todos.add(newTodo);
            });
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

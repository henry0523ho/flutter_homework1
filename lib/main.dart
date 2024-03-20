import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlue[500],
      title: const Text('About'),
      leading: const Icon(Icons.menu),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[500],
          title: const Text('About'),
          leading: const Icon(Icons.menu),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Woodwind Instruments',
              ),
              ContentRow(items: ["oboe", "clarinet", "flute"]),
              Text(
                'Brass Instruments',
              ),
              ContentRow(items: [
                "trumpet",
                "trombone",
                "frenchHorn",
                "euphonium",
                "tuba"
              ]),
              Text(
                'Percussion Instruments',
              ),
              ContentRow(items: ["timpani", "snareDrum", "xylophone"]),
              Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/berry.jpg'),
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage('assets/eyes.png'),
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Text("\n假裝這是廣告XDD",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      )),
                  Icon(
                    Icons.disabled_by_default_outlined,
                    size: 20,
                    color: Colors.black87,
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class ContentRow extends StatelessWidget {
  const ContentRow({super.key, required this.items});
  final List<String> items;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[for (var item in items) RowItem(title: item)],
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  const RowItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(
          image: AssetImage('assets/$title.jpg'),
          height: 200,
          width: 200,
          fit: BoxFit.cover,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter=_counter*_counter;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

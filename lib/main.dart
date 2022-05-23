import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;
  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  bool get isEmpty {
    return count == 0;
  }

  bool get isFull {
    return count >= 20;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Controle de entrada"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isFull) ...[
                  const Text(
                    "Tá cheio",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ] else ...[
                  const Text(
                    "Pode entrar",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ],
                Text(
                  "$count",
                  style: const TextStyle(fontSize: 100, color: Colors.white),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (isEmpty) ...[
                      TextButton(
                        onPressed: null,
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.green, width: 5),
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text("Saiu"),
                      ),
                    ] else ...[
                      TextButton(
                        onPressed: decrement,
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.green, width: 5),
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text("Saiu"),
                      ),
                    ],
                    const SizedBox(width: 40),
                    if (isFull) ...[
                      TextButton(
                        onPressed: null,
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.green, width: 5),
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text("Entrou"),
                      ),
                    ] else ...[
                      TextButton(
                        onPressed: increment,
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.green, width: 5),
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text("Entrou"),
                      ),
                    ]
                  ],
                ),
              ],
            )));
  }
}

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
  double first = 0;
  double second = 0;
  bool firstSlot = true;

  void add() {
    setState(() {
      first += second;
      second = 0;
    });
  }

  void sub() {
    setState(() {
      first -= second;
    });
  }

  void mult() {
    setState(() {
      first *= second;
    });
  }

  void divide() {
    setState(() {
      first = first / second;
    });
  }

  void setNumber(double num) {
    setState(() {
      if (firstSlot) {
        first = first * 10 + num;
      } else {
        second = second * 10 + num;
      }
    });
  }

  void nextSlot() {
    setState(() {
      firstSlot = !firstSlot;
    });
  }

  void clear() {
    setState(() {
      first = 0;
      second = 0;
      firstSlot = true;
    });
  }

  void switchToFirstSlot() {
    setState(() {
      firstSlot = true;
    });
  }

  void switchToSecondSlot() {
    setState(() {
      firstSlot = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Calculadora de notação pós-fixa"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (firstSlot) ...[
                  TextButton(
                    onPressed: switchToFirstSlot,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.all(40)),
                    child: Text(
                        style: const TextStyle(color: Colors.white),
                        first.toString()),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: switchToSecondSlot,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        padding: const EdgeInsets.all(40)),
                    child: Text(
                        style: const TextStyle(color: Colors.white),
                        second.toString()),
                  ),
                ] else ...[
                  TextButton(
                    onPressed: switchToFirstSlot,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        padding: const EdgeInsets.all(40)),
                    child: Text(
                        style: const TextStyle(color: Colors.white),
                        first.toString()),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: switchToSecondSlot,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.all(40)),
                    child: Text(
                        style: const TextStyle(color: Colors.white),
                        second.toString()),
                  ),
                ]
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setNumber(1);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("1"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    setNumber(2);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("2"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    setNumber(3);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("3"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: add,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("+"),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setNumber(4);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("4"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    setNumber(5);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("5"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    setNumber(6);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("6"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: sub,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("-"),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setNumber(7);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("7"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    setNumber(8);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("8"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    setNumber(9);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("9"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: add,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("*"),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: clear,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("C"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    setNumber(0);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("0"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: nextSlot,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("->"),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: divide,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text("/"),
                ),
              ],
            ),
          ],
        ));
  }
}

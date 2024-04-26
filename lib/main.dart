import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "demo_app",
      home: MyHomePage(title: "demo_app"),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedFlor = "Ninguna";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Text("Flor seleccionada: $selectedFlor \n",
              style: const TextStyle(fontSize: 27)),
          const SizedBox(height: 30),
          SizedBox(
            width: 250,
            child: RadioMenuButton(
              value: "Lirio ",
              groupValue: selectedFlor,
              onChanged: (selectedValue) {
                setState(() => selectedFlor = selectedValue!);
              },
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.white)),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 60,
                    child: Image.network(
                        "https://raw.githubusercontent.com/JazLopezMartinez/Img_FlutterFlow_IOS_6J/main/UII_IMG/Png2.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Lirio", style: const TextStyle(fontSize: 25)),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 250,
            child: RadioMenuButton(
              value: "Narciso",
              groupValue: selectedFlor,
              onChanged: (selectedValue) {
                setState(() => selectedFlor = selectedValue!);
              },
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.white)),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 60,
                    child: Image.network(
                        "https://raw.githubusercontent.com/JazLopezMartinez/Img_FlutterFlow_IOS_6J/main/UII_IMG/Png3.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Narciso", style: const TextStyle(fontSize: 25)),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 250,
            child: RadioMenuButton(
              value: "Peonia ",
              groupValue: selectedFlor,
              onChanged: (selectedValue) {
                setState(() => selectedFlor = selectedValue!);
              },
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.white)),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 60,
                    child: Image.network(
                        "https://raw.githubusercontent.com/JazLopezMartinez/Img_FlutterFlow_IOS_6J/main/UII_IMG/Png4.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Peonia", style: const TextStyle(fontSize: 25)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

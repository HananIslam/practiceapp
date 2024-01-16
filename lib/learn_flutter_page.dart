import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.info))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('Images/woman.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  'This is text widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.blue : Colors.red),
              onPressed: () {
                debugPrint("Elevated Clicked");
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("OutlinedButton Clicked");
              },
              child: const Text("OutlinedButton Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("TextButton Clicked");
              },
              child: const Text("TextButton Button"),
            ),
            GestureDetector(
              onTap: () => {debugPrint("row clicked")},
              behavior: HitTestBehavior.opaque,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                  Text("Row Widget"),
                  Icon(Icons.apartment, color: Colors.red)
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool valueOfbool) => {
                      setState(() {
                        isSwitch = valueOfbool;
                      })
                    }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? checkboxValue) {
                  setState(() {
                    isCheckbox = checkboxValue;
                  });
                }),
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Random-image.jpg/800px-Random-image.jpg'),
            Image.asset('Images/woman.jpg'),
          ],
        ),
      ),
    );
  }
}

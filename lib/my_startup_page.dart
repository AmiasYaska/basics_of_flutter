import 'package:flutter/material.dart';
import 'package:learning/home_page.dart';

class MyStartupPage extends StatefulWidget {
  const MyStartupPage({super.key});
  _MyStartupPageState createState() => _MyStartupPageState();
}

class _MyStartupPageState extends State<MyStartupPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StartUp Page'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(
              MaterialPageRoute(builder: (BuildContext context) {
                return const HomePage();
              }),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/apple.jpg'),
            const SizedBox(height: 50),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.orange,
              child: const Center(
                child: Text('This should be second page'),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.blue : Colors.orange,
              ),
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 20.0),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            const SizedBox(height: 30.0),
            GestureDetector(
              onTap: () {
                debugPrint('It has been pressed.');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text('Departments'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheckBox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckBox = newBool;
                });
              },
            ),
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg')
          ],
        ),
      ),
    );
  }
}

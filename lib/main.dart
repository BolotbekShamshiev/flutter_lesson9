import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homework1(),
    );
  }
}

class Homework1 extends StatefulWidget {
  const Homework1({super.key});

  @override
  State<Homework1> createState() => _Homework1State();
}

class _Homework1State extends State<Homework1> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  double summa = 0;

  void RaschetSummy() {
    setState(() {
      double chislo1 = double.tryParse(controller1.text) ?? 0;
      double chislo2 = double.tryParse(controller2.text) ?? 0;
      summa = chislo1 + chislo2;
    });
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            TextField(
              controller: controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'введите первое число',
                hintText: 'введите первое число',
                filled: true,
                fillColor: Colors.blue.withOpacity(0.2),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'введите второе число',
                hintText: 'введите второе число',
                filled: true,
                fillColor: Colors.blue.withOpacity(0.2),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '=',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      RaschetSummy();
                    }),
                FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {}),
                FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: Text(
                      '*',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {}),
                FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: Text(
                      '/',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {}),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Результат:',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
                alignment: Alignment.center,
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.5),
                  border: Border.all(
                    width: 2,
                  ),
                ),
                child: Text(
                  '$summa',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

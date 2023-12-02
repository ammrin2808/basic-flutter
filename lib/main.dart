import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 240, 74, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'สวัสดีซุมเจ้า'), // กำหนดหน้าแรกของแอพ
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _currentImageUrl =
      "https://yt3.googleusercontent.com/ytc/APkrFKZH6tIoZhfKwKI7FOvsrNltkMWT_BluGNvT4mAw=s900-c-k-c0x00ffffff-no-rj"; // กำหนดค่าเริ่มต้นของรูปภาพ

  void _incrementCounter() {
    setState(() {
      if (_counter < 99) {
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _changeImage(String imageUrl) {
    setState(() {
      _currentImageUrl = imageUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(_currentImageUrl),
            const Text(
              'กดฉันสิจ๊ะ',
              style: TextStyle(
                fontSize: 25, // ขนาดตัวอักษร
                fontWeight: FontWeight.bold, // ตัวหนา
                color: Colors.blue, // สีตัวอักษร
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        _incrementCounter();
                      },
                      icon: const Icon(
                        Icons.add_link,
                        color: Color.fromARGB(255, 255, 255, 255), //สีไอคอน
                      ),
                      label: const Text("เพิ่มค่า",
                          style: TextStyle(color: Colors.white)), //สีตัวอักษร
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Color.fromARGB(255, 58, 243, 33), //สีปุ่ม
                      ),
                    ), // ปุ่มเพิ่มค่า
                    const SizedBox(width: 5),
                    ElevatedButton.icon(
                      onPressed: () {
                        _decrementCounter();
                      },
                      icon: const Icon(
                        Icons.remove_circle,
                        color: Color.fromARGB(255, 0, 34, 255), //สีไอคอน
                      ),
                      label: const Text("ลดค่า",
                          style: TextStyle(color: Colors.white)), //สีตัวอักษร
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Color.fromARGB(255, 243, 33, 33), //สีปุ่ม
                      ),
                    ), // ปุ่มลดค่า
                    const SizedBox(width: 5),
                    ElevatedButton.icon(
                      onPressed: () {
                        _resetCounter();
                      },
                      icon: const Icon(Icons.reset_tv,
                          color: Color.fromARGB(255, 23, 243, 239)), //สีไอคอน
                      label: const Text("รีเซ็ต",
                          style: TextStyle(color: Colors.white)), //สีตัวอักษร
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Color.fromARGB(255, 243, 149, 33), //สีปุ่ม
                      ),
                    ), // ปุ่มรีเซ็ต
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        _changeImage(
                            "https://yt3.googleusercontent.com/ytc/APkrFKZH6tIoZhfKwKI7FOvsrNltkMWT_BluGNvT4mAw=s900-c-k-c0x00ffffff-no-rj");
                      },
                      icon: const Icon(Icons.picture_in_picture,
                          color: Color.fromARGB(255, 76, 175, 120)), //สีไอคอน
                      label: const Text("รูปที่ 1",
                          style: TextStyle(color: Colors.white)), //สีตัวอักษร
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Color.fromARGB(255, 138, 33, 243), //สีปุ่ม
                      ),
                    ), // ปุ่มรูปที่ 1
                    const SizedBox(width: 5),
                    ElevatedButton.icon(
                      onPressed: () {
                        _changeImage(
                            "https://yt3.googleusercontent.com/261SmvWN1POapY_UkjZILelig2Il_8-o-5ryWsofq3Y5GCqrxz2be9vl4ItlIwd_8RmC5VSVwg=s900-c-k-c0x00ffffff-no-rj");
                      },
                      icon: const Icon(Icons.picture_in_picture,
                          color: Color.fromARGB(255, 175, 76, 147)), //สีไอคอน
                      label: const Text("รูปที่ 2",
                          style: TextStyle(color: Colors.white)), //สีตัวอักษร
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Color.fromARGB(255, 86, 33, 243), //สีปุ่ม
                      ),
                    ), // ปุ่มรูปที่ 2
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add_link),
      // ),
    );
  }
}

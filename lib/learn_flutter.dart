import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  
  var _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(onPressed:(){
            debugPrint('Actions');
          }, 
          icon: const Icon(
            Icons.info_outline,
          ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/Einshtein.jpg'),
            SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child:  Text(
                  "This is the text widget",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.blue, ),
              onPressed: () {
              debugPrint("Elevated Button");
            }, 
            child: const Text("Elevated Button"),),
            OutlinedButton(onPressed: () {
              debugPrint("OutlinedButton Button");
            }, 
            child: const Text("OutlinedButton Button"),),
            TextButton(onPressed: () {
              debugPrint("TextButton Button");
            }, 
            child: const Text("TextButton Button"),),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is the row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text("Row widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Switch(value: isSwitch, 
                    onChanged: (bool newBool) {
                      setState(() {
                       isSwitch = newBool; 
                      });
                    }),
                    Checkbox(value: isCheckBox, onChanged: (bool? newBool) {
                      setState(() {
                        isCheckBox = newBool;
                      });
                    }),
                    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSa1yzpAYmV6ziEO-LBnKvLLuxteDtp7bZxg&usqp=CAU'),
                    // AspectRatio(
                    //   aspectRatio: 2/2,
                    //   child: Image.asset("images/Einshtein.jpg"),
                    // ),
                    // Placeholder(
                    //   fallbackHeight: 200,
                    //   color: Colors.blue  ,
                    //   strokeWidth: 5,
                    // ),
                    // Transform(transform: Matrix4.identity()
                    //                       ..setEntry(3, 2, 0.001)
                    //                       ..rotateX(0.01 * 10)
                    //                       ..rotateY(-0.01 * 1),
                    //                       alignment: FractionalOffset.center,
                    //                       child: GestureDetector(),)
                    // GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
                    // children: [Image.asset("images/Einshtein.jpg")]), 
                    // Column(
                    //   children: [
                    //     Image.asset("images/Einshtein.jpg"),
                    //     Spacer(),
                    //     Image.asset("images/Einshtein.jpg"),
                    //     Image.asset("images/Einshtein.jpg"),
                    //   ],
                    // )
                    // ListWheelScrollView(
                    //                     itemExtent: 250, 
                    //                     children: [Image.asset("images/Einshtein.jpg")],
                    //                     diameterRatio: 1000,)
            
          ],
        ),
      ),
    );
  }
}

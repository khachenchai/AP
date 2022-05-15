// import 'dart:ui';

import 'package:ap_web/view/login.dart';
import 'package:ap_web/view/sign_up.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int divided = 3;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(40, 190, 190, 190),
      // backgroundColor: const Color(0xFFBAFFBC),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 8,
        title: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                // color: Colors.green.shade700.withOpacity(0.9),
              ),
              child: Image.asset('assets/img/logo.png'),
              height: 64
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 8, 8, 8),
              child: Text("ห้างหุ้นส่วนจำกัด ภูเก็ต เอ แอนด์ พี เทรดดิ้ง", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 28, 16),
            child: TextButton.icon(
              icon: const Icon(Icons.person, size: 32, color: Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
              }, 
              label: const Text("ลงชื่อเข้าใช้ / Sign Up", style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
              style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all<Color>(const Color(0x000000ff))
                elevation: MaterialStateProperty.all<double>(0)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 28, 16),
            child: TextButton.icon(
              icon: const Icon(Icons.person, size: 32, color: Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
              }, 
              label: const Text("เข้าสู่ระบบ / Log-in", style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
              style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all<Color>(const Color(0x000000ff))
                elevation: MaterialStateProperty.all<double>(0)
              ),
            ),
          ),
        ]
      ),
      body: ListView(
        padding: const EdgeInsets.all(28),
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("รายละเอียดสินค้า", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700)),
                ElevatedButton.icon(
                  icon: const Icon(Icons.contact_phone_outlined, color: Colors.black, size: 28,),
                  onPressed: () {}, 
                  label: const Text("ติดต่อ/สอบถาม", style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color(0x000000ff)),
                    elevation: MaterialStateProperty.all<double>(0)
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          SizedBox(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                buildGrid(),
                buildGrid(),
                buildGrid(),
                buildGrid(),
                buildGrid(),
                buildGrid(),
                buildGrid(),
                buildGrid(),
                buildGrid(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Card buildGrid() {
    return Card(
      child: InkWell(
        onTap: () => print("object"),
        child: Container(
          color: Colors.black,
          child: GridTile(
            child: Center(
              child: Stack(
                children: [
                  MouseRegion(
                    onEnter: (f) {
                      isHover = true;
                    },
                    onExit: (f) {
                      isHover = false;
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      child: FlutterLogo(
                        size: isHover ? 300 : 700,
                      ),
                    ),
                  ),
                  Positioned(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.white,
                            ]
                          ),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                    bottom: 0,
                  ),
                  const Positioned(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Text("ไม้มะค่า", style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                    bottom: 16,
                  )
                ],
              ),
            )
          ),
        ),
      ),
    );
  }

}
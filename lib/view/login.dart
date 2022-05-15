import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: InkWell(
                child: Image.asset('assets/img/logo.png'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()), (route) => false);
                },
              ),
              height: 64
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 8, 8, 8),
              child: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFBAFFBC),
      body: Center(
        child: Card(
          elevation: 5,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.height / 1.5,
            child: Form(
              key: formKey,
              child: ListView(
                padding: const EdgeInsets.all(32),
                children: [
                  const Text("เข้าสู่ระบบ / Log-in", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
                  const SizedBox(height: 40),
                  emailFormField(),
                  const SizedBox(height: 24),
                  passwordFormField(),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      child: const Text("เข้าสู่ระบบ / Log-in", style: TextStyle(fontSize: 20))
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField rePasswordFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'ยืนยันรหัสผ่าน / Re-check password',
        hintText: 'โปรดกรอกรหัสผ่านของท่านอีกครั้งเพื่อยืนยัน'
      ),
    );
  }

  TextFormField passwordFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'รหัสผ่าน / Password',
        hintText: 'โปรดกรอกรหัสผ่านของท่าน'
      ),
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'อีเมล / Email',
        hintText: 'โปรดกรอกอีเมลของท่าน'
      ),
    );
  }

  TextFormField nameFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'ชื่อ / Name',
        hintText: 'โปรดกรอกชื่อ ไม่ต้องใส่คำนำหน้า'
      ),
    );
  }
}

import 'package:ap_web/view/homepage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBAFFBC),
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
              child: Text("ลงชื่อเข้าใช้", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      body: Center(
        child: Card(
          elevation: 5,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.height / 1.5,
            child: Form(
              key: formKey,
              child: ListView(
                padding: const EdgeInsets.all(32),
                children: [
                  const Text("ลงชื่อเข้าใช้ / Sign Up", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
                  const SizedBox(height: 24),
                  nameFormField(),
                  const SizedBox(height: 24),
                  emailFormField(),
                  const SizedBox(height: 24),
                  passwordFormField(),
                  const SizedBox(height: 24),
                  rePasswordFormField(),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 36,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      child: const Text("ลงชื่อเข้าใช้ / Sign Up", style: TextStyle(fontSize: 20))
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
      // onSaved: (String name) {
      //   formKey.name = name;
      // },
    );
  }
}
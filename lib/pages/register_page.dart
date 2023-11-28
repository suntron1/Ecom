import 'package:flutter/material.dart';
import 'package:modernlogintute/components/my_button.dart';
import 'package:modernlogintute/components/my_textfield.dart';
import 'package:modernlogintute/components/square_tile.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController LnaneController = TextEditingController();
    TextEditingController EmailController = TextEditingController();
    TextEditingController PhoneController = TextEditingController();
    TextEditingController passwordcomfirmController = TextEditingController();

    void registerUser() {
      // Implement the registration functionality
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                const Icon(
                  Icons.person_add,
                  size: 100,
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: usernameController,
                  hintText: 'ชื่อ',
                  obscureText: false,
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: LnaneController,
                  hintText: 'นามสกุล',
                  obscureText: false,
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: EmailController,
                  hintText: 'รหัสสมาชิก/อีเมล',
                  obscureText: false,
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: PhoneController,
                  hintText: 'เบอร์โทร',
                  obscureText: false,
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: passwordController,
                  hintText: 'รหัสผ่าน',
                  obscureText: true,
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: passwordcomfirmController,
                  hintText: 'ยืนยันรหัสผ่าน',
                  obscureText: true,
                ),
                const SizedBox(height: 5),
                const SizedBox(height: 25),
                MyButton(
                  onTap: registerUser,
                  text: 'Register Now',
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // google button
                    SquareTile(imagePath: 'lib/images/google.png'),

                    SizedBox(width: 25),

                    // apple button
                    SquareTile(imagePath: 'lib/images/fb.png'),
                    SizedBox(width: 25),
                  ],
                ),
                const SizedBox(height: 5),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        // Navigate to LoginPage
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

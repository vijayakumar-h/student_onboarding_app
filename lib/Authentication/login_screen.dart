import 'package:student_onboarding_app/utils/common_exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: const [0.1, 0.9],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [Colors.purple.withOpacity(0.6), Colors.white],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 42,
                  child: CircleAvatar(
                    radius: 40,
                    child: Icon(
                      Icons.person_outline,
                      size: 60,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 68),
                  child: Text(
                    "Enter Your Student ID and password to access your account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                const AppTextField(
                  placeHolder: "Enter Your Student ID",
                  prefixIcon: Icon(Icons.fingerprint),
                ),
                const SizedBox(height: 12),
                const AppTextField(
                  placeHolder: "Password",
                  prefixIcon: Icon(Icons.lock_outline),
                ),
                const SizedBox(height: 20),
                PrimaryButton(
                  isExpanded: true,
                  title: "LOGIN",
                  onTap: () {},
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Trouble in Login?'),
                    SizedBox(width: 4),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Help',
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

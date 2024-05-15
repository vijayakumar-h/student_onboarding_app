import 'package:student_onboarding_app/utils/common_exports.dart';

class CrateAccount extends StatelessWidget {
  const CrateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> textFieldList = {
      "Enter Your Name": const Icon(Icons.person_outline),
      "Enter Your Student ID": const Icon(Icons.fingerprint),
      "Enter Your eMail ID": const Icon(Icons.email_outlined),
      "Enter Your Course Name": const Icon(Icons.event_note_rounded),
      "Enter Your Password": const Icon(Icons.lock),
      "Confirm Password": const Icon(Icons.lock),
    };
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                "Create Account",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w700),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Follow the below steps to create your new account",
                  textAlign: TextAlign.center,
                  textWidthBasis: TextWidthBasis.parent,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ...textFieldList.entries.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: AppTextField(
                    placeHolder: e.key,
                    prefixIcon: e.value,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                title: 'Submit',
                isExpanded: true,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

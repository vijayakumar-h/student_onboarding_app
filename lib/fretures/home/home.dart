import 'package:student_onboarding_app/utils/common_exports.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> contentList = {
      "Exam": Icons.my_library_books_outlined,
      "Fees": Icons.monetization_on_outlined,
      "E-library": Icons.local_library_outlined,
      "Events": Icons.emoji_events_outlined,
      "Results": Icons.card_membership,
      "syllabus": Icons.content_paste,
    };
    return AppScaffold(
      title: "Home",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppPageViewWidget(),
            const Text("Content"),
            const SizedBox(height: 12),
            Card(
              child: GridView(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 72,
                ),
                children: [
                  ...contentList.entries.map(
                    (e) => Column(
                      children: [
                        ContentsWidget(
                          icon: e.value,
                          title: e.key,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentsWidget extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final IconData icon;

  const ContentsWidget({
    super.key,
    this.width = 40,
    this.height = 40,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.deepPurple,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
            side: BorderSide(width: 0.4, color: Colors.transparent)
          ),
          child: SizedBox(
            height: height,
            width: width,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        Text(title),
      ],
    );
  }
}

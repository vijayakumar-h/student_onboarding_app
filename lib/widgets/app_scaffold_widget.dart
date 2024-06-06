import 'package:student_onboarding_app/utils/common_exports.dart';

class AppScaffold extends StatelessWidget {
  final dynamic title;
  final Widget body;
  final bool centerTitle;

  const AppScaffold({
    super.key,
    this.title,
    required this.body,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            title: title is Widget
                ? title as Widget
                : Text(
                    title as String,
                    style: const TextStyle(fontSize: 24),
                  ),
            elevation: 1,
            pinned: true,
            floating: true,
            centerTitle: centerTitle,
          ),
        ];
      },
      body: body,
    );
  }
}

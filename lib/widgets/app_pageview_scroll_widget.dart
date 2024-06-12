import 'package:student_onboarding_app/utils/common_exports.dart';

class AppPageViewWidget extends StatelessWidget {
  const AppPageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    final ValueNotifier<int> indexValue = ValueNotifier<int>(0);
    final List<Image> imageList = [
      Image.asset("assets/images/img_1.png", fit: BoxFit.fill),
      Image.asset("assets/images/img_1.png", fit: BoxFit.fill),
      Image.asset("assets/images/img_1.png", fit: BoxFit.fill),
    ];
    return ValueListenableBuilder(
      valueListenable: indexValue,
      builder: (context, newValue, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: PageView.builder(
                  padEnds: false,
                  controller: pageController,
                  itemCount: imageList.length,
                  allowImplicitScrolling: false,
                  itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: imageList[index]),
                  onPageChanged: (int value) => indexValue.value = value,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  imageList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: newValue == index ? 9 : 7,
                      width: newValue == index ? 9 : 7,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: newValue == index
                              ? Colors.deepPurple
                              : Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}

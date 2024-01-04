import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/providers/scroll_provider.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/utils/metrics.dart';

////https://github.com/serdarpolat/Flutter-Home-Design-Company-App/blob/78693e16c109a5d94d612f1ea85dac1b7cc2a9cf/lib/app/layouts/header/header.dart#L8
///https://flutterawesome.com/flutter-web-signin-signup-ui-design/
///https://flutterawesome.com/responsive-blog-theme-using-flutter/

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  late ScrollController _baseController;

  final GlobalKey _headerKey = GlobalKey();

  Future scrollToItem(GlobalKey key) async {
    await Scrollable.ensureVisible(key.currentContext!, duration: const Duration(milliseconds: 480));
  }

  @override
  void initState() {
    _baseController = ScrollController();
    _baseController.addListener(() {
      if (_baseController.offset > 500) {
        ref.read(scrollProvider.notifier).change(true);
      } else {
        ref.read(scrollProvider.notifier).change(false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _baseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SizedBox(
        width: Metrics.width(context),
        height: Metrics.height(context),
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _baseController,
              child: Column(
                children: [
                  Header(headerKey: _headerKey),
                  Container(
                    width: Metrics.width(context),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xfffef4ec),
                          Color(0xffffffff),
                          Color(0xfffef4ec),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      children: [
                        const HowItWorks(),
                        Container(
                          width: Metrics.width(context),
                          height: 2,
                          color: const Color(0xfff2e8df),
                        ),
                        // const AboutUs(),
                        // const Experiences(),
                        // const Brands(),
                        // const CompletedProjects(),
                        // const CustomDecoratives(),
                      ],
                    ),
                  ),
                  //const Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
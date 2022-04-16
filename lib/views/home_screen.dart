import 'package:flutter/material.dart';
import 'package:pageview_widget/controllers/controllers.dart';
import 'package:pageview_widget/widgets/page1_widget.dart';
import 'package:pageview_widget/widgets/page2_widget.dart';
import 'package:pageview_widget/widgets/page3_widget.dart';
import 'package:pageview_widget/widgets/primary_top_appbar.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void dispose() {
    Controllers.pageController.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PrimaryTopAppbar(title: Text(widget.title)),
        body: PageView(
          controller: Controllers.pageController,
          allowImplicitScrolling: true,
          scrollDirection: Axis.horizontal,
          scrollBehavior: const ScrollBehavior(
            androidOverscrollIndicator: AndroidOverscrollIndicator.glow
          ),
          children: const [
            Page1Widget(),
            Page2Widget(),
            Page3Widget()
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_responsividade/breakpoints.dart';
import 'package:flutter_responsividade/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:flutter_responsividade/pages/home/widgets/app_bar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      return Scaffold(
        appBar: contraints.maxWidth < mobileBreakpoint
            ? const PreferredSize(preferredSize: Size(double.infinity, 52), child: MobileAppBar())
            : const PreferredSize(preferredSize: Size(double.infinity, 72), child: WebAppBar()),
        drawer: contraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
      );
    });
  }
}

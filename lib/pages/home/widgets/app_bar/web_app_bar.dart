import 'package:flutter/material.dart';
import 'package:flutter_responsividade/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(children: [
        const Text('Flutter'),
        const SizedBox(width: 32),
        const WebAppBarResponsiveContent(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        const SizedBox(width: 24),
        SizedBox(
          height: 38,
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                side: const BorderSide(width: 3.0, color: Colors.white)),
            child: const Text('Login'),
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          height: 38,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
              child: const Text('Cadastre-se', style: TextStyle(color: Colors.black))),
        )
      ]),
    );
  }
}

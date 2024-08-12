import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey[500]!),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 4),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.grey[500])),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pesquisar',
                          isCollapsed: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (constraints.maxWidth >= 400) ...[
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                child: const Text('Aprender', style: TextStyle(color: Colors.black)),
              ),
            ],
            if (constraints.maxWidth >= 500) ...[
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                child: const Text('Flutter', style: TextStyle(color: Colors.black)),
              ),
            ]
          ],
        );
      },
    ));
  }
}

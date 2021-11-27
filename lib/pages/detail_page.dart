import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'favo_provider.dart';

class DetailPage extends HookConsumerWidget {
  DetailPage({required this.title, required this.index});

  String title;
  int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _isFavoList = ref.watch(favoProvider).data;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title),
              IconButton(
                onPressed: () {
                  ref
                      .read(favoProvider.notifier)
                      .favoriteChange(data: _isFavoList, index: index);
                },
                icon: Icon(Icons.favorite,
                    color: _isFavoList[index].isFavo == true
                        ? Colors.red
                        : Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

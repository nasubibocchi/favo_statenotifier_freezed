import 'package:favo_statenotifier_freezed/dammy_data/list_data.dart';
import 'package:favo_statenotifier_freezed/entities/contents.dart';
import 'package:favo_statenotifier_freezed/pages/detail_page.dart';
import 'package:favo_statenotifier_freezed/pages/favo_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoWidget extends HookConsumerWidget {
  List<Contents> dammyList = dammyData
      .map((e) => Contents(title: e['title'], isFavo: e['isFavo']))
      .toList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    useEffect(() {
      ref.read(favoProvider.notifier).initState(data: dammyList);
    }, const []);
    final _isFavoList = ref.watch(favoProvider).data;

    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: dammyList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(
                                title: _isFavoList[index].title,
                                index: index,
                              )));
                },
                child: Card(
                  child: SizedBox(
                    height: size.height * 0.1,
                    child: Row(children: [
                      SizedBox(
                        width: size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(_isFavoList[index].title.toString()),
                        ),
                      ),
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
                    ]),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

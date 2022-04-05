import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/ui/view/list_sample_view_controller.dart';

class ListSampleView extends StatelessWidget {
  const ListSampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ListSampleViewController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('List sample'),
      ),
      body: Obx(() => ListView.separated(
            itemCount: controller.sampleList.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return ListTile(title: Text(controller.sampleList[index].toString()));
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.addList,
        tooltip: 'Add list',
        child: const Icon(Icons.add),
      ),
    );
  }
}

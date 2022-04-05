import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/ui/view/object_api_view_controller.dart';

class ObjectApiView extends StatelessWidget {
  const ObjectApiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ObjectApiViewController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Address'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Input postal code',
            ),
            Obx(() => Text(
              controller.address.value?.countries.name ?? '',
              style: Theme.of(context).textTheme.headline4,
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.fetchAddress,
        tooltip: 'search',
        child: const Icon(Icons.search),
      ),
    );
  }
}

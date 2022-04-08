import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/ui/controller/object_api_view_controller.dart';

class ObjectApiView extends StatelessWidget {
  const ObjectApiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ObjectApiViewController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api sample'),
      ),
      body: controller.obx(
        (address) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('↓Api result below↓'),
              Text(
                address?.countries.name ?? '',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        onEmpty: const Center(child: Text('empty')),
        onError: (msg) => Center(
          child: Text(msg ?? ''),
        ),
      ),
    );
  }
}

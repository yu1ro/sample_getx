import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/ui/controller/home_view_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeViewController());
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
                  '${controller.count}',
                  style: Theme.of(context).textTheme.headline4,
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.toApiSampleView,
              child: const Text('To Api Sample'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.toListSampleView,
              child: const Text('To List Sample'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.showDialog,
              child: const Text('show dialog'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

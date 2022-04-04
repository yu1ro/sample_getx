import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/ui/view/address_view_controller.dart';

class AddressView extends StatelessWidget {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddressViewController());
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
            // TextFormField(
            //   keyboardType: TextInputType.number,
            //   maxLength: 7,
            //   onChanged: (text) => controller.zipcode = text,
            // ),
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

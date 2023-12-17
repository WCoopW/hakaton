import 'package:flutter/material.dart';
import 'package:flutter_test_app/DeviceList.dart';

int Count = 1;

class AddDevicePage extends StatefulWidget {
  const AddDevicePage({super.key});

  @override
  State<AddDevicePage> createState() => _AddDevicePageState();
}

class _AddDevicePageState extends State<AddDevicePage> {
  @override
  Widget build(BuildContext context) {
    if (Count > 0) {
      return const Scaffold(
        body: CardExample(),
      );
    }
    if (Count == 0) {
      return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Column(children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            const Text(
              'Add new Device',
            ),
          ]));
    } else {
      return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Column(children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            const Text(
              'Add new Device',
            ),
          ]));
    }
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text('Devices')),
      ),
      body: Container(child: const DeviceList()),
    );
  }
}

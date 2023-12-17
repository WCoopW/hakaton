import 'package:flutter/material.dart';
import 'package:flutter_test_app/DeviceItem.dart';
import 'package:flutter_test_app/addbutton.dart';
import 'package:flutter_test_app/screens/AddDevicePage.dart';

class DeviceList extends StatelessWidget {
  const DeviceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(),
        Align(alignment: Alignment.bottomCenter, child: _updateButton())
      ],
    );
  }
}

Widget _list() {
  return ListView.separated(
    itemCount: 5,
    padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
    separatorBuilder: (context, index) {
      return const SizedBox(
        height: 8,
      );
    },
    itemBuilder: (BuildContext context, int index) {
      return const DeviceItem();
    },
  );
}

Widget _updateButton() {
  return SafeArea(
      child: AddButton(
          title: 'Add new device',
          onTap: () {
            _list();
          }));
}

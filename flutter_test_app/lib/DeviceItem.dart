import 'package:flutter/material.dart';

class DeviceItem extends StatelessWidget {
  const DeviceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.grey,
        elevation: 0.06,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: Row(children: <Widget>[
              _title(),
              _state(),
              const Padding(
                padding: EdgeInsets.only(left: 6, right: 10),
                child: Icon(Icons.add_call),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Model Device',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            // Text(
            //   'Huinya kakaya to',
            //   style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            // )
            RichText(
              text: const TextSpan(
                  style: TextStyle(fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Driver ',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: 'NameBlyat',
                        style: TextStyle(fontWeight: FontWeight.w600))
                  ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _state() {
    return Container();
  }
}

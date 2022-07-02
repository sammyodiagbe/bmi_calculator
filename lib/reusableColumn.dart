import "package:flutter/material.dart";
import "bmiBrain.dart";

BmiBrain brain = BmiBrain();

class ReusableColumn extends StatefulWidget {
  String columnTitle;
  int action;
  ReusableColumn({required this.columnTitle, required this.action});

  @override
  State<ReusableColumn> createState() => _ReusableColumnState();
}

class _ReusableColumnState extends State<ReusableColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.columnTitle),
        SizedBox(height: 10),
        Text(widget.action == 1
            ? brain.getWeight().toString()
            : brain.getAge().toString()),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (widget.action == 1) {
                    brain.performActionOnWeight(1);
                  } else {
                    brain.performActionOnAge(1);
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                fixedSize: Size(50, 50),
              ),
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                fixedSize: Size(50, 50),
              ),
              onPressed: () {
                setState(() {
                  if (widget.action == 1) {
                    brain.performActionOnWeight(2);
                  } else {
                    brain.performActionOnAge(2);
                  }
                });
              },
              child: Icon(Icons.add),
            ),
          ],
        )
      ],
    );
  }
}

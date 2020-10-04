import 'package:flutter/material.dart';
import '../constants.dart';

class InputWitIcon extends StatefulWidget {
  final IconData icon;
  final String hint;
  InputWitIcon(this.icon, this.hint);
  @override
  _InputWitIconState createState() => _InputWitIconState();
}

class _InputWitIconState extends State<InputWitIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: kFaintColor,
          width: 1.6
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            child: Icon(
              widget.icon,
              size: 20,
              color: kFaintColor,
            )
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                hintText: widget.hint
              ),
            )
          )
        ],
      ),
    );
  }
}

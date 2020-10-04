import 'package:flutter/material.dart';
import '../constants.dart';

class PrimaryBtn extends StatefulWidget {
  final String btnText;
  PrimaryBtn(this.btnText);
  @override
  _PrimaryBtnState createState() => _PrimaryBtnState();
}

class _PrimaryBtnState extends State<PrimaryBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: kPrimaryColor
        ),
        child: Center(
          child: Text(
            widget.btnText,
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 16,
            ),
          )
        ),
      ),
    );
  }
}

class OutlinedBtn extends StatefulWidget {
  final String btnText;
  OutlinedBtn(this.btnText);
  @override
  _OutlinedBtnState createState() => _OutlinedBtnState();
}

class _OutlinedBtnState extends State<OutlinedBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: kPrimaryColor,
            width: 2
          ),
          borderRadius: BorderRadius.circular(50),
          color: kWhiteColor
        ),
        child: Center(
          child: Text(
            widget.btnText,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18,
            ),
          )
        ),
      ),
    );
  }
}


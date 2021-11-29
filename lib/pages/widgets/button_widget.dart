import 'package:flutter/material.dart';

class ButtonHeaderWidget extends StatelessWidget {
  final String title;
  final String text;
  final VoidCallback onClicked;

  const ButtonHeaderWidget({
    Key key,
    this.title,
    this.text,
    this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => HeaderWidget(
        title: title,
        child: ButtonWidget(
          text: text,
          onClicked: onClicked,
        ),
      );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key key,
    this.text,
    this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(40),
          primary: Colors.white,
        ),
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        onPressed: onClicked,
      );
}

class HeaderWidget extends StatelessWidget {
  final String title;
  final Widget child;

  const HeaderWidget({
    Key key,
    this.title,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          child,
        ],
      );
}

import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final double width;
  final double? height;
  final Widget widget;
  final double paddingIn;
  final dynamic widgetDecor;

  const ContainerWidget({
    Key? key,
    required this.width,
    this.height,
    required this.widget,
    required this.paddingIn,
    this.widgetDecor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(paddingIn),
      decoration: widgetDecor,
      child: widget,
    );
  }
}

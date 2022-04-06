import 'package:flutter/material.dart';

class ContainerShadowWidget extends StatelessWidget {
  final Widget? child;
  final double height;

  ContainerShadowWidget({this.child,required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54, offset: Offset(1.1, 1.1), blurRadius: 4.0),
        ],
      ),
      child: this.child == null ? SizedBox() : this.child,
      height: height,
    );
  }
}

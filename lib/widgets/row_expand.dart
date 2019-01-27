import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../util/colors.dart';
import 'separator.dart';

class RowExpand extends StatefulWidget {
  final Widget child;

  RowExpand(this.child);

  @override
  _RowExpandState createState() => _RowExpandState();
}

class _RowExpandState extends State<RowExpand> {
  bool _isHide = true;

  @override
  Widget build(BuildContext context) {
    return _isHide
        ? InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  FlutterI18n.translate(
                    context,
                    'spacex.other.more_details',
                  ),
                  style: Theme.of(context)
                      .textTheme
                      .subhead,
                ),
                Icon(Icons.expand_more, size: 19.0)
              ],
            ),
            onTap: () => setState(() => _isHide = false),
          )
        : widget.child;
  }
}
import 'package:flutter/material.dart';

import '../../../shared/shared.dart';

Container circProgess(sizeWidth, bool isLoad) {
  return Container(
    height: sizeWidth * 0.05,
    width: sizeWidth * 0.05,
    margin: EdgeInsets.only(
      top: sizeWidth * 0.05,
    ),
    child: (isLoad)
        ? CircularProgressIndicator(
            color: tdBlack,
            strokeWidth: 2,
          )
        : Container(),
  );
}

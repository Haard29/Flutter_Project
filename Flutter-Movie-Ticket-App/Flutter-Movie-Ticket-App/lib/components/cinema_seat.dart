
import 'package:flutter/material.dart';

import '../const.dart';

//ignore: must_be_immutable
class CinemaSeat extends StatefulWidget {
   final bool isReserved;

   bool isSelected;

   CinemaSeat({Key? key, this.isSelected = false, this.isReserved = false}) : super(key: key);

  @override
  _CinemaSeatState createState() => _CinemaSeatState();
}

class _CinemaSeatState extends State<CinemaSeat> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          !widget.isReserved ? widget.isSelected = !widget.isSelected : null;
        });
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
          width: MediaQuery.of(context).size.width / 15,
          height: MediaQuery.of(context).size.width / 15,
          decoration: BoxDecoration(
              color: widget.isSelected
                  ? kPrimaryColor
                  : widget.isReserved ? Colors.white : null,
              border: !widget.isSelected && !widget.isReserved
                  ? Border.all(color: Colors.white, width: 1.0)
                  : null,
              borderRadius: BorderRadius.circular(5.0))),
    );

  }
}
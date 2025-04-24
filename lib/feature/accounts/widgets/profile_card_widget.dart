
import 'package:flutter/material.dart';
import 'package:mylibrary/util/dimensions.dart';
import 'package:mylibrary/util/styles.dart';


class ProfileCardWidget extends StatelessWidget {
  final String name;
  final Function()?onTap;
  const ProfileCardWidget({super.key, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.fifTeen),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: textMedium.copyWith(fontSize: 15),),
          InkWell(onTap: onTap,
           child: const Icon(Icons.arrow_forward_ios,size: Dimensions.twenty,)),
        ],
      ),
    );
  }
}

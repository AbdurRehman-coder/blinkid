import 'package:flutter/material.dart';
class RatingContainer extends StatelessWidget {
  int? starcount;
  int? totalratings;
   RatingContainer({Key? key,this.starcount,this.totalratings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10,),
          border: Border.all(
            color: Colors.black12,
            width: 1,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: List.generate(starcount!, (i) => Icon(Icons.star_rate,color: Colors.deepOrangeAccent,)).toList(),
            ),
            SizedBox(width: 7,),
            Text("(${totalratings.toString()})")

          ],
        ),
      ),
    );
  }
}

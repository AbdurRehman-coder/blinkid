import 'package:blinkid/resources/constants/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../resources/constants/images_path.dart';
import '../../../resources/utils/routes.dart';
import '../../widgets/rating/ratingcontainer.dart';

class RatingAndReviews extends StatefulWidget {
  const RatingAndReviews({Key? key}) : super(key: key);

  @override
  State<RatingAndReviews> createState() => _RatingAndReviewsState();
}

class _RatingAndReviewsState extends State<RatingAndReviews> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_backspace)),
          centerTitle: true,
          title: Text(
            "Rating & Reviews",
            style: AppTextStyle.gilroyLight
                .copyWith(fontSize: 18, fontWeight: FontWeight.w900),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                children: [
                  // SizedBox(
                  //   width: size.width * 0.05,
                  // ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.writeReviews);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          border: Border.all(
                            color: Colors.red,
                            width: 1,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                        child: Text("All"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  RatingContainer(
                    starcount: 1,
                    totalratings: 1,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  RatingContainer(
                    starcount: 2,
                    totalratings: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: RatingContainer(
                      starcount: 3,
                      totalratings: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  // SizedBox(
                  //   width: 20,
                  // ),
                  RatingContainer(
                    starcount: 3,
                    totalratings: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RatingContainer(
                    starcount: 5,
                    totalratings: 72,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 25),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Row(
                children: List.generate(
                    5,
                    (i) => Icon(
                          Icons.star_rate,
                          color: Colors.deepOrangeAccent,
                        )).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Amazing!",
                      style: AppTextStyle.gilroyBold
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 16)),
                  Text(
                      "Lorem ipsum dolor sit amet consectetur. Sed morbi rhoncus lorem nunc. Elit volutpat ac lectus nisl scelerisque pharetra nam.👍",
                      style:
                          AppTextStyle.gilroyLight.copyWith(fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(
                            image: AssetImage(
                              AppImages.blinkidExpressHomeImage,
                            ),
                            fit: BoxFit.fill),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(
                            image: AssetImage(
                              AppImages.blinkidExpressHomeImage,
                            ),
                            fit: BoxFit.fill),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(
                            image: AssetImage(
                              AppImages.blinkidExpressHomeImage,
                            ),
                            fit: BoxFit.fill),
                      ),
                    ],
                  ),
                  Text(
                    "Ahmed, 12 March 2023",
                    style: AppTextStyle.gilroyLight.copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 25),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Row(
                children: List.generate(
                    4,
                    (i) => Icon(
                          Icons.star_rate,
                          color: Colors.deepOrangeAccent,
                        )).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Amazing!",
                      style: AppTextStyle.gilroyBold
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 16)),
                  Text(
                      "Lorem ipsum dolor sit amet consectetur. Sed morbi rhoncus lorem nunc. Elit volutpat ac lectus nisl scelerisque pharetra nam.👍",
                      style:
                          AppTextStyle.gilroyLight.copyWith(fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Ahmed, 12 March 2023",
                    style: AppTextStyle.gilroyLight.copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 25),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Row(
                children: List.generate(
                    4,
                    (i) => Icon(
                          Icons.star_rate,
                          color: Colors.deepOrangeAccent,
                        )).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Amazing!",
                      style: AppTextStyle.gilroyBold
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 16)),
                  Text(
                      "Lorem ipsum dolor sit amet consectetur. Sed morbi rhoncus lorem nunc. Elit volutpat ac lectus nisl scelerisque pharetra nam.👍",
                      style:
                          AppTextStyle.gilroyLight.copyWith(fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Ahmed, 12 March 2023",
                    style: AppTextStyle.gilroyLight.copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

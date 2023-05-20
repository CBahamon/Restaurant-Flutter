import 'package:flutter/material.dart';
import 'package:travel/description_place.dart';

class Review extends StatelessWidget {
  String nameReviewr;
  int numberReviewr;
  int numberPhotos;
  String descriptionReview;

  Review(
      {required this.nameReviewr,
      required this.numberReviewr,
      required this.numberPhotos,
      required this.descriptionReview});

  @override
  Widget build(BuildContext context) {
    String imgUrl =
        'https://www.cnet.com/a/img/resize/61c44c6765cb6b8529df884935ad7aefc622aeec/hub/2021/11/03/3c2a7d79-770e-4cfa-9847-66b3901fb5d7/c09.jpg?auto=webp&fit=crop&height=675&width=1200';

    final ImgUser = CircleAvatar(
        backgroundColor: Colors.indigo[700],
        child: Text('DG'),
        backgroundImage: NetworkImage(imgUrl));

    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0),
      width: 80.0,
      height: 80.0,
      child: ImgUser,
    );

    final nameReview = Text(
      nameReviewr,
      style: const TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.w900, color: Colors.black),
      textAlign: TextAlign.left,
    );

    final numbersReview = Text(
      "$numberReviewr review - ",
      style: const TextStyle(
          fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.grey),
      textAlign: TextAlign.left,
    );

    final numbersPhoto = Text(
      "$numberPhotos photos ",
      style: const TextStyle(
          fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.grey),
      textAlign: TextAlign.left,
    );

    final star = Container(
      child: const Icon(
        Icons.star,
        color: Colors.amber,
        size: 20.0,
      ),
    );

    final starHalf = Container(
      child: const Icon(
        Icons.star_half,
        color: Colors.amber,
        size: 20.0,
      ),
    );

    final starBorder = Container(
      child: const Icon(
        Icons.star_border,
        color: Colors.amber,
        size: 20.0,
      ),
    );

    final numbersStar = Row(
      children: <Widget>[
        Row(
          children: [star, star, star, starHalf, starBorder],
        )
      ],
    );

    final infoReviewr = Row(
      children: [numbersReview, numbersPhoto, numbersStar],
    );

    final descriptionReviewr =  Text(
      descriptionReview,
      style: const TextStyle(
          fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),
      textAlign: TextAlign.left,
    );

    final dataReviewr = Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [nameReview,
                 infoReviewr,
                  descriptionReviewr],
    );

    return Row(
      children: [photo, dataReviewr],
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}

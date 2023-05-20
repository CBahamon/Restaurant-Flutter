import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
const ReviewList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ObjectReview1(),
        ObjectReview2(),
        ObjectReview3(),
        ObjectReview4(),
        ObjectReview5()
      ],
    );
  }

  Review ObjectReview1() {
    return Review(nameReviewr: "adriana",
       numberReviewr: 2,
        numberPhotos: 3, 
        descriptionReview: "prueba preuba");
  }
   Review ObjectReview2() {
    return Review(nameReviewr: "adriana",
       numberReviewr: 2,
        numberPhotos: 3, 
        descriptionReview: "prueba preuba");
  } 
  Review ObjectReview3() {
    return Review(nameReviewr: "adriana",
       numberReviewr: 2,
        numberPhotos: 3, 
        descriptionReview: "prueba preuba");
  }
  Review ObjectReview4() {
    return Review(nameReviewr: "adriana",
       numberReviewr: 2,
        numberPhotos: 3, 
        descriptionReview: "prueba preuba");
  }
  Review ObjectReview5() {
    return Review(nameReviewr: "adriana",
       numberReviewr: 2,
        numberPhotos: 3, 
        descriptionReview: "prueba preuba");
  }
}
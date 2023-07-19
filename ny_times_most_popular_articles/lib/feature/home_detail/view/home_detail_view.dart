// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ny_times_most_popular_articles/product/const/app_colors.dart';

import '../../home/model/home_model.dart';
part './widget/card.dart';
part './widget/detail_body.dart';
part './widget/image_field.dart';
part './widget/date_text.dart';

class HomeDetailView extends StatelessWidget {
  const HomeDetailView({
    Key? key,
    required this.itemsDetail,
  }) : super(key: key);
  final Results itemsDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: _DetailCard(itemsDetail: itemsDetail),
      ),
    );
  }
}

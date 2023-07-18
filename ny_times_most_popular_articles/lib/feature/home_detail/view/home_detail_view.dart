// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home/model/home_model.dart';

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
        child: Card(
          color: Colors.greenAccent,
          child: Container(
            padding: EdgeInsets.all(8.w),
            height: 500.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
              BoxShadow(
                color: Colors.greenAccent.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Image.network(
                    itemsDetail.media?[0].mediaMetadata?[0].url ?? "",
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  itemsDetail.title ?? "",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  itemsDetail.abstract ?? "",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  itemsDetail.adxKeywords ?? "xx",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    itemsDetail.publishedDate ?? "",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

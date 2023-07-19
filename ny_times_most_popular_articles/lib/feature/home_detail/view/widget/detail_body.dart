part of '../home_detail_view.dart';

class _DetailBodyWidget extends StatelessWidget {
  const _DetailBodyWidget({
    required this.itemsDetail,
  });

  final Results itemsDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _ImageField(itemsDetail: itemsDetail),
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
        _DateText(itemsDetail: itemsDetail),
      ],
    );
  }
}

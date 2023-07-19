part of '../home_detail_view.dart';

class _DateText extends StatelessWidget {
  const _DateText({
    super.key,
    required this.itemsDetail,
  });

  final Results itemsDetail;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        itemsDetail.publishedDate ?? "",
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColor.red),
      ),
    );
  }
}

part of '../home_detail_view.dart';

class _DetailCard extends StatelessWidget {
  const _DetailCard({
    required this.itemsDetail,
  });

  final Results itemsDetail;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.accentGreen,
      child: Container(
        padding: EdgeInsets.all(8.w),
        height: 500.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
          BoxShadow(
            color: Colors.greenAccent.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ]),
        child: _DetailBodyWidget(itemsDetail: itemsDetail),
      ),
    );
  }
}

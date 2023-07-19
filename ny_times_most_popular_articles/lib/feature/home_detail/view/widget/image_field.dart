part of '../home_detail_view.dart';

class _ImageField extends StatelessWidget {
  const _ImageField({
    required this.itemsDetail,
  });

  final Results itemsDetail;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: itemsDetail.media!.isNotEmpty
          ? Image.network(
              itemsDetail.media?[0].mediaMetadata?[0].url ?? "",
            )
          : const Icon(Icons.hourglass_empty),
    );
  }
}

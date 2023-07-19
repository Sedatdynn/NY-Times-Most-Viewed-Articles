part of '../home_view.dart';

class _MainBody extends StatelessWidget {
  const _MainBody();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8.h,
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            final articles = context.watch<HomeCubit>().allArticles;
            return ListView.builder(
              shrinkWrap: true,
              itemCount: context.read<HomeCubit>().allArticles.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeDetailView(itemsDetail: articles[index]),
                      )),
                  child: Card(
                    color: AppColor.accentGreen,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          articles[index].media!.isNotEmpty
                              ? Image.network(
                                  articles[index].media?[0].mediaMetadata?[0].url ?? AppText.defaultImageUrl,
                                )
                              : const Icon(Icons.hourglass_empty),
                          Text(
                            articles[index].title ?? "",
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            articles[index].abstract ?? "",
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

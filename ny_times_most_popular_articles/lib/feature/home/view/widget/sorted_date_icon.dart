part of '../home_view.dart';

class _SortedByDateIcon extends StatelessWidget {
  const _SortedByDateIcon();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0.w),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return IconButton(
            icon: const Icon(Icons.data_exploration_sharp),
            onPressed: () {
              context.read<HomeCubit>().sortListByDate();
            },
          );
        },
      ),
    );
  }
}

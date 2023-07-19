import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/home/cubit/home_cubit.dart';
import '../../feature/home/service/home_service.dart';
import '../network/network_manager.dart';

class MultiBlocProviderWidget extends StatelessWidget {
  const MultiBlocProviderWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return HomeCubit(homeService: HomeService(ProjectNetworkManager.instance.dio))..fetchAllArticles();
          },
        ),
      ],
      child: child,
    );
  }
}

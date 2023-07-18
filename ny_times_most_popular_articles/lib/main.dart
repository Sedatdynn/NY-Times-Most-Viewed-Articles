import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ny_times_most_popular_articles/core/network/network_manager.dart';
import 'package:ny_times_most_popular_articles/feature/home/cubit/home_cubit.dart';
import 'package:ny_times_most_popular_articles/feature/home/service/home_service.dart';
import 'package:ny_times_most_popular_articles/feature/home/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) {
                    return HomeCubit(homeService: HomeService(ProjectNetworkManager.instance.dio))..fetchAllArticles();
                  },
                ),
              ],
              child: MaterialApp(
                title: 'Flutter Demo',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  // This is the theme of your application.
                  //
                  // TRY THIS: Try running your application with "flutter run". You'll see
                  // the application has a blue toolbar. Then, without quitting the app,
                  // try changing the seedColor in the colorScheme below to Colors.green
                  // and then invoke "hot reload" (save your changes or press the "hot
                  // reload" button in a Flutter-supported IDE, or press "r" if you used
                  // the command line to start the app).
                  //
                  // Notice that the counter didn't reset back to zero; the application
                  // state is not lost during the reload. To reset the state, use hot
                  // restart instead.
                  //
                  // This works for code too, not just values: Most code changes can be
                  // tested with just a hot reload.
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                home: const HomeView(),
              ),
            ));
  }
}

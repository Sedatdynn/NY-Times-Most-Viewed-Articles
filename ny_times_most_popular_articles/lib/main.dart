import 'package:ny_times_most_popular_articles/product/const/app_text.dart';

import 'app_shelf.dart';
import 'core/provider/multi_bloc_provider.dart';

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
        builder: (BuildContext context, Widget? child) => MultiBlocProviderWidget(
              child: MaterialApp(
                title: AppText.appTitle,
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  useMaterial3: true,
                ),
                home: const HomeView(),
              ),
            ));
  }
}

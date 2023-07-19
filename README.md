# NY-Times-Most-Viewed-Articles

Article Application created with flutter using Cubit.I also used MVVM(Model-View-Model View) pattern in this project.




### Libraries & Tools Used

* Dio (^5.3.0)
* equatable: (^2.0.5)
* flutter_screenutil: (^5.8.4)
* Bloc (^8.1.0)
* Flutter Bloc (^8.1.3)
* json_annotation: (^4.8.1)
* pretty_dio_logger: (^1.3.1)
* json_serializable: (^6.7.1)
* build_runner: (^2.4.6)

### Main

This is the starting point of the application. All the application level configurations are defined in this file.

```dart
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


```
   
 ## Conclusion

I will be happy to answer any questions that you may have on this approach, and if you want to lend a hand with the boilerplate then please feel free to submit an issue and/or pull request 🙂
 
 

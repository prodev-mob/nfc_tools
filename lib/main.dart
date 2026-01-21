import 'package:demo_nfc/presentation/home/view/home_screen.dart';
import 'package:demo_nfc/presentation/read_tag/bloc/write_tag_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WriteTagBloc(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        fontSizeResolver: (fontSize, instance) {
          final display = View.of(context).display;
          final screenSize = display.size / display.devicePixelRatio;
          final scaleWidth = screenSize.width / const Size(375, 812).width;
          return fontSize * scaleWidth;
        },
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
          );
        },
        child: const HomeScreen(),
      ),
    );
  }
}

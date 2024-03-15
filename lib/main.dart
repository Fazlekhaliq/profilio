import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Provider/dropdwon_provder.dart';
import 'package:profilio/Views/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DropDownProvider(),)
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),

        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(

          scaffoldBackgroundColor: Colors.grey.shade50
          ),
          home: HomeScreen(),
        ),
      ),
    );
  }
}

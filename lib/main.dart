import 'package:farm/screens/dashboard.dart';
import 'package:farm/screens/details_screen.dart';
import 'package:farm/screens/stateScreen.dart';
import 'package:farm/servise/SensorProvider.dart';
import 'package:farm/utils/constant.dart';
import 'package:farm/screens/connection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SensorProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'G7 Farm',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.white),
        primaryColor: gray,
        secondaryHeaderColor: green,
        textTheme: GoogleFonts.zainTextTheme()
            .copyWith(
              titleMedium: GoogleFonts.zain(fontSize: 18, color: Colors.white),
            )
            .copyWith(
              headlineMedium: GoogleFonts.zain(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
            .copyWith(
              titleLarge: GoogleFonts.tajawal(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
            .copyWith(
              headlineLarge: GoogleFonts.cairo(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
            .copyWith(
              titleMedium: GoogleFonts.cairo(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
            .copyWith(
              displayLarge: GoogleFonts.cairo(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            )
            .copyWith(
              displayMedium: GoogleFonts.cairo(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      locale: const Locale("ar"),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'), // English
        Locale('en'), // Spanish
      ],
      initialRoute: "/",
      routes: {
        "/": (ctx) => Connection(),
        Dashboard.DashBoardRoute: (ctx) => Dashboard(),
        DetailsScreen.DetailsScreenRoute: (ctx) => DetailsScreen(),
        Statescreen.StatescreenRoute: (ctx) => Statescreen(),
      },
    );
  }
}

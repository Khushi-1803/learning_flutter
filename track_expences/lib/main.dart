
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'widgets/expenses_list/expenses.dart';

const kRed = Color.fromARGB(255, 228, 44, 44);

final kColorScheme = ColorScheme.fromSeed(
  seedColor: kRed,
  primary: kRed,
);

final kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 5, 99, 125),
  brightness: Brightness.dark,
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
    runApp(
      MaterialApp(
        title: 'Expense Tracker',
        theme: ThemeData(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme(
            backgroundColor: kRed,
            foregroundColor: Colors.white,
          ),
          cardTheme: CardThemeData(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer,
            ),
          ),
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 16,
            ),
          ),
        ),
        darkTheme: ThemeData(
          colorScheme: kDarkColorScheme,
          cardTheme: CardThemeData(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
        ),
        themeMode: ThemeMode.system,
        home: Expenses(),
      ),
    );
}
  // });
// }

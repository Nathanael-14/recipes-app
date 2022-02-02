import 'package:flutter/material.dart';
import 'package:food_app/views/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    bool _hasInternet = true;

    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final ThemeData _theme = Theme.of(context);

    void seeRecipes() {
      if (_hasInternet) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MainScreen()),
          (Route<dynamic> route) => false,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('No internet connection'),
            backgroundColor: _theme.errorColor,
          ),
        );
      }
    }

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: mediaQuery.size.height * 0.25),
          child: Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.fitHeight,
            width: mediaQuery.size.width * 0.4,
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 36.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow[700]),
              ),
              child: Text(
                'View Recipes',
                style: _theme.textTheme.button?.copyWith(color: Colors.white),
              ),
              onPressed: seeRecipes,
            ),
          ),
        ),
      ],
    );
  }
}

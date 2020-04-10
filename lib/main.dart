import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterthemebloc/ui/global/themes/bloc/theme_bloc.dart';
import 'package:flutterthemebloc/ui/pages/home/home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final String title = 'Material Theme';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: state.themeData,
      home: HomePage(title: title),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamal_keto/cubits/home_cubit.dart';
import 'package:kamal_keto/home_text_builder.dart';

void main() {
  runApp(MaterialApp(home: const HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeTextBuilder()
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/home_cubit.dart';

class HomeTextBuilder extends StatelessWidget {
  const HomeTextBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit homeCubit = context.read<HomeCubit>();

    return StreamBuilder<String>(
        stream: homeCubit.textStream,
        initialData: 'Kamal',
        builder: (context, snapshot) {
          String text = snapshot.data!;
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                children: [
                  Text(text),
                  ElevatedButton(onPressed: () {
                    homeCubit.setText("$text bax deyisdim");
                  }, child: const Text("Increase"))
                ],
              ),
            ),
          );
        });
  }
}

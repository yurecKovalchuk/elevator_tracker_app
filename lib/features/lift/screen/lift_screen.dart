import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../lift.dart';

class LiftScreen extends StatelessWidget {
  const LiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<LiftBloc>(context);
    return Scaffold(
      body: BlocConsumer<LiftBloc, LiftState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              const Text('Floors'),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: bloc.state.floors,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Floor $index',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 22.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

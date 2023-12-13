import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../lift.dart';

class LiftScreen extends StatefulWidget {
  const LiftScreen(
    this.houseId, {
    super.key,
  });

  final String houseId;

  @override
  State<LiftScreen> createState() => _LiftScreenState();
}

class _LiftScreenState extends State<LiftScreen> {
  LiftBloc get _bloc => BlocProvider.of<LiftBloc>(context);

  @override
  void initState() {
    final int id = int.parse(widget.houseId);
    _bloc.getHouseDTO(id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LiftBloc, LiftState>(
      builder: (context, state) {
        return Scaffold(
            body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text('Floors'),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _bloc.state.housesDTO?.floors,
                    itemBuilder: (context, index) {
                      final floorIndex = index + 1;
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            _bloc.setNewLiftPosition(floorIndex);
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: setColor(floorIndex),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Floor $floorIndex',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
      },
      listener: (context, state) {
        if (state.status == LiftStateStatus.loading && state.housesDTO?.currentLiftPosition != state.newLiftPosition) {
          _bloc.moveLift();
        }
      },
    );
  }

  Color setColor(int index) {
    if (_bloc.state.housesDTO?.currentLiftPosition == index) {
      return Colors.red;
    }
    if (_bloc.state.newLiftPosition == index) {
      return Colors.yellow;
    }
    return Colors.transparent;
  }
}

import 'package:elevator_tracker_app/data/data.dart';
import 'package:elevator_tracker_app/models/house_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features.dart';
import 'package:elevator_tracker_app/app/app.dart';

class HousesScreen extends StatefulWidget {
  const HousesScreen({super.key});

  @override
  State<HousesScreen> createState() => _HousesScreenState();
}

class _HousesScreenState extends State<HousesScreen> {
  HousesBloc get _bloc => BlocProvider.of<HousesBloc>(context);

  @override
  void initState() {
    _bloc.loadHouses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HousesBloc, HousesState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(onPressed: () => showAddHouseDialog(context), child: const Text('jjjj')),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _bloc.state.housesDTO?.length,
                    itemBuilder: (context, index) {
                      final house = _bloc.state.housesDTO?[index];
                      return GestureDetector(
                        onTap: () {
                          _navigatorPushToLiftScreen(house!);
                        },
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
                                    house?.houseName ?? '',
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
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }

  void showAddHouseDialog(BuildContext context) async {
    final result = await showDialog<HouseModel>(
      context: context,
      builder: (context) => const AddHouseDialog(),
    );

    if (result != null) {
      _bloc.setHouse(result.houseName, result.floors);
      _bloc.loadHouses();
    }
  }

  void _navigatorPushToLiftScreen(HousesDTO house) {
    GoRouter.of(context).pushNamed(
      AppRoutInfo.liftScreen.name,
      extra: house,
    );
  }
}

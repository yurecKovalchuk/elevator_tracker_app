import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features.dart';
import 'package:elevator_tracker_app/models/house_model.dart';
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
      body: SafeArea(
        child: BlocConsumer<HousesBloc, HousesState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(46.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => showAddHouseDialog(context),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add house',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _bloc.state.housesDTO?.length,
                      itemBuilder: (context, index) {
                        final house = _bloc.state.housesDTO?[index];
                        return Dismissible(
                          key: Key(house?.id.toString() ?? ''),
                          direction: DismissDirection.endToStart,
                          onDismissed: (direction) {
                            _bloc.deleteHouse(house?.id ?? 0);
                          },
                          background: Container(
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(right: 16.0),
                            color: Colors.red,
                            child: const Icon(Icons.delete, color: Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: InkWell(
                              onTap: () {
                                _navigatorPushToLiftScreen(house?.id);
                              },
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('House'),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        house?.houseName ?? '',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 18.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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

  void _navigatorPushToLiftScreen(int? houseId) {
    GoRouter.of(context).pushNamed(
      AppRoutInfo.liftScreen.name,
      queryParameters: {"id": houseId.toString()},
    );
  }
}

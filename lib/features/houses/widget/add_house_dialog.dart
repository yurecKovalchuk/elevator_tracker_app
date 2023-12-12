import 'package:elevator_tracker_app/models/house_model.dart';
import 'package:flutter/material.dart';

class AddHouseDialog extends StatefulWidget {
  const AddHouseDialog({Key? key}) : super(key: key);

  @override
  AddHouseDialogState createState() => AddHouseDialogState();
}

class AddHouseDialogState extends State<AddHouseDialog> {
  late TextEditingController nameController;
  late TextEditingController floorsController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    floorsController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    floorsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Add House',
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: floorsController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Floors count'),
          ),
        ],
      ),
      actions: [
        InkWell(
          onTap: () => Navigator.pop(
              context,
              HouseModel(
                houseName: nameController.text,
                floors: int.tryParse(floorsController.text) ?? 0,
              )),
          child: Container(
            constraints: const BoxConstraints(minWidth: 80),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.black),
            ),
            child: const Text(
              'add',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

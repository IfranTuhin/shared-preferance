import 'package:flutter/material.dart';
import 'package:shared_preferances/local_data/user_shared_pref.dart';

class LocalDataView extends StatefulWidget {
  const LocalDataView({Key? key}) : super(key: key);

  @override
  State<LocalDataView> createState() => _LocalDataViewState();
}

class _LocalDataViewState extends State<LocalDataView> {
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  void initState() {
    phoneNumberController.text = UserSharedPreferance().getPhoneNumber() ?? "";
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                hintText: "Phone Number : ",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await UserSharedPreferance()
                  .setPhoneNumber(phoneNumberController.text);
              setState(() {});
            },
            child: Text("Save"),
          ),
        ],
      ),
    );
  }
}

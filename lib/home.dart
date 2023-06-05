import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:gas_janja/api.dart';
import 'package:gas_janja/gas_detail.dart';
import 'package:gas_janja/login.dart';
import 'package:gas_janja/utils/snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userData, next;

  @override
  void initState() {
    // checkLoginStatus();
    // _getUserInfo();

    //listenNotifications();
    super.initState();
  }

  checkLoginStatus() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("token") == null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }
  }

  void _getUserInfo() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var userJson = localStorage.getString('user');
    var user = json.decode(userJson!);
    setState(() {
      userData = user;
    });
    print(userData);

    fetchGasData();
  }

  TextEditingController gasNameController = TextEditingController();
  TextEditingController gasWeightController = TextEditingController();

  void _add_gas_API() async {
    var data = {
      'user_id': userData['user_id'].toString(),
      'name': gasNameController.text,
      'weight': int.parse(gasWeightController.text),
    };

    print(data);

    var res = await CallApi().authenticatedPostRequest(data, 'app/insertGas');
    if (res == null) {
      // setState(() {
      //   _isLoading = false;
      //   // _not_found = true;
      // });
      // showSnack(context, 'No Network!');
    } else {
      var body = json.decode(res!.body);
      print(body);

      if (res.statusCode == 200) {

        setPageState();
        showSnack(context, 'Successfuly Added!');
        // SharedPreferences localStorage = await SharedPreferences.getInstance();
        // localStorage.setString("token", body['token']);
        // localStorage.setString("user", json.encode(body['user']));
        // localStorage.setString("token", json.encode(body['tokens']));
        // localStorage.setString("profile", json.encode(body['profile_data']));
        // localStorage.setString("phone_number", userNumberController.text);

        // setState(() {
        //   user_id = body['user']['id'];
        // });
        // if (body['profile'] == false) {
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //           builder: (context) => const ProfileFormScreen()));
        // } else if (body['profile'] == true) {
        // setState(() {});
        // fetchProfileData(context);

        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => NavigatorWidget()));
        // }
      } else if (res.statusCode == 400) {
        print('hhh');
        // setState(() {
        //   _isLoading = false;
        //   _not_found = true;
        // });
      } else {}
    }

    // ignore: avoid_print
  }

  setPageState() {
    print('________');
    // setState(() {});
    fetchGasData();
  }

  _add_gas_Dialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                title: const Text('Add Gas Cylinder'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      // maxLines: 5,
                      controller: gasNameController,
                      // validator: validateUsername,
                      // keyboardType: TextInputType.phone,
                      style: Theme.of(context).textTheme.bodyMedium,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          // borderSide: BorderSide.none,
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Gas Name',
                        hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      // maxLines: 5,
                      controller: gasWeightController,
                      // validator: validateUsername,
                      // keyboardType: TextInputType.phone,
                      style: Theme.of(context).textTheme.bodyMedium,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          // borderSide: BorderSide.none,
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Weight',
                        hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                // _deleteSingleProductTocart(index);
                                // logOUT_User();
                                // checkQuestion();
                                Navigator.of(context).pop();
                                // _add_question_Dialog(context, id);
                              },
                              child: const Text('Cancel')),

                          const SizedBox(
                            width: 30,
                          ),

                          InkWell(
                              onTap: () {
                                // checkQuestion();
                                _add_gas_API();
                                // _add_question_API(id);
                                Navigator.of(context).pop();
                              },
                              child: const Text('Save')),
                          // onPressed: () {
                          //   Navigator.of(context).pop();
                          // }
                        ])
                  ],
                ),
              );
            },
          );
        });
  }

  List<Gas_Item>? gas_data;

  fetchGasData() async {
    print('inside gas________ ');
    // var customer = userData['id'].toString();
    String url = 'app/getGases/' + userData['user_id'].toString();
    // if (next != null) {
    //   url = url_format(next);
    // }
    var res = await CallApi().authenticatedGetRequest(url, context: context);

    print(res);
    if (res != null) {
      var body = json.decode(res.body);
      print(body);
      var gasItensJson = body;
      List<Gas_Item> gasItems = [];
      if (next != null) {
        gasItems = gas_data!;
      }

      for (var f in gasItensJson) {
        Gas_Item gasItem = Gas_Item(
          f['id'].toString(),
          f['gas_code'].toString(),
          f['name'].toString(),
          f['created_at'].toString(),
          f['percent'].toString(),
          f['weight'].toString(),
        );
        gasItems.add(gasItem);
      }
      print(gasItems.length);
      // setState(() {
      //   loading = false;
      // });

      setState(() {
        gas_data = gasItems;
      });
    } else {
      showSnack(context, 'No network');
      return [];
    }
  }

  _refeelDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Refeel Gas'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: const Text(
                    "Are you sure you want to reset to 100%",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                          onTap: () async {
                            // SharedPreferences preferences =
                            //     await SharedPreferences.getInstance();
                            // await preferences.clear();
                            Navigator.of(context).pop();

                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => LoginScreen()));
                          },
                          child: const Text('Yes')),

                      const SizedBox(
                        width: 30,
                      ),

                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('No')),
                      // onPressed: () {
                      //   Navigator.of(context).pop();
                      // }
                    ])
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Gas Janja"),
        backgroundColor: const Color.fromARGB(255, 76, 175, 147),
        elevation: 0,
      ),
      body: OfflineBuilder(
        connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) {
          final bool connected = connectivity != ConnectivityResult.none;
          return Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                height: 24.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  color: connected ? Color(0xFF00EE44) : Color(0xFFEE4400),
                  child: Center(
                    child: Text("${connected ? 'ONLINE' : 'OFFLINE'}"),
                  ),
                ),
              ),
              
            ],
          );
        },
        child: SafeArea(
          child: Container(
        child: gasComponent(),
      ))),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _add_gas_Dialog(context);
          // Add your onPressed code here!
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => const Personal_CV_Screen()));
        },
        label: const Text('Add Gas Cylinder'),
        icon: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 76, 175, 147),
      ),
    );
  }

  gasComponent() {
    if (gas_data == null) {
      return const Center(
        child: Text('No Network! Please Connect to Internet...'),
      );
    } else if (gas_data != null && gas_data!.isEmpty) {
      // No Data
      return const Center(
        child: Text('Empty Data! Please Add...'),
      );
    } else {
      return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: gas_data!.length,
          //itemCount: ProductModel.items.length,
          itemBuilder: (BuildContext context, int index) {
            // print("iMAGE");
            // print(job_data![index].product_image);

            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GasDetailScreen(
                              gas_data![index].id,
                              gas_data![index].gas_code,
                              gas_data![index].name,
                              gas_data![index].created_at,
                              gas_data![index].percent,
                              gas_data![index].weight,
                            )));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  // height: 220,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.01),
                            spreadRadius: 20,
                            blurRadius: 10,
                            offset: const Offset(0, 10))
                      ],
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            gas_data == null
                                ? Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text(
                                    gas_data![index].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                            SizedBox(
                              height: 10,
                            ),
                            gas_data == null
                                ? Text(
                                    '',
                                    style: TextStyle(fontSize: 18),
                                  )
                                : Text(
                                    gas_data![index].weight + ' kg',
                                    style: TextStyle(fontSize: 18),
                                  ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            _refeelDialog(context);
                          },
                          child: Image.asset(
                            'assets/gasx.png',
                            width: 50, // set the desired width
                            height: 50, // set the desired height
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          });
    }
  }
}

class Gas_Item {
  final String id, gas_code, name, created_at, percent, weight;

  Gas_Item(
    this.id,
    this.gas_code,
    this.name,
    this.created_at,
    this.percent,
    this.weight,
  );
}

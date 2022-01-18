import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDogsScreen extends StatelessWidget {
  const MyDogsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "My Dogs",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Text(
                  "My Dogs",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "My Dogs List",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.4), fontSize: 12),
                ),
              ),
              Row(
                children: [
                  Flexible(
                      child: FractionallySizedBox(
                    widthFactor: 1,
                    child: Card(
                      color: Color(0xff191919),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/2-2.jpg'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Flow-German Shepherd",
                                    style: TextStyle(
                                        color: Colors.yellow[700], fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 4),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check,
                                              color: Colors.yellow[700],
                                              size: 16,
                                            ),
                                            Text(
                                              "Vet Checked",
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check,
                                              color: Colors.yellow[700],
                                              size: 16,
                                            ),
                                            Text(
                                              "Vet Checked",
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 2),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check,
                                              color: Colors.yellow[700],
                                              size: 16,
                                            ),
                                            Text(
                                              "Vet Checked",
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check,
                                              color: Colors.yellow[700],
                                              size: 16,
                                            ),
                                            Text(
                                              "Vet Checked",
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("More Info"),
                                    color: Colors.yellow[700],
                                    minWidth: double.infinity,
                                    height: 24,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
                  Flexible(
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        child: Card(
                          color: Color(0xff191919),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/3-5.jpg'),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Cali-Cane Corso",
                                        style: TextStyle(
                                            color: Colors.yellow[700], fontSize: 16),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 4),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 2),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {},
                                        child: Text("More Info"),
                                        color: Colors.yellow[700],
                                        minWidth: double.infinity,
                                        height: 24,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(32)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Flexible(
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        child: Card(
                          color: Color(0xff191919),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/4-2.jpg'),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Gregor-Doberman",
                                        style: TextStyle(
                                            color: Colors.yellow[700], fontSize: 16),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 4),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 2),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {},
                                        child: Text("More Info"),
                                        color: Colors.yellow[700],
                                        minWidth: double.infinity,
                                        height: 24,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(32)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                  Flexible(
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        child: Card(
                          color: Color(0xff191919),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/7-1.jpg'),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Ivan-Rottweiler",
                                        style: TextStyle(
                                            color: Colors.yellow[700], fontSize: 16),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 4),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 2),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.yellow[700],
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Vet Checked",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {},
                                        child: Text("More Info"),
                                        color: Colors.yellow[700],
                                        minWidth: double.infinity,
                                        height: 24,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(32)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

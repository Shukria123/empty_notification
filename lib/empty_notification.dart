// ignore: file_names
import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';

class EmptyNotification extends StatefulWidget {
  const EmptyNotification({super.key});

  @override
  State<EmptyNotification> createState() => _EmptyNotificationState();
}

class _EmptyNotificationState extends State<EmptyNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.pending_outlined,
                  color: Colors.black,
                ))
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: EmptyWidget(
              hideBackgroundAnimation: true,
              image: "assets/notification.JPG",
              title: "Empty",
              subTitle: "You do not have any notification at this time",
              titleTextStyle:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              subtitleTextStyle: TextStyle(fontSize: 15),
            ),
          ),
        ));
  }
}

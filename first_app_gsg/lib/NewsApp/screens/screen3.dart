import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class screen3 extends StatelessWidget {
  String phone = '970592103756';
  String email = 'hashemalkeshawi@gmail.com';

  Future<void> _phoneCall(String phone) async {
    launchUrl(Uri.parse('tel:$phone'));
  }

  Future<void> _whatappMassage(String phone) async {
    launchUrl(Uri.parse('whatsapp://send?phone=$phone&text=hi.. '));
  }

  Future<void> _email(String email) async {
    launchUrl(Uri.parse('mailto:$email'));
  }

  Future<void> _sms(String phone) async {
    launchUrl(Uri.parse('sms:$phone'));
  }

  Function setLike;
  screen3(this.setLike);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        InkWell(
          onTap: () {
            _phoneCall(phone);
          },
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.green,
            ),
            title: Text("Call us"),
            subtitle: Text(" call $phone"),
          ),
        ),
        InkWell(
          onTap: () {
            _sms(phone);
          },
          child: ListTile(
            leading: Icon(
              Icons.sms,
              color: Colors.blue,
            ),
            title: Text("Send SMS"),
            subtitle: Text("Send to $phone"),
          ),
        ),
        InkWell(
          onTap: () {
            _whatappMassage(phone);
          },
          child: ListTile(
            leading: Icon(
              Icons.whatsapp,
              color: Colors.green,
            ),
            title: Text("Send a Whatsapp massage"),
            subtitle: Text("Send to +$phone"),
          ),
        ),
        InkWell(
          onTap: () {
            _email(email);
          },
          child: ListTile(
            leading: Icon(
              Icons.mail,
              color: Colors.red,
            ),
            title: Text("Send an E-mail massage"),
            subtitle: Text("Send to $email"),
          ),
        ),
      ],
    ));
  }
}

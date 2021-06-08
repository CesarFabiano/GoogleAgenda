import 'package:flutter/material.dart';

class ActionsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone_outlined,
                size: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text(
              "Ligar",
              style: TextStyle(
                fontSize: 10,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                size: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text(
              "Mensagem SMS",
              style: TextStyle(
                fontSize: 10,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.videocam_outlined,
                size: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text(
              "Video",
              style: TextStyle(
                fontSize: 10,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.email_outlined,
                size: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text(
              "Enviar email",
              style: TextStyle(
                fontSize: 10,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

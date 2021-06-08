import 'package:flutter/material.dart';
import 'package:google_agendas/models/contact.dart';
import 'package:google_agendas/screens/details/widgets/actions_menu.dart';
import 'package:google_agendas/screens/details/widgets/custom_divider.dart';
import 'package:google_agendas/style.dart';

class Details extends StatelessWidget {
  final Contact _contact;

  Details(this._contact);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Icon(
              (_contact.isFavorite) ? Icons.star : Icons.star_border,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              _contact.photo,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 20,
              ),
              child: Text(
                _contact.name,
                style: TextStyle(
                  fontSize: 24,
                  color: grayTheme,
                ),
              ),
            ),
            CustomDivider(),
            ActionsMenu(),
            CustomDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.phone_outlined,
                        color: Theme.of(context).primaryColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _contact.cellPhone,
                            style: TextStyle(
                              fontSize: 10,
                              color: grayTheme,
                            ),
                          ),
                          Text(
                            "Celular",
                            style: TextStyle(
                              fontSize: 12,
                              color: grayTheme,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.videocam,
                        color: Theme.of(context).primaryColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.message_outlined,
                        color: Theme.of(context).primaryColor,
                        size: 18,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomDivider(16),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 16,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Theme.of(context).primaryColor,
                    //size: 18,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    _contact.email,
                    style: TextStyle(
                      color: grayTheme,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

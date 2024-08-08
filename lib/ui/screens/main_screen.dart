import 'package:flutter/material.dart';

import '../../data/models/contact.dart';
import 'chat_screen.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Conversations',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFd84d4d),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFdb5a5a),
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Center(
                      child: FlutterLogo(size: 50),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
              child: Divider(),
            ),
            ...List.generate(
              7,
              (index) => ListTile(
                title: Text(allContacts[0].contactName),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(allContacts[0].imageUrl),
                ),
                trailing: index % 4 == 0
                    ? const Icon(
                        Icons.check,
                        color: Color(0xFFd84d4d),
                      )
                    : null,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ChatScreen(contactId: allContacts[0].contactId),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

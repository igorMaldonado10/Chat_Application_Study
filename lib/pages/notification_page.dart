import 'package:chat/core/services/notification/push_notification_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<ChatNotificationService>(context);

    final items = service.items;
    return Scaffold(
        appBar: AppBar(
          title: Text('Minhas Notificações'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index].title),
              subtitle: Text(items[index].body),
              onTap: () => service.remove(index),
            );
          },
        ));
  }
}

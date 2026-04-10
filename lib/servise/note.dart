// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationService {
//   final notificationPlugin = FlutterLocalNotificationsPlugin();

//   bool _isInitialized = false;
//   bool get isInitialized => _isInitialized;

//   // =========================
//   // تهيئة الـ Notification
//   // =========================
//   Future<void> initNotification() async {
//     if (_isInitialized) return;

//     const initSettingsAndroid = AndroidInitializationSettings(
//       "@mipmap/ic_launcher",
//     );

//     const initSettings = InitializationSettings(android: initSettingsAndroid);

//     await notificationPlugin.initialize(
//       initSettings,
//       onDidReceiveNotificationResponse: (NotificationResponse response) {
//         print('Notification clicked: ${response.payload}');
//       },
//     );

//     _isInitialized = true;
//   }

//   // =========================
//   // إعداد NotificationDetails
//   // =========================
//   NotificationDetails notificationDetails() {
//     return const NotificationDetails(
//       android: AndroidNotificationDetails(
//         "connection_id",
//         "Daily Notifications",
//         channelDescription: "Daily Notifications",
//         importance: Importance.max,
//       ),
//     );
//   }

//   // =========================
//   // عرض Notification
//   // =========================
//   Future<void> showNotification({
//     int id = 0,
//     String title = "تم الاتصال",
//     String body = "تم الاتصال بـ ESP32 بنجاح!",
//   }) async {
//     if (!_isInitialized) await initNotification();

//     await notificationPlugin.show(
//       id, // الرقم بتاع الإشعار
//       title, // العنوان
//       body, // نص الإشعار
//       notificationDetails(), // تفاصيل الإشعار
//       payload: "ESP32 Payload", // optional named parameter
//     );
//   }
// }

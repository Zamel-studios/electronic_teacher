import 'package:electronic_teacher/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:provider/provider.dart';
import 'views/screens/home.dart';
import 'views/widgets/grid_widget.dart';
import 'views/constants/colors.dart';
// import 'models/counter_model.dart'; // Assuming you have a model like this

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await FlutterDownloader.initialize(); // Initialize flutter_downloader
  // FlutterDownloader.registerCallback((id, status, progress) {
  //   print(
  //       'Download task ($id) is in status ($status) and progress ($progress)');
  // });
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeModel()),
        // Add other models here if needed
      ],
      child: MaterialApp(
        title: 'Electronic Teacher',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          // Define other routes as needed
        },
      ),
    );
  }
}

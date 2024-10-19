import 'package:flutter/material.dart';
import 'package:fruit_app/features/OrderList/widgets/shared_screen.dart';
import 'package:fruit_app/features/TrackOrder/widgets/track_listview.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SharedScreen(
        text: ' Delivery Status',
        widget1: TrackListview(),
      ),
    );
  }
}

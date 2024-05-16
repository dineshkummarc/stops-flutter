import 'package:flutter/material.dart';

import 'package:stops_sg/bus_api/models/bus_service.dart';
import 'package:stops_sg/widgets/highlighted_icon.dart';

class BusServiceSearchItem extends StatelessWidget {
  const BusServiceSearchItem({super.key, required this.busService, this.onTap});

  final BusService busService;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
      leading: HighlightedIcon(
        iconColor: BusService.listColor(context),
        child: Icon(Icons.directions_bus_rounded,
            color: BusService.listColor(context)),
      ),
      title: Text(busService.number,
          style: Theme.of(context).textTheme.titleMedium),
    );
  }
}

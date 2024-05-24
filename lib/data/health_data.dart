import 'package:responsive_ui/model/health_model.dart';

class HealthData {
  final data = <HealthModel>[
    HealthModel(
        icon: 'lib/assets/burn.png', value: "305", title: "Calories burned"),
    HealthModel(icon: "lib/assets/steps.png", value: "10,305", title: "Steps"),
    HealthModel(
        icon: "lib/assets/distance.png", value: "7km", title: "Distance"),
    HealthModel(icon: "lib/assets/sleep.png", value: "7h48m", title: "Sleep"),
  ];
}

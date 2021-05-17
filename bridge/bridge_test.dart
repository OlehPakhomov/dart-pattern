import 'pilot.dart';
import 'ship.dart';

void main() {
  Rocket rocket = Rocket();
  Pilot pilotRocket = Pilot(rocket);
  pilotRocket.chek();

  Airplane airplane = Airplane();
  Pilot pilotAirplane = Pilot(airplane);
  pilotAirplane.chek();
}

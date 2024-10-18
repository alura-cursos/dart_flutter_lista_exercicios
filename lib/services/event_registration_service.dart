import '../models/event_registration.dart';

class EventRegistrationService {
  // Ao instanciar o banco de dados está vazio.
  final List<EventRegistration> _database = [];

  void addEventRegistration(EventRegistration eventReg) {
    _database.add(eventReg);
  }

  List<EventRegistration> getEventRegistrations() {
    return _database;
  }
}

// Enum para o tipo de ingresso
enum TicketType { vip, regular, free }

// Enum para preferências alimentares
enum DietaryPreference { vegan, vegetarian, noPreference, glutenFree }

class EventRegistration {
  String fullName; // Nome completo do participante
  String email; // Email para contato
  TicketType ticketType; // Tipo de ingresso (VIP, Regular, Gratuito)
  String phoneNumber; // Número de telefone
  DietaryPreference dietaryPreference;

  EventRegistration({
    required this.fullName,
    required this.email,
    required this.ticketType,
    required this.phoneNumber,
    required this.dietaryPreference,
  });
}

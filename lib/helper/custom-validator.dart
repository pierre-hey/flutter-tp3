class CustomValidatorLibrary {
  // Comment je valide mon champ email
  // Return String => Erreur associé (si vide pas d'erreur)
  // String value => La valeur du champ quand tu le test
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return "Erreur email invalide";
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Erreur mot de passe invalide";
    }
    return null;
  }
}

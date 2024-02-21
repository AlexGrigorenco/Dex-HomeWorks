// Можно использовать шаблон проектирования "Фасад" (Facade):

// Упрощение интерфейса: Фасад позволяет предоставить упрощенный интерфейс к сложной системе. В случае с авторизацией, фасад может скрыть сложную логику проверки подлинности, обработки сеансов и управления доступом.

// Изоляция деталей реализации: Фасад позволяет изолировать клиентский код от деталей реализации авторизации. Это делает код более чистым и уменьшает зависимость клиента от конкретной реализации авторизации.

// Управление различными способами авторизации: Фасад может обеспечить единый интерфейс для работы с различными способами авторизации, такими как логин/пароль, OAuth и другими.

// Фасад для работы с авторизацией
class AuthFacade {
  bool isAuthenticated = false;

  // Метод для аутентификации пользователя
  void authenticate(String username, String password) {
    // Реализация аутентификации
    isAuthenticated = (username == 'admin' && password == 'password');
  }

  // Метод для проверки авторизации пользователя
  bool checkAuthentication() {
    return isAuthenticated;
  }

  // Метод для выхода пользователя из системы
  void signOut() {
    isAuthenticated = false;
  }
}

void main() {
  AuthFacade authFacade = AuthFacade();

  authFacade.authenticate('admin', 'password');
  print('Is authenticated: ${authFacade.checkAuthentication()}');

  authFacade.signOut();
  print('Is authenticated: ${authFacade.checkAuthentication()}');

  authFacade.authenticate('qwerty', 'password');
  print('Is authenticated: ${authFacade.checkAuthentication()}');
}

// Можно использовать шаблон проектирования "Стратегия"

// Интерфейс стратегии аутентификации
abstract class AuthStrategy {
  bool authenticate(String username, String password);
}

// Конкретная стратегия для аутентификации по логину и паролю
class LoginPasswordAuth implements AuthStrategy {
  @override
  bool authenticate(String username, String password) {
    return (username == 'admin' && password == 'password');
  }
}

// Конкретная стратегия для аутентификации через Google
class GoogleAuth implements AuthStrategy {
  @override
  bool authenticate(String username, String password) {
    // Здесь было бы подключение к сервису Google для аутентификации
    return true; // Вернем true для примера
  }
}

// Конкретная стратегия для аутентификации через Facebook
class FacebookAuth implements AuthStrategy {
  @override
  bool authenticate(String username, String password) {
    // Здесь было бы подключение к сервису Facebook для аутентификации
    return true; // Вернем true для примера
  }
}

void main() {
  // Использование стратегий для различных видов аутентификации
  AuthStrategy loginPasswordStrategy = LoginPasswordAuth();
  AuthStrategy googleAuthStrategy = GoogleAuth();
  AuthStrategy facebookAuthStrategy = FacebookAuth();

  // Попытка аутентификации по логину и паролю
  print('Login with username and password:');
  print(loginPasswordStrategy.authenticate('admin', 'password')); // true

  // Попытка аутентификации через Google
  print('\nLogin with Google:');
  print(googleAuthStrategy.authenticate('user@gmail.com', 'googlepassword')); // true

  // Попытка аутентификации через Facebook
  print('\nLogin with Facebook:');
  print(facebookAuthStrategy.authenticate('user@example.com', 'facebookpassword')); // true
}

// Tyт подойдет шаблон проектирования "Репозиторий" (Repository):

// Изоляция работы с данными: Шаблон "Репозиторий" позволяет изолировать логику работы с данными (в данном случае пользователями) от остальной части приложения. Это делает код более структурированным и упрощает его поддержку и расширение.

// Централизация запросов к данным: Репозиторий предоставляет единый интерфейс для работы с данными, скрывая детали реализации. Это позволяет управлять всеми операциями с данными (создание, чтение, обновление, удаление) из одного места.

// Легкость замены источника данных: Используя репозиторий, вы можете легко заменить источник данных (например, базу данных) без изменения остального кода.

// Класс, представляющий пользователя
class User {
  final int id;
  final String name;

  User(this.id, this.name);

  String toString() {
    return 'User{id: $id, name: $name}';
  }
}

// Абстрактный класс репозитория для работы с пользователями
abstract class UserRepository {
  // Получить пользователя по идентификатору
  User? getUserById(int id);

  // Получить всех пользователей
  List<User> getAllUsers();

  // Создать пользователя
  void createUser(User user);

  // Обновить пользователя
  void updateUser(User user);

  // Удалить пользователя
  void deleteUser(int id);
}

// Реализация репозитория для работы с пользователями в памяти
class InMemoryUserRepository implements UserRepository {
  final Map<int, User> _users = {};

  @override
  User? getUserById(int id) {
    return _users[id];
  }

  @override
  List<User> getAllUsers() {
    return _users.values.toList();
  }

  @override
  void createUser(User user) {
    _users[user.id] = user;
  }

  @override
  void updateUser(User user) {
    if (_users.containsKey(user.id)) {
      _users[user.id] = user;
    }
  }

  @override
  void deleteUser(int id) {
    _users.remove(id);
  }
}

void main() {
  // Использование репозитория для работы с пользователями
  UserRepository userRepository = InMemoryUserRepository();

  // Создание пользователя
  userRepository.createUser(User(1, 'Alice'));
  userRepository.createUser(User(2, 'Bob'));

  // Получение всех пользователей и вывод в консоль
  print(userRepository.getAllUsers());

  // Обновление пользователя
  User? user = userRepository.getUserById(1);
  if (user != null) {
    user = User(user.id, 'Alice Smith');
    userRepository.updateUser(user);
  }

  // Получение всех пользователей и вывод
  print(userRepository.getAllUsers());

  // Удаление пользователя
  userRepository.deleteUser(1);

  // Получение всех пользователей и вывод
  print(userRepository.getAllUsers());
}

// Для задачи журналирования действий в приложении подходит шаблон проектирования "Одиночка" (Singleton):

// Единственный экземпляр: Журнал (лог) является общим для всего приложения, и нужно гарантировать, что у нас есть только один экземпляр класса для записи логов.

// Глобальный доступ: Журнал должен быть доступен из любой части приложения, поэтому нам нужно обеспечить удобный глобальный доступ к этому экземпляру.

// Ленивая инициализация: Создание экземпляра класса для записи логов должно происходить по требованию, чтобы избежать ненужного использования ресурсов до момента его фактического использования.

class Logger {
  static Logger? _instance;
  Map<String, String> _logs = {};

  // Приватный конструктор для предотвращения создания экземпляров извне
  Logger._();

  // Метод для получения единственного экземпляра класса
  static Logger getInstance() {
    if (_instance == null) {
      _instance = Logger._();
    }
    return _instance!;
  }

  // Метод для записи лога
  void log(String message) {
    DateTime now = DateTime.now();
    String timestamp =
        "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}:${now.second}";

    _logs[timestamp] = message;
  }

  //метод для вывода логов
  void printLogs() {
    print(_logs);
  }
}

void main() async {
  // Использование логгера
  Logger logger = Logger.getInstance();

  // logger2 будет ссылаться на один и тот же экземпляр класса
  Logger logger2 = Logger.getInstance();

  logger.log("Application started");

  await Future.delayed(Duration(seconds: 2));
  logger2.log("User clicked a button");

  await Future.delayed(Duration(seconds: 2));
  logger.log("Application closed");

  // logger и logger2 - один и тот же экземпляр класса
  logger.printLogs();
  logger2.printLogs();
  print(logger == logger2);
}

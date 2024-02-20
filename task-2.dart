// Для решения задачи подойдет шаблон проектирования "Фабрика" (Factory):

// Инкапсуляция создания объектов: Шаблон "Фабрика" позволяет инкапсулировать логику создания объектов различных форматов документов в одном месте, что делает код более чистым и управляемым.

// Унификация интерфейса: Фабрика позволяет создавать различные форматы документов через единый интерфейс, что упрощает использование и понимание кода.

// Легкость добавления новых форматов: Добавление новых форматов документов в систему становится проще, так как для этого нужно лишь создать новый класс-продукт и добавить его обработку в фабрику.

// Абстрактный класс документа
abstract class Document {
  void save(String path);
}

// Конкретный класс для формата PDF
class PDFDocument implements Document {
  @override
  void save(String path) {
    print('Saving PDF document to: $path');
    // Логика сохранения PDF документа
  }
}

// Конкретный класс для формата HTML
class HTMLDocument implements Document {
  @override
  void save(String path) {
    print('Saving HTML document to: $path');
    // Логика сохранения HTML документа
  }
}

// Конкретный класс для формата JSON
class JSONDocument implements Document {
  @override
  void save(String path) {
    print('Saving HTML document to: $path');
    // Логика сохранения JSON документа
  }
}

// Фабрика для создания документов
class DocumentFactory {
  Document createDocument(String format) {
    switch (format.toLowerCase()) {
      case 'pdf':
        return PDFDocument();
      case 'html':
        return HTMLDocument();
      case 'json':
        return JSONDocument();
      default:
        throw Exception('Unsupported document format: $format');
    }
  }
}

void main() {
  DocumentFactory factory = DocumentFactory();

  // Создание PDF документа
  Document pdfDocument = factory.createDocument('pdf');
  pdfDocument.save('example.pdf');

  // Создание HTML документа
  Document htmlDocument = factory.createDocument('html');
  htmlDocument.save('example.html');

  // Создание JSON документа
  Document jsonDocument = factory.createDocument('JSON');
  jsonDocument.save('example.json');
}

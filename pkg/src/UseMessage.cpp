#include "UseMessage.h"

#include "message.pb.h" // Генерируется автоматически из message.proto

void useMessage() {
  example::Greeting g;
  g.set_text("Hello, world");
  std::cout << "Text: " << g.text() << std::endl;
}

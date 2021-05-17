import 'builder_interface.dart';
import 'computer.dart';
import 'director.dart';
import 'notebook.dart';

main() {
  Director director = Director();

  ComputerBuilder computerBuilder = ComputerBuilder();
  director.officeConfiguration(computerBuilder);
  Computer officeComputer = computerBuilder.getComputer();

  NotebookBuilder notebookBuilder = NotebookBuilder();
  director.officeConfiguration(notebookBuilder);
  Notebook officeNotebook = notebookBuilder.getNotebook();

  officeComputer.printComputer();
  officeNotebook.printNoteBook();
  print("");

  director.gameConfiguration(computerBuilder);
  Computer gameComputer = computerBuilder.getComputer();

  director.gameConfiguration(notebookBuilder);
  Notebook gameNotebook = notebookBuilder.getNotebook();

  officeComputer.printComputer();
  officeNotebook.printNoteBook();
  print("");
}

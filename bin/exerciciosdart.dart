import 'dart:io';
void main() {
  List<String> todoList = <String>[];
  programa(todoList);
}

String input(){
 List<String> listaOpcoes= <String>["1", "2", "3"]; 

 print("1- Adicionar\n2- Listar\n3- Sair\n");
 String entrada = stdin.readLineSync()!;

  if(entrada == null || !listaOpcoes.contains(entrada)){
    print("Entrada invalida\n");
    input();
  }

 return entrada;
}

void adicionarNota(List<String> lista){
  print("Digite uma nova nota:\n");
  String nota = stdin.readLineSync()!;
  lista.add(nota);
  print("Nota adicionada!\n");
}

void listarNotas(List<String> lista){
  lista.forEach(print);
}

void programa(List<String> lista){

  while (true){
    String opcao = input();

    switch(opcao){
      case "1":
       adicionarNota(lista);
       break;

      case "2" :
       listarNotas(lista);
       break;

      case "3":
      print("Saindo!\n");
       return;
    }
  } 
  
}


import 'dart:io';
void main() {
getComando();
}

String getComando(){
 bool sair = false;
 List<String> listaOpcoes= <String>["1", "2", "3"]; 

 print("1- Adicionar\n2- Listar\n3- Sair\n");
 String entrada = stdin.readLineSync()!;

  if(entrada == null || !listaOpcoes.contains(entrada)){
    print("Entrada invalida\n");
    getComando();
  }
 return entrada;
}
import './cliente.dart';
import './item.dart';

class Venda {
  Cliente cliente;
  List<Item> itens;

  Venda({this.cliente, this.itens = const []});

  // Exemplo de getter de forma procedural
  /* double get valorTotal {
    double total = 0.0;
    for (Item i in itens) {
      total += i.quantidade * i.preco;
    }

    return total;
  } */

  // Exemplo de getter por reduce
  double get valorTotal {
    return itens.map((i) => i.quantidade * i.preco).reduce((t, a) => t + a);
  }
}

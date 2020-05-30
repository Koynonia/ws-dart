import '../modelo/cliente.dart';
import '../modelo/item.dart';
import '../modelo/produto.dart';
import '../modelo/venda.dart';

main() {
  
  var venda = Venda(
    cliente: new Cliente(
      nome: 'Maria',
      cpf: '987.654.321-00'
    ),
    itens: <Item>[
      Item(
        quantidade: 5,
        produto: Produto(
          codigo: 34,
          desconto: 0.2,
          nome: 'Caneta',
          preco: 10.00
        )
      ),
    Item(
      quantidade: 10,
      produto: Produto(
        codigo: 67,
        nome: 'Borracha',
        preco: 5,
        desconto: 0.5
      )
    )
    ]
  );

  print("O valor total da venda é R\$ ${venda.valorTotal}");
}
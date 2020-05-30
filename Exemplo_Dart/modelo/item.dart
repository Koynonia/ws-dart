import './produto.dart';

class Item {
  Produto produto;
  int quantidade;
  double _preco;

  Item({this.produto, this.quantidade});

  double get preco {
    if (this.produto != null && this._preco == null) {
      this._preco = this.produto.precoComDesconto;
    }

    return this._preco;
  }

  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      this._preco = novoPreco;
    }
  }
}

class Produto {
  int codigo;
  String nome;
  double preco;
  double desconto;

  Produto({this.codigo, this.nome, this.preco, this.desconto = 0});

  double get precoComDesconto {
    return (1 - desconto) * preco;
  }
}

// Exemplo de uso da classe
/* main(){

  var p1 = Produto(
    codigo: 1,
    desconto: 0.13,
    nome: 'Caneta',
    preco: 13.50 
    );

    // Podemos acessar o método como um atributo
    print(p1.precoComDesconto);
} */

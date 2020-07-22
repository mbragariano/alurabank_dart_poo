void main() {
  var conta = ContaCorrente();
  conta.saldo = 50.0;

  conta.saque(20);

  print(conta.saldo);
}

class ContaCorrente {

  int numero;
  int agencia;
  double saldo;
  String titular;

  void saque(double valor) {
    var diferenca = saldo - valor;

    if (diferenca < -100) {
      print('Saldo insuficiente.');
    } else {
      saldo = diferenca;
    }
  }

}
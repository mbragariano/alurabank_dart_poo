void main() {
  var conta = ContaCorrente();
  conta.saldo = 50.0;

  conta.saque(20);

  print(conta.saque(200));
}

class ContaCorrente {

  int numero;
  int agencia;
  double saldo;
  String titular;

  bool saque(double valor) {
    var diferenca = saldo - valor;

    if (diferenca > -100) {
      saldo = diferenca;
      return true;
    }

    print('Saldo insuficiente.');
    return false;
  }

  double deposito(double valor) {
    saldo += valor;
    return saldo;
  }

}
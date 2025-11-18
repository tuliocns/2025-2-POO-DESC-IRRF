import 'models/funcionario.dart';
import 'models/tabela_irrf.dart';
import 'services/calculadora_irrf.dart';

void main() {
  // Exemplo do professor:
  double salarioBruto = 3000.00;
  double descontoInss = 258.83;

  Funcionario funcionario = Funcionario(
    salarioBruto: salarioBruto,
    inss: descontoInss,
  );

  double salarioBase = funcionario.salarioBase;

  CalculadoraIRRF calculadora = CalculadoraIRRF(TabelaIRRF());

  double irrf = calculadora.calcular(salarioBase);

  print("Salário Bruto: R\$ ${salarioBruto.toStringAsFixed(2)}");
  print("INSS: R\$ ${descontoInss.toStringAsFixed(2)}");
  print("Salário Base: R\$ ${salarioBase.toStringAsFixed(2)}");
  print("IRRF: R\$ ${irrf.toStringAsFixed(2)}");
}
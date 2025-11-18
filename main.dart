class FaixaIRRF {
  double minimo;
  double maximo;
  double aliquota;
  double deducao;

  FaixaIRRF(this.minimo, this.maximo, this.aliquota, this.deducao);

  bool contem(double salario) {
    return salario >= minimo && salario <= maximo;
  }
}

class CalculadoraIRRF {
  List<FaixaIRRF> faixas = [
    FaixaIRRF(0, 2428.80, 0.0, 0.0),
    FaixaIRRF(2428.81, 2826.65, 0.075, 182.16),
    FaixaIRRF(2826.66, 3751.05, 0.15, 394.16),
    FaixaIRRF(3751.06, 4664.68, 0.225, 675.49),
    FaixaIRRF(4664.69, double.infinity, 0.275, 908.73),
  ];

  double calcularIRRF(double salarioBase) {
    FaixaIRRF faixa = faixas.firstWhere((f) => f.contem(salarioBase));
    double ir = (salarioBase * faixa.aliquota) - faixa.deducao;
    return ir < 0 ? 0 : double.parse(ir.toStringAsFixed(2));
  }
}

void main() {
  double salarioBruto = 3000.00;
  double inss = 258.83;

  double salarioBase = salarioBruto - inss;

  CalculadoraIRRF calc = CalculadoraIRRF();
  double irrf = calc.calcularIRRF(salarioBase);

  print("Salário Bruto: $salarioBruto");
  print("INSS: $inss");
  print("Salário Base: $salarioBase");
  print("IRRF: $irrf");
}
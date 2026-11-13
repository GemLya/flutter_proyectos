String formatearPesos(int centavos) {
 final negativo = centavos < 0;
 final abs = centavos.abs();
 final pesos = (abs ~/ 100).toString();
 final cents = (abs % 100).toString().padLeft(2, '0');
 final conComas = pesos.replaceAllMapped(
 RegExp(r'\B(?=(\d{3})+(?!\d))'),
 (_) => ',',
 );
 return '${negativo ? '-' : ''}\$$conComas.$cents';
}
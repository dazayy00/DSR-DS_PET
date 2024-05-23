
class AssetPaths {
  static const String _basePath = 'assets';

  static String getPath(int imageIndex) {
    switch (imageIndex) {
      case 1:
        return '$_basePath/tarjeta-de-identificacion.png';
      case 2:
        return '$_basePath/firma.png';
      case 3:
        return '$_basePath/desconocido.png';
      case 4:
        return '$_basePath/email.png';
      case 5:
        return '$_basePath/candado.png';
      case 6:
        return '$_basePath/candados.png';
      case 7:
        return '$_basePath/linea-circular-con-la-palabra-edad-en-el-centro.png';
      case 8:
        return '$_basePath/pixie-bob-cat.png';
      case 9:
        return '$_basePath/gatito.png';
      case 10:
        return '$_basePath/dispensador-de-caramelos.png';
      case 11:
        return '$_basePath/alimentos-para-mascotas.png';
      case 12:
        return '$_basePath/engranajes-de-configuracion.png';
      case 13:
        return '$_basePath/antena.png';
      case 14:
        return '$_basePath/producto-de-codigo-de-barras.png';
      case 15:
        return '$_basePath/igualada.png';
      /*case 11:
        return '$_basePath/desconocido.png';
      case 12:
        return '$_basePath/desconocido.png';*/
      default:
        throw Exception('Invalid image index');
    }
  }
}
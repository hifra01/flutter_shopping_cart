import 'package:shopping_cart/models/CartItem.dart';
import 'package:shopping_cart/models/Item.dart';

class CartItemGenerator {
  static List<CartItem> generate() {
    return <CartItem>[
      CartItem(
          item: Item(
              name:
                  'Audio-Technica ATH-AX1iS SonicFuel Over-ear Headphones for Smartphone',
              price: 599000,
              description:
                  'The ATH-AX1iS over-ear headphones feature 36 mm drivers for optimal sound, generously cushioned ear pads for comfort during extended wear, and a fold-flat design that allows for easy storage. In-line mic, volume and track controls let you answer/end calls, play/pause/control music & videos and adjust volume with compatible smartphones and listening devices, all at the touch of a button.',
              imageAssetPath: 'assets/images/headphone.jpg'),
          amount: 1),
      CartItem(
          item: Item(
              name: 'Masker Karet Biru OneMed Box 50pcs',
              price: 27000,
              description:
                  'Masker 3 ply (terdiri dari 3 lapisan, lapisan luar, dalam dan bagian tengah yang berfungsi sebagai filter, bactery filter efficiency 99.9%) dengan tali karet lentur yang dipasang di telinga. Menutup hidup dan mulut dengan sempurna, dan tahan percikan air. Warna soft blue, aman karena tidak mengandung banyak cat pewarna seperti masker lain. Cara pakai mudah dengan menggantungkan tali karet di kedua telinga, mengencangkan kawat sesuai bentuk hidung, dan menarik bagian bawah masker hingga menutup sampai dagu.',
              imageAssetPath: 'assets/images/masker.jpg'),
          amount: 1),
      CartItem(
          item: Item(
              name:
                  'Xiaomi Official Mi TV 4 43" Bezel-Less LED Smart TV Android TV',
              price: 4299000,
              description:
                  'Xiaomi Mi TV 4 43" Bezel-Less merupakan produk Smart TV canggih dari Xiaomi yang memiliki desain dinamis yang mampu membawa Anda melintasi cakrawala di setiap adegan. TV ini mampu memberikan tampilan lebih detail sempurna dan sudut pandang yang lebih luas.\n\nXiaomi Mi TV 4 43" Bezel-Less dilengkapi dengan PatchWall 3.0 yang baru dan lebih baik hadir dengan banyak pilihan konten untuk seluruh keluarga. TV ini menggunakan sistem operasi Android, dan hadir dengan peningkatan kualitas dalam hal navigasi, antarmuka visual yang menyenangkan, dan kontrol yang disederhanakan. Pilih Smart TV canggih dari Xiaomi ini untuk hiburan terbaik di tempat Anda.',
              imageAssetPath: 'assets/images/tv.png'),
          amount: 1)
    ];
  }
}

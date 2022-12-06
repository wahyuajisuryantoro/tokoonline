class Product {
  final String? title, image, description, price;
  Product({this.title, this.image, this.description, this.price});
}

List<Product> demo_products = [
  Product(
    title: "Mangga", 
    image: "assets/image/mangga.png", 
    description :"Mangga merupakan buah dari pohon tropikal bernama sama. Tanaman ini termasuk dalam genus Mangifera yang terbagi menjadi beberapa spesies dan kultivar. Pohon mangga adalah salah satu tanaman yang paling banyak dibudidayakan",
    price: "Rp 14.000/kg"),
  Product(
    title: "Pepaya", 
    image: "assets/image/pepaya.png",
    description: "Pepaya merupakan salah satu buah yang memiliki manfaat bagi kesehatan jantung. Pepaya banyak mengandung vitamin C dan likopen, zat yang membantu mengurangi risiko penyakit jantung. Pepaya juga mengandung antioksidan yang bisa meningkatkan efek kolesterol baik (HDL) yang ada di dalam tubuh",
    price: "Rp 8.000/kg"),
  Product(
    title: "Semangka", 
    image: "assets/image/semangka.png",
    description: "Semangka (juga dikenal sebagai tembikai atau mendikai) (Citrullus lanatus, suku ketimun-ketimunan atau Cucurbitaceae) adalah tanaman merambat yang berasal dari daerah setengah gurun di Afrika bagian selatan.",
    price: "Rp 12.000/kg"),
  Product(
    title: "Pisang", 
    image: "assets/image/pisang.jpg",
    description: "Pisang adalah tanaman buah berupa herba yang berasal dari kawasan di Asia Tenggara (termasuk Indonesia). Tanaman ini kemudian menyebar ke Afrika (Madagaskar), Amerika Selatan dan Tengah. Di Jawa Barat, pisang disebut dengan Cau, di Jawa Tengah dan Jawa Timur dinamakan gedang.",
    price: "Rp 9.000/kg"),
  Product(
    title: "Anggur", 
    image: "assets/image/anggur.jpg",
    description: "Buah anggur memiliki makna simbolis sebagai keberuntungan baik, harta melimpah dan kemakmuran. Meskipun anggur warna apa saja tetap membawa keberuntungan, namun anggur dengan warna hijau kekuningan lah yang populer disajikan karena dianggap memiliki warna emas sebagai doa harta melimpah",
    price: "Rp 35.000/kg"),
];
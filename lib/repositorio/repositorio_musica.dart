import 'package:listagem/entidade/musica.dart';

//Corresponde a chamada do select do banco ou
//consumo de uma api que retorna uma lista de musicas
//ou leitura de um arquivo contento musicar, etc,
//ou seja, carrega musicas no sistema a partir de
//uma fonte externa qualquer.
class RepositorioMusica {
  List<Musica> select() {
    return <Musica>[
      Musica(
        numero: "01",
        nome: "Corn",
        artista: "Maretu",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/CornMaretu.jpg',
      ),
      Musica(
        numero: "02",
        nome: "Various Types Of Ads",
        artista: "Rory in early 20s",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/Rory.jpg',
      ),
      Musica(
        numero: "03",
        nome: "Insolet object",
        artista: "Amane",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/InsolentObject.jpg',
      ),
      Musica(
        numero: "04",
        nome: "The Happiest Committee ",
        artista: "Hatsune Miku",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/Hatsune.jpg',
      ),
      Musica(
        numero: "05",
        nome: "Mind Brand",
        artista: "Maretu",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/MindBrand.jpg',
      ),
      Musica(
        numero: "06",
        nome: "Blood//Water",
        artista: "Grandson",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/BloodWater.jpg',
      ),
      Musica(
        numero: "07",
        nome: "Namida",
        artista: "Maretu",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/NamidaMaretu.jpg',
      ),
      Musica(
        numero: "08",
        nome: "Perfect Nothing",
        artista: "Ghost",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/PerfectNothing.jpg',
      ),
      Musica(
        numero: "09",
        nome: "Prescription",
        artista: " Mindless Self Indulgence",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/If.jpg',
      ),
      Musica(
        numero: "10",
        nome: "HayLoft II",
        artista: "Mother Mother",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/MotherMother.jpg',
      ),
      Musica(
        numero: "11",
        nome: "Colliding Stars",
        artista: "UltraKill",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/UltraKill.jpg',
      ),
      Musica(
        numero: "12",
        nome: "Old Doll",
        artista: "Mad Father ?",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/MadFather.jpg',
      ),
    ];
  }
}

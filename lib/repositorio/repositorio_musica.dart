import 'package:listagem/entidade/musica.dart';
import 'package:uuid/uuid.dart';

//Corresponde a chamada do select do banco ou
//consumo de uma api que retorna uma lista de musicas
//ou leitura de um arquivo contento musicar, etc,
//ou seja, carrega musicas no sistema a partir de
//uma fonte externa qualquer.

const _uuid = Uuid();

class RepositorioMusica {
  List<Musica> select() {
    return <Musica>[
      Musica(
        id: _uuid.v4(),
        numero: "01",
        nome: "Corn",
        artista: "Maretu",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/CornMaretu.jpg',
      ),
      Musica(
        id: _uuid.v4(),
        numero: "02",
        nome: "Various Types Of Ads",
        artista: "Rory in early 20s",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/Rory.jpg',
      ),
      Musica(
        id: _uuid.v4(),
        numero: "03",
        nome: "Insolet object",
        artista: "Amane",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/InsolentObject.jpg',
      ),
      Musica(
        id: _uuid.v4(),
        numero: "04",
        nome: "The Happiest Committee ",
        artista: "Hatsune Miku",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/Hatsune.jpg',
      ),
      Musica(
        id: _uuid.v4(),
        numero: "05",
        nome: "Mind Brand",
        artista: "Maretu",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/MindBrand.jpg',
      ),
      Musica(
        id: _uuid.v4(),
        numero: "06",
        nome: "Blood//Water",
        artista: "Grandson",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/BloodWater.jpg',
      ),
      Musica(
        id: _uuid.v4(),
        numero: "07",
        nome: "Namida",
        artista: "Maretu",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/NamidaMaretu.jpg',
      ),
      Musica(
        id: _uuid.v4(),
        numero: "08",
        nome: "Perfect Nothing",
        artista: "Ghost",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/PerfectNothing.jpg',
      ),
      Musica(
        id: _uuid.v4(),
        numero: "09",
        nome: "Prescription",
        artista: " Mindless Self Indulgence",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/If.jpg',
      ),
      Musica(
        id: _uuid.v4(),
        numero: "10",
        nome: "HayLoft II",
        artista: "Mother Mother",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/MotherMother.jpg',
      ),
      Musica(
        id: _uuid.v4(),
        numero: "11",
        nome: "Colliding Stars",
        artista: "UltraKill",
        duracao: "2:30",
        album: "A",
        capa: 'Assets/UltraKill.jpg',
      ),
      Musica(
        id: _uuid.v4(),
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

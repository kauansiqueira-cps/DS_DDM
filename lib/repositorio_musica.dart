import 'package:listagem/musica.dart';

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
      ),
      Musica(
        numero: "02",
        nome: "Buy this for me",
        artista: "Rory in early 20s",
        duracao: "2:30",
      ),
      Musica(
        numero: "03",
        nome: "Insolet object",
        artista: "Amane",
        duracao: "2:30",
      ),
      Musica(
        numero: "04",
        nome: "The Happiest Comite",
        artista: "Hatsune Miku",
        duracao: "2:30",
      ),
      Musica(
        numero: "05",
        nome: "Mind Brand",
        artista: "Maretu",
        duracao: "2:30",
      ),
      Musica(
        numero: "06",
        nome: "Blood//Water",
        artista: "Não sei",
        duracao: "2:30",
      ),
      Musica(
        numero: "07",
        nome: "Namida",
        artista: "Maretu",
        duracao: "2:30",
      ),
      Musica(
        numero: "08",
        nome: "Not Allowed",
        artista: "TV Girl",
        duracao: "2:30",
      ),
      Musica(
        numero: "09",
        nome: "Perfect Nothing",
        artista: "Não sei 2",
        duracao: "2:30",
      ),
      Musica(
        numero: "10",
        nome: "Prescription",
        artista: "Não lembro",
        duracao: "2:30",
      ),
      Musica(
        numero: "11",
        nome: "Arms Tonite",
        artista: "Mother Mother",
        duracao: "2:30",
      ),
      Musica(
        numero: "12",
        nome: "HayLoft II",
        artista: "Mother Mother",
        duracao: "2:30",
      ),
      Musica(
        numero: "13",
        nome: "KingSlayer",
        artista: "Bring me on Horazion",
        duracao: "2:30",
      ),
      Musica(
        numero: "14",
        nome: "Colliding Stars",
        artista: "Não lembro",
        duracao: "2:30",
      ),
      Musica(
        numero: "15",
        nome: "Genesis",
        artista: "Grimes",
        duracao: "2:30",
      ),
      Musica(
        numero: "16",
        nome: "BreezeBlocks",
        artista: "Não faço ideia",
        duracao: "2:30",
      ),
      Musica(
        numero: "17",
        nome: "daydreaming",
        artista: "Rebyyzx",
        duracao: "2:30",
      ),
      Musica(
        numero: "18",
        nome: "Old Doll",
        artista: "Mad Father ?",
        duracao: "2:30",
      ),
      Musica(
        numero: "19",
        nome: "It Almost Worked",
        artista: "TV Girl",
        duracao: "2:30",
      ),
    ];
  }
}

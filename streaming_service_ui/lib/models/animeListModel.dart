
class AnimeListModel {


  String imageUrl;
  String title;
  String description;


  AnimeListModel({
    this.imageUrl,
    this.title,
    this.description,
  });

}


final List<AnimeListModel> animeLists = [

  AnimeListModel(
    imageUrl: 'assets/images/hajime_ippo.jpg',
    title: 'Hajime no Ippo',
    description: 'Makunouchi Ippo has been bullied his entire life. Constantly running errands and being beaten up by his classmates, Ippo has always dreamed of changing himself, but never has the passion to act upon it. One day, in the midst of yet another bullying, Ippo is saved by Takamura Mamoru, who happens to be a boxer. Ippo faints from his injuries and is brought to the Kamogawa boxing gym to recover. As he regains consciousness, he is awed and amazed at his new surroundings in the gym, though lacks confidence to attempt anything. Takamura places a photo of Ippo\'s classmate on a punching bag and forces him to punch it. It is only then that Ippo feels something stir inside him and eventually asks Takamura to train him in boxing. Thinking that Ippo does not have what it takes, Takamura gives him a task deemed impossible and gives him a one week time limit. With a sudden desire to get stronger, for himself and his hard working mother, Ippo trains relentlessly to accomplish the task within the time limit. Thus Ippo\'s journey to the top of the boxing world begins.',
  
  ),
  AnimeListModel(
    imageUrl: 'assets/images/bakuman_jpeg.jpg',
    title: 'Bakuman',
    description: 'As a child, Moritaka Mashiro dreamt of becoming a mangaka, just like his childhood hero and uncle, Tarou Kawaguchi, creator of a popular gag manga. But when tragedy strikes, he gives up on his dream and spends his middle school days studying, aiming to become a salaryman instead. One day, his classmate Akito Takagi, the school\'s top student and aspiring writer, notices the detailed drawings in Moritaka\'s notebook. Seeing the vast potential of his artistic talent, Akito approaches Moritaka, proposing that they become mangaka together. After much convincing, Moritaka realizes that if he is able to create a popular manga series, he may be able to get the girl he has a crush on, Miho Azuki, to take part in the anime adaptation as a voice actor. Thus the pair begins creating manga under the pen name Muto Ashirogi, hoping to become the greatest mangaka in Japan, the likes of which no one has ever seen.'
  ),
  AnimeListModel(
    imageUrl: 'assets/images/alchemist.jpg',
    title: 'Alchemist',
    description: 'As a child, Moritaka Mashiro dreamt of becoming a mangaka, just like his childhood hero and uncle, Tarou Kawaguchi, creator of a popular gag manga. But when tragedy strikes, he gives up on his dream and spends his middle school days studying, aiming to become a salaryman instead. One day, his classmate Akito Takagi, the school\'s top student and aspiring writer, notices the detailed drawings in Moritaka\'s notebook. Seeing the vast potential of his artistic talent, Akito approaches Moritaka, proposing that they become mangaka together. After much convincing, Moritaka realizes that if he is able to create a popular manga series, he may be able to get the girl he has a crush on, Miho Azuki, to take part in the anime adaptation as a voice actor. Thus the pair begins creating manga under the pen name Muto Ashirogi, hoping to become the greatest mangaka in Japan, the likes of which no one has ever seen.'
  ),
];

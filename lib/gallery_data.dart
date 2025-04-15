List<GalleryItem> galleryData = [
  GalleryItem(
    imgTitle: 'Asphalt mixer maintenance', 
    imgDate: '10/02/2022', 
    imgDescription: 'Every 200,000 tons of asphalt it all needs to be replaced. Bossmang gave me 2 weeks to tear it down and 1 week to rebuild it. Managed to finish it all in 2 weeks.', 
    imgPath: 'assets/img/asphalt1_100222.jpg'),

  GalleryItem(
    imgTitle: 'Asphalt mixer maintenance', 
    imgDate: '10/02/2022', 
    imgDescription: 'This is basically adult Lego', 
    imgPath: 'assets/img/asphalt2_100222.jpg'),

  GalleryItem(
    imgTitle: 'Sennebogen 818e', 
    imgDate: '29/03/2023', 
    imgDescription: 'It might looks fancy, but the Sennebogen excavators are in fact, a piece of shit', 
    imgPath: 'assets/img/excavator2_290323.jpg'),

  GalleryItem(
    imgTitle: 'Sennebogen 818e', 
    imgDate: '30/05/2023', 
    imgDescription: 'I still hold the record in that company for crushing a tesla under 50 seconds. Never worked with my shoes on, drove my supervisors mad', 
    imgPath: 'assets/img/excavator1_300523.jpg'),

  GalleryItem(
    imgTitle: 'Snow in Kassel', 
    imgDate: '04/12/2016', 
    imgDescription: 'First time snow in germany for me', 
    imgPath: 'assets/img/kassel1_041216.jpg'),

  GalleryItem(
    imgTitle: 'Snow in Kassel', 
    imgDate: '04/12/2016', 
    imgDescription: 'Some great desktop background images were made on this day', 
    imgPath: 'assets/img/kassel2_041216.jpg'),

  GalleryItem(
    imgTitle: 'Melechesh live in Jerusalem', 
    imgDate: '18/12/2015', 
    imgDescription: 'Funny story, the vocalist remembered me from that show because of my intrusive photography methods', 
    imgPath: 'assets/img/melechesh1_181215.jpg'),

  GalleryItem(
    imgTitle: 'Melechesh live in Jerusalem ', 
    imgDate: '18/12/2015', 
    imgDescription: 'I also recorded live multicam video for this show, but for one of the warm up bands actually', 
    imgPath: 'assets/img/melechesh2_181215.jpg'),

  GalleryItem(
    imgTitle: 'Metaldays 2016', 
    imgDate: '31/07/2016', 
    imgDescription: 'Last time I bought a plane ticket to a festival, moved to germany after this festival was over', 
    imgPath: 'assets/img/metaldays2_310716.jpg'),

  GalleryItem(
    imgTitle: 'Metaldays 2016', 
    imgDate: '31/07/2016', 
    imgDescription: 'The town of Tolmin, where the festival used to take place, has the best pizza in the world', 
    imgPath: 'assets/img/metaldays1_310716.jpg'),

  GalleryItem(
    imgTitle: 'Übergang Live', 
    imgDate: '20/02/2017', 
    imgDescription: "They might look like skinheads, but they're alright", 
    imgPath: 'assets/img/ubergang2_200217.jpg'),

  GalleryItem(
    imgTitle: 'Übergang Live', 
    imgDate: '20/02/2017', 
    imgDescription: 'Got my name in the "Thank you" section of one of their albums, never even liked their music :D', 
    imgPath: 'assets/img/ubergang1_200217.jpg'),
    
];




class GalleryItem {
  final String imgTitle;
  final String imgDate;
  final String imgDescription;
  final String imgPath;

  GalleryItem({required this.imgTitle, required this.imgDate, required this.imgDescription, required this.imgPath});
}
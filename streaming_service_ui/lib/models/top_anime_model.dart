class TopAnimeList {
    final List<Top> top;

    TopAnimeList({
        this.top,
    });
}

class Top {
    final int malId;
    final int rank;
    final String title;
    final String url;
    final String imageUrl;
    final Type type;
    final int episodes;
    final String startDate;
    final String endDate;
    final int members;
    final double score;

    Top({
        this.malId,
        this.rank,
        this.title,
        this.url,
        this.imageUrl,
        this.type,
        this.episodes,
        this.startDate,
        this.endDate,
        this.members,
        this.score,
    });
}

enum Type { TV, OVA, ONA, SPECIAL, MOVIE }



final List<Top> topAnimeLists = [

  Top(
    malId: 40591,
    rank: 1,
    title: "Kaguya-sama wa Kokurasetai?: Tensai-tachi no Renai Zunousen",
    url: "https://myanimelist.net/anime/40591/Kaguya-sama_wa_Kokurasetai__Tensai-tachi_no_Renai_Zunousen",
    imageUrl: "https://cdn.myanimelist.net/images/anime/1764/106659.jpg?s=aab19d0f19e345e223dc26542ac3a28f",
    type: Type.TV,
    episodes: 12,
    startDate: "Apr 2020",
    endDate: null,
    members: 175155,
    score: 8.77

  ),
  Top(
    malId: 40591,
    rank: 2,
    title: "Kingdom 3rd Season",
    url: "https://myanimelist.net/anime/40591/Kaguya-sama_wa_Kokurasetai__Tensai-tachi_no_Renai_Zunousen",
    imageUrl: "https://cdn.myanimelist.net/images/anime/1332/106392.jpg?s=d111827d6fa7f273acee0c511d88c735",
    type: Type.TV,
    episodes: 12,
    startDate: "Apr 2020",
    endDate: null,
    members: 175155,
    score: 8.56

  ),
    Top(
    malId: 40591,
    rank: 1,
    title: "Kaguya-sama wa Kokurasetai?: Tensai-tachi no Renai Zunousen",
    url: "https://myanimelist.net/anime/40591/Kaguya-sama_wa_Kokurasetai__Tensai-tachi_no_Renai_Zunousen",
    imageUrl: "https://cdn.myanimelist.net/images/anime/1764/106659.jpg?s=aab19d0f19e345e223dc26542ac3a28f",
    type: Type.TV,
    episodes: 12,
    startDate: "Apr 2020",
    endDate: null,
    members: 175155,
    score: 8.77

  ),
];
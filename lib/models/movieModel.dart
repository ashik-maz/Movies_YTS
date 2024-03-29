import 'dart:convert';

class YtsMovies {
    Stat status;
    String statusMessage;
    Data data;
    Meta meta;

    YtsMovies({
        required this.status,
        required this.statusMessage,
        required this.data,
        required this.meta,
    });

    factory YtsMovies.fromRawJson(String str) => YtsMovies.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory YtsMovies.fromJson(Map<String, dynamic> json) => YtsMovies(
        status: statValues.map[json["status"]]!,
        statusMessage: json["status_message"],
        data: Data.fromJson(json["data"]),
        meta: Meta.fromJson(json["@meta"]),
    );

    Map<String, dynamic> toJson() => {
        "status": statValues.reverse[status],
        "status_message": statusMessage,
        "data": data.toJson(),
        "@meta": meta.toJson(),
    };
}

class Data {
    int movieCount;
    int limit;
    int pageNumber;
    List<Movie> movies;

    Data({
        required this.movieCount,
        required this.limit,
        required this.pageNumber,
        required this.movies,
    });

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        movieCount: json["movie_count"],
        limit: json["limit"],
        pageNumber: json["page_number"],
        movies: List<Movie>.from(json["movies"].map((x) => Movie.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "movie_count": movieCount,
        "limit": limit,
        "page_number": pageNumber,
        "movies": List<dynamic>.from(movies.map((x) => x.toJson())),
    };
}

class Movie {
    int id;
    String url;
    String imdbCode;
    String title;
    String titleEnglish;
    String titleLong;
    String slug;
    int year;
    double rating;
    int runtime;
    List<String> genres;
    String summary;
    String descriptionFull;
    String synopsis;
    String ytTrailerCode;
    String language;
    MpaRating mpaRating;
    String backgroundImage;
    String backgroundImageOriginal;
    String smallCoverImage;
    String mediumCoverImage;
    String largeCoverImage;
    Stat state;
    List<Torrent> torrents;
    DateTime dateUploaded;
    int dateUploadedUnix;

    Movie({
        required this.id,
        required this.url,
        required this.imdbCode,
        required this.title,
        required this.titleEnglish,
        required this.titleLong,
        required this.slug,
        required this.year,
        required this.rating,
        required this.runtime,
        required this.genres,
        required this.summary,
        required this.descriptionFull,
        required this.synopsis,
        required this.ytTrailerCode,
        required this.language,
        required this.mpaRating,
        required this.backgroundImage,
        required this.backgroundImageOriginal,
        required this.smallCoverImage,
        required this.mediumCoverImage,
        required this.largeCoverImage,
        required this.state,
        required this.torrents,
        required this.dateUploaded,
        required this.dateUploadedUnix,
    });

    factory Movie.fromRawJson(String str) => Movie.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json["id"],
        url: json["url"],
        imdbCode: json["imdb_code"],
        title: json["title"],
        titleEnglish: json["title_english"],
        titleLong: json["title_long"],
        slug: json["slug"],
        year: json["year"],
        rating: json["rating"]?.toDouble(),
        runtime: json["runtime"],
        genres: List<String>.from(json["genres"].map((x) => x)),
        summary: json["summary"],
        descriptionFull: json["description_full"],
        synopsis: json["synopsis"],
        ytTrailerCode: json["yt_trailer_code"],
        language: json["language"],
        mpaRating: mpaRatingValues.map[json["mpa_rating"]]!,
        backgroundImage: json["background_image"],
        backgroundImageOriginal: json["background_image_original"],
        smallCoverImage: json["small_cover_image"],
        mediumCoverImage: json["medium_cover_image"],
        largeCoverImage: json["large_cover_image"],
        state: statValues.map[json["state"]]!,
        torrents: List<Torrent>.from(json["torrents"].map((x) => Torrent.fromJson(x))),
        dateUploaded: DateTime.parse(json["date_uploaded"]),
        dateUploadedUnix: json["date_uploaded_unix"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "imdb_code": imdbCode,
        "title": title,
        "title_english": titleEnglish,
        "title_long": titleLong,
        "slug": slug,
        "year": year,
        "rating": rating,
        "runtime": runtime,
        "genres": List<dynamic>.from(genres.map((x) => x)),
        "summary": summary,
        "description_full": descriptionFull,
        "synopsis": synopsis,
        "yt_trailer_code": ytTrailerCode,
        "language": language,
        "mpa_rating": mpaRatingValues.reverse[mpaRating],
        "background_image": backgroundImage,
        "background_image_original": backgroundImageOriginal,
        "small_cover_image": smallCoverImage,
        "medium_cover_image": mediumCoverImage,
        "large_cover_image": largeCoverImage,
        "state": statValues.reverse[state],
        "torrents": List<dynamic>.from(torrents.map((x) => x.toJson())),
        "date_uploaded": dateUploaded.toIso8601String(),
        "date_uploaded_unix": dateUploadedUnix,
    };
}

enum MpaRating {
    EMPTY,
    PG_13,
    R
}

final mpaRatingValues = EnumValues({
    "": MpaRating.EMPTY,
    "PG-13": MpaRating.PG_13,
    "R": MpaRating.R
});

enum Stat {
    OK
}

final statValues = EnumValues({
    "ok": Stat.OK
});

class Torrent {
    String url;
    String hash;
    Quality quality;
    Type type;
    String isRepack;
    VideoCodec videoCodec;
    String bitDepth;
    String audioChannels;
    int seeds;
    int peers;
    String size;
    int sizeBytes;
    DateTime dateUploaded;
    int dateUploadedUnix;

    Torrent({
        required this.url,
        required this.hash,
        required this.quality,
        required this.type,
        required this.isRepack,
        required this.videoCodec,
        required this.bitDepth,
        required this.audioChannels,
        required this.seeds,
        required this.peers,
        required this.size,
        required this.sizeBytes,
        required this.dateUploaded,
        required this.dateUploadedUnix,
    });

    factory Torrent.fromRawJson(String str) => Torrent.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Torrent.fromJson(Map<String, dynamic> json) => Torrent(
        url: json["url"],
        hash: json["hash"],
        quality: qualityValues.map[json["quality"]]!,
        type: typeValues.map[json["type"]]!,
        isRepack: json["is_repack"],
        videoCodec: videoCodecValues.map[json["video_codec"]]!,
        bitDepth: json["bit_depth"],
        audioChannels: json["audio_channels"],
        seeds: json["seeds"],
        peers: json["peers"],
        size: json["size"],
        sizeBytes: json["size_bytes"],
        dateUploaded: DateTime.parse(json["date_uploaded"]),
        dateUploadedUnix: json["date_uploaded_unix"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "hash": hash,
        "quality": qualityValues.reverse[quality],
        "type": typeValues.reverse[type],
        "is_repack": isRepack,
        "video_codec": videoCodecValues.reverse[videoCodec],
        "bit_depth": bitDepth,
        "audio_channels": audioChannels,
        "seeds": seeds,
        "peers": peers,
        "size": size,
        "size_bytes": sizeBytes,
        "date_uploaded": dateUploaded.toIso8601String(),
        "date_uploaded_unix": dateUploadedUnix,
    };
}

enum Quality {
    THE_1080_P,
    THE_2160_P,
    THE_720_P
}

final qualityValues = EnumValues({
    "1080p": Quality.THE_1080_P,
    "2160p": Quality.THE_2160_P,
    "720p": Quality.THE_720_P
});

enum Type {
    BLURAY,
    WEB
}

final typeValues = EnumValues({
    "bluray": Type.BLURAY,
    "web": Type.WEB
});

enum VideoCodec {
    X264,
    X265
}

final videoCodecValues = EnumValues({
    "x264": VideoCodec.X264,
    "x265": VideoCodec.X265
});

class Meta {
    int serverTime;
    String serverTimezone;
    int apiVersion;
    String executionTime;

    Meta({
        required this.serverTime,
        required this.serverTimezone,
        required this.apiVersion,
        required this.executionTime,
    });

    factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        serverTime: json["server_time"],
        serverTimezone: json["server_timezone"],
        apiVersion: json["api_version"],
        executionTime: json["execution_time"],
    );

    Map<String, dynamic> toJson() => {
        "server_time": serverTime,
        "server_timezone": serverTimezone,
        "api_version": apiVersion,
        "execution_time": executionTime,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}

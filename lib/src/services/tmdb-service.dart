import 'dart:convert';
import 'package:http/http.dart';
import '../models/content-base.dart';
import '../models/country.dart';
import '../models/genre.dart';
import '../models/image-collection.dart';
import '../models/image-info.dart';
import '../models/movie.dart';
import '../models/paged-result.dart';
import '../models/tv-show.dart';
import '../models/video.dart';
import '../settings/append-settings.dart';
import '../settings/asset-resolver.dart';
import '../settings/configuration.dart';
import '../settings/search-settings.dart';
import '../settings/quality-settings.dart';

part 'common-service.dart';
part 'configuration-service.dart';
part 'movie-service.dart';
part 'resilient-service.dart';
part 'tv-service.dart';

class TmdbService extends ConfigurationService {
  final MovieService _movie;
  final TvService _tv;

  MovieService get movie {
    assert(_configuration != null,
        "TmdbService not configured properly, please call initConfiguration or use the setter if you already have the object.");
    return _movie;
  }

  TvService get tv {
    assert(_configuration != null,
        "TmdbService not configured properly, please call initConfiguration or use the setter if you already have the object.");
    return _tv;
  }

  @override
  set configuration(Configuration config) {
    this._configuration = _movie._configuration = _tv._configuration = config;
  }

  /// Instanciate TmdbService using TMDB API Key (v3 auth)
  TmdbService(String apiKey)
      : _movie = MovieService(apiKey),
        _tv = TvService(apiKey),
        super(apiKey);
}

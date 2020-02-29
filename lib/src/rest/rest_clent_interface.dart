import 'package:daily_mobile_app/src/rest/model/popular_response.dart';
import 'package:daily_mobile_app/src/rest/model/publication_response.dart';

abstract class RestClient {

  Future<List<PublicationResponse>> getPublications();

  Future<List<PopularResponse>> getPopular();
}

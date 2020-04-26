import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class ApiService extends ChopperService {
  @Get()
  Future<Response> getUser();

  @Get(path: '/{id}')
  Future<Response> getSingleUser(@Path('id') int id);

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [_$ApiService()],
      converter: JsonConverter(),
    );
    return _$ApiService(client);
  }
}

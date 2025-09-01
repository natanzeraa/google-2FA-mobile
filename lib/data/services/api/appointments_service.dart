//   typedef AuthHeaderProvider = String? Function();

// class AppointmentsService {

//   ApiClient({String? host, int? port, HttpClient Function()? clientFactory})
//     : _host = host ?? 'localhost',
//       _port = port ?? 8080,
//       _clientFactory = clientFactory ?? HttpClient.new;

//   final String _host;
//   final int _port;
//   final HttpClient Function() _clientFactory;

//   AuthHeaderProvider? _authHeaderProvider;

//   set authHeaderProvider(AuthHeaderProvider authHeaderProvider) {
//     _authHeaderProvider = authHeaderProvider;
//   }

//   Future<void> _authHeader(HttpHeaders headers) async {
//     final header = _authHeaderProvider?.call();
//     if (header != null) {
//       headers.add(HttpHeaders.authorizationHeader, header);
//     }
//   }

//   Future<Result<List<Continent>>> getContinents() async {
//     final client = _clientFactory();
//     try {
//       final request = await client.get(_host, _port, '/continent');
//       await _authHeader(request.headers);
//       final response = await request.close();
//       if (response.statusCode == 200) {
//         final stringData = await response.transform(utf8.decoder).join();
//         final json = jsonDecode(stringData) as List<dynamic>;
//         return Result.ok(
//           json.map((element) => Continent.fromJson(element)).toList(),
//         );
//       } else {
//         return const Result.error(HttpException("Invalid response"));
//       }
//     } on Exception catch (error) {
//       return Result.error(error);
//     } finally {
//       client.close();
//     }
//   }

// }

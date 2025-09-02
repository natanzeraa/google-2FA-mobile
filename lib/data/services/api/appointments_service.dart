typedef AuthHeaderProvider = String? Function();

class Assets {
  static const appointments = 'assets/appointmens.json';
}

class AppointmentsService {

  ApiClient({String? host, int? port, HttpClient Function()? clientFactory})
    : _host = host ?? 'localhost',
      _port = port ?? 8080,
      _clientFactory = clientFactory ?? HttpClient.new;

  final String _host;
  final int _port;
  final HttpClient Function() _clientFactory;

  AuthHeaderProvider? _authHeaderProvider;

  set authHeaderProvider(AuthHeaderProvider authHeaderProvider) {
    _authHeaderProvider = authHeaderProvider;
  }

  Future<void> _authHeader(HttpHeaders headers) async {
    final header = _authHeaderProvider?.call();
    if (header != null) {
      headers.add(HttpHeaders.authorizationHeader, header);
    }
  }

  Future<List<Appointment>> getAppointments() async {
    final json = await _loadStringAsset(Assets.appointments);
    return json.map<Appointment>(Appointment.fromJson).toList();
  }

}

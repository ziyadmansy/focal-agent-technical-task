import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class NetworkConnectivityService {
  Future<bool> isConnected() async {
    final connectivityResult = await (Connectivity().checkConnectivity());

    return connectivityResult != ConnectivityResult.none &&
        connectivityResult != ConnectivityResult.bluetooth &&
        connectivityResult != ConnectivityResult.other;
  }
}

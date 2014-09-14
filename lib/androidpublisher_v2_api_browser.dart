library androidpublisher_v2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_androidpublisher_v2_api/src/browser_client.dart';
import "package:google_androidpublisher_v2_api/androidpublisher_v2_api_client.dart";

/** Lets Android application developers access their Google Play accounts. */
@deprecated
class Androidpublisher extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your Google Play Android Developer account */
  static const String ANDROIDPUBLISHER_SCOPE = "https://www.googleapis.com/auth/androidpublisher";

  final oauth.OAuth2 auth;

  Androidpublisher([oauth.OAuth2 this.auth]);
}

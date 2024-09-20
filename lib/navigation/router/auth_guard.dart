import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // TODO: implement onNavigation
    const isLogged = true;
    if (isLogged) {
      resolver.next(true);
    } else {
      //resolver.redirect(LoginRoute());
    }
  }
}

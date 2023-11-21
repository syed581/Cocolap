import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const Kopage1Widget() : const Kopage011Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const Kopage1Widget() : const Kopage011Widget(),
        ),
        FFRoute(
          name: 'kopage1',
          path: '/kopage1',
          builder: (context, params) => const Kopage1Widget(),
        ),
        FFRoute(
          name: 'kopage2',
          path: '/kopage2',
          builder: (context, params) => const Kopage2Widget(),
        ),
        FFRoute(
          name: 'kopage3',
          path: '/kopage3',
          builder: (context, params) => const Kopage3Widget(),
        ),
        FFRoute(
          name: 'kopage4',
          path: '/kopage4',
          builder: (context, params) => Kopage4Widget(
            brewMehod: params.getParam(
                'brewMehod', ParamType.DocumentReference, false, ['cBrewM']),
          ),
        ),
        FFRoute(
          name: 'kopage5',
          path: '/kopage5',
          builder: (context, params) => const Kopage5Widget(),
        ),
        FFRoute(
          name: 'kopage6',
          path: '/kopage6',
          builder: (context, params) => Kopage6Widget(
            seedMehid: params.getParam(
                'seedMehid', ParamType.DocumentReference, false, ['cSeedM']),
          ),
        ),
        FFRoute(
          name: 'kopage7',
          path: '/kopage7',
          builder: (context, params) => const Kopage7Widget(),
        ),
        FFRoute(
          name: 'kopage8',
          path: '/kopage8',
          builder: (context, params) => Kopage8Widget(
            cholate: params.getParam(
                'cholate', ParamType.DocumentReference, false, ['cChacolateM']),
          ),
        ),
        FFRoute(
          name: 'kopage9',
          path: '/kopage9',
          builder: (context, params) => const Kopage9Widget(),
        ),
        FFRoute(
          name: 'kopage10',
          path: '/kopage10',
          builder: (context, params) => const Kopage10Widget(),
        ),
        FFRoute(
          name: 'signUP',
          path: '/signUP',
          builder: (context, params) => const SignUPWidget(),
        ),
        FFRoute(
          name: 'signIN',
          path: '/signIN',
          builder: (context, params) => const SignINWidget(),
        ),
        FFRoute(
          name: 'forgotypassword',
          path: '/forgotypassword',
          builder: (context, params) => const ForgotypasswordWidget(),
        ),
        FFRoute(
          name: 'orderpage',
          path: '/orderpage',
          builder: (context, params) => const OrderpageWidget(),
        ),
        FFRoute(
          name: 'proflepage',
          path: '/proflepage',
          builder: (context, params) => const ProflepageWidget(),
        ),
        FFRoute(
          name: 'AppSetting',
          path: '/appSetting',
          builder: (context, params) => const AppSettingWidget(),
        ),
        FFRoute(
          name: 'SeedSetting',
          path: '/seedSetting',
          builder: (context, params) => const SeedSettingWidget(),
        ),
        FFRoute(
          name: 'BREWSetting',
          path: '/bREWSetting',
          builder: (context, params) => const BREWSettingWidget(),
        ),
        FFRoute(
          name: 'ChocolateSettingC',
          path: '/chocolateSettingC',
          builder: (context, params) => const ChocolateSettingCWidget(),
        ),
        FFRoute(
          name: 'Employedashobord',
          path: '/employedashobord',
          builder: (context, params) => const EmployedashobordWidget(),
        ),
        FFRoute(
          name: 'dashboARD2',
          path: '/dashboARD2',
          builder: (context, params) => const DashboARD2Widget(),
        ),
        FFRoute(
          name: 'Empyorderpage',
          path: '/empyorderpage',
          builder: (context, params) => const EmpyorderpageWidget(),
        ),
        FFRoute(
          name: 'addEmployee',
          path: '/addEmployee',
          builder: (context, params) => const AddEmployeeWidget(),
        ),
        FFRoute(
          name: 'kopage11',
          path: '/kopage11',
          builder: (context, params) => const Kopage11Widget(),
        ),
        FFRoute(
          name: 'SeedEditPage',
          path: '/seedEditPage',
          builder: (context, params) => SeedEditPageWidget(
            seededit: params.getParam(
                'seededit', ParamType.DocumentReference, false, ['cSeedM']),
          ),
        ),
        FFRoute(
          name: 'ChoEditPage',
          path: '/choEditPage',
          builder: (context, params) => ChoEditPageWidget(
            choedit: params.getParam(
                'choedit', ParamType.DocumentReference, false, ['cChacolateM']),
          ),
        ),
        FFRoute(
          name: 'BReEditPage',
          path: '/bReEditPage',
          builder: (context, params) => BReEditPageWidget(
            breedit: params.getParam(
                'breedit', ParamType.DocumentReference, false, ['cBrewM']),
          ),
        ),
        FFRoute(
          name: 'kopage12',
          path: '/kopage12',
          builder: (context, params) => const Kopage12Widget(),
        ),
        FFRoute(
          name: 'kopage13',
          path: '/kopage13',
          builder: (context, params) => const Kopage13Widget(),
        ),
        FFRoute(
          name: 'kopage14',
          path: '/kopage14',
          builder: (context, params) => Kopage14Widget(
            coffed: params.getParam(
                'coffed', ParamType.DocumentReference, false, ['coffee']),
          ),
        ),
        FFRoute(
          name: 'kopage15',
          path: '/kopage15',
          builder: (context, params) => const Kopage15Widget(),
        ),
        FFRoute(
          name: 'kopage16',
          path: '/kopage16',
          builder: (context, params) => Kopage16Widget(
            milkjh: params.getParam(
                'milkjh', ParamType.DocumentReference, false, ['milk']),
          ),
        ),
        FFRoute(
          name: 'CHECKOUT',
          path: '/checkout',
          builder: (context, params) => const CheckoutWidget(),
        ),
        FFRoute(
          name: 'coffeSetting',
          path: '/coffeSetting',
          builder: (context, params) => const CoffeSettingWidget(),
        ),
        FFRoute(
          name: 'CpffeeEditPage',
          path: '/cpffeeEditPage',
          builder: (context, params) => CpffeeEditPageWidget(
            coffeedit: params.getParam(
                'coffeedit', ParamType.DocumentReference, false, ['coffee']),
          ),
        ),
        FFRoute(
          name: 'MilkSetting',
          path: '/milkSetting',
          builder: (context, params) => const MilkSettingWidget(),
        ),
        FFRoute(
          name: 'milkEditPage',
          path: '/milkEditPage',
          builder: (context, params) => MilkEditPageWidget(
            milkediy: params.getParam(
                'milkediy', ParamType.DocumentReference, false, ['milk']),
          ),
        ),
        FFRoute(
          name: 'check3',
          path: '/check3',
          builder: (context, params) => const Check3Widget(),
        ),
        FFRoute(
          name: 'kopage10Copy',
          path: '/kopage10Copy',
          builder: (context, params) => const Kopage10CopyWidget(),
        ),
        FFRoute(
          name: 'kopage011',
          path: '/kopage011',
          builder: (context, params) => const Kopage011Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/kopage011';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/istockphoto-1297616724-1024x1024-transformed.jpeg',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

part of 'app_pages.dart';


abstract class Routes {
  Routes._();
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const onboard = _Paths.onboard;
  static const otp = _Paths.otp;
  static const home = _Paths.home;
  static const register = _Paths.register;
  static const categories = _Paths.categories;
  static const cart = _Paths.cart;
  static const orders = _Paths.orders;
  static const profile = _Paths.profile;
  static const manageAddress = _Paths.manageAddress;
  static const menu = _Paths.menu;
  static const personSetting = _Paths.personSetting;
  static const acountSetting = _Paths.acountSetting;
  static const editCar = _Paths.editCar;
  static const notification = _Paths.notification;
  static const conditions = _Paths.conditions;
  static const lastOrders = _Paths.lastOrders;
  static const orderDetails = _Paths.orderDetails;
  static const addAddress = _Paths.addAddress;
}

abstract class _Paths {
  _Paths._();
  static const splash = '/splash';
  static const login = '/login';
  static const onboard = '/onboard';
  static const otp = '/otp';
  static const home = '/home';
  static const register = '/register';
  static const categories = '/categories';
  static const cart = '/cart';
  static const orders = '/orders';
  static const profile = '/profile';
  static const manageAddress = '/manageAddress';
  static const addAddress = '/addAddress';
  static const menu = '/menu';
  static const personSetting = '/personSetting';
  static const acountSetting = '/acountSetting';
  static const editCar = '/editCar';
  static const notification = '/notification';
  static const conditions = '/conditions';
  static const lastOrders = '/lastOrders';
  static const orderDetails = '/orderDetails';
}

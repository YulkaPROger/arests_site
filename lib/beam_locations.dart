import 'package:arests_site/screen/contacts.dart';
import 'package:arests_site/screen/for_debitors.dart';
import 'package:arests_site/screen/for_partners.dart';
import 'package:arests_site/screen/unknown.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'screen/about_company.dart';
import 'screen/main_screen.dart';

class HomeLocation extends BeamLocation<BeamState>{
  HomeLocation(BeamState state):super(state);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
    BeamPage(key: const ValueKey('/home'), child: const MainScreen(), title: 'TimeToPay.money', type: BeamPageType.cupertino),
  ];

  @override
  List get pathBlueprints => ['/home'];

}

class PartnersLocation extends BeamLocation<BeamState>{
  PartnersLocation(BeamState state) : super(state);

  @override
  List get pathBlueprints => ['/partners/:partnersID'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) =>[
    BeamPage(key: const ValueKey('/home'), child: const MainScreen()),
    if (state.uri.pathSegments.contains('partners'))
      BeamPage(
        key: const ValueKey('partners'),
        child: const ForPartners(),
      ),
    if (state.pathParameters.containsKey('partnersID'))
      BeamPage(
        key: ValueKey('page-${state.pathParameters['404']}'), //TODO разные страницы для партнеров
        child: const Unknown(),
      ),
  ];
}


class DebtorsLocation extends BeamLocation<BeamState>{
  DebtorsLocation(BeamState state) : super(state);

  @override
  List get pathBlueprints => ['/debtors/:pageID'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) =>[
    BeamPage(key: const ValueKey('home'), child: const MainScreen()),
    if (state.uri.pathSegments.contains('debtors'))
      BeamPage(
        key: const ValueKey('debtors'),
        child: const ForDebitors(),
      ),
    if (state.pathParameters.containsKey('pageID'))
      BeamPage(
        key: ValueKey('page-${state.pathParameters['404']}'), //TODO разные страницы для дебиторов
        child: const Unknown(),
      ),
  ];
}

class AboutCompanyLocation extends BeamLocation<BeamState>{
  AboutCompanyLocation(BeamState state) : super(state);

  @override
  List get pathBlueprints => ['/about_company'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) =>[
    BeamPage(key: const ValueKey('/home'), child: const MainScreen()),
    if (state.uri.pathSegments.contains('about_company'))
      BeamPage(
        key: const ValueKey('about_company'),
        child: const AboutCompany(),
      ),
  ];
}

class ContactsLocation extends BeamLocation<BeamState>{
  ContactsLocation(BeamState state) : super(state);

  @override
  List get pathBlueprints => ['/contacts'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) =>[
    BeamPage(key: const ValueKey('/home'), child: const MainScreen()),
    if (state.uri.pathSegments.contains('contacts'))
      BeamPage(
        key: const ValueKey('contacts'),
        child: const Contacts(),
      ),
  ];
}
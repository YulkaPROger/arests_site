import 'package:arests_site/screen/for_partners.dart';
import 'package:arests_site/screen/unknown.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'screen/main_screen.dart';

class HomeLocation extends BeamLocation{
  HomeLocation(BeamState state) : super(state);

  @override
  // TODO: implement pathBlueprints
  List get pathBlueprints => ['/partners/:404'];


  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) =>[
    BeamPage(key: ValueKey('home'), child: MainScreen()),
    if (state.uri.pathSegments.contains('partners'))
      BeamPage(
        key: ValueKey('partners'),
        child: ForPartners(),
      ),
    if (state.pathParameters.containsKey('404'))
      BeamPage(
        key: ValueKey('book-${state.pathParameters['404']}'),
        child: Unknown(),
      ),
  ];





}
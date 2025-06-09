import 'package:go_router/go_router.dart';
import 'package:paractice/home/details_page.dart';
import 'package:paractice/home/gorouter_paractice.dart';
import 'package:paractice/home/profile_screen.dart';
import 'package:paractice/routes/app_routes.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const GorouterParactice(),
    ),
    GoRoute(
      path: AppRoutes.details,
      builder: (context, state) => const DetailsScreen(),
    ),
    GoRoute(
      path: AppRoutes.profile,
      builder: (context, state) {
        final userId = state.pathParameters['userId']!;
        return ProfileScreen(userId: userId);
      },
    ),

    // Add other 47+ routes here...
  ],
);

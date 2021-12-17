// import 'package:demo_1_proyect/screens/screens.dart';
// import 'package:flutter/material.dart';

// class HomeScreeen extends StatefulWidget {
//   const HomeScreeen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreeen> createState() => _HomeScreeenState();
// }

// class _HomeScreeenState extends State<HomeScreeen>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;

//   @override
//   void initState() {
//     super.initState();
//     tabController = TabController(length: 2, vsync: this, initialIndex: 0)
//       ..addListener(() {
//         setState(() {});
//       });
//   }

//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     TabBar tabBar = TabBar(
//       controller: tabController,
//       tabs: const [
//         Tab(text: 'Login'),
//         Tab(
//           text: 'Register',
//         )
//       ],
//       isScrollable: false,
//     );

//     AppBar appBar = AppBar(
//       backgroundColor: Colors.red,
//       elevation: 0,
//       bottom: tabBar,
//     );

//     TabBarView tabBarView = TabBarView(
//         controller: tabController, children: [LoginScreen(), RegisterScreen()]);

//     return SafeArea(
//       child: Scaffold(appBar: appBar, body: tabBarView),
//     );
//   }
// }

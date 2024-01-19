import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Symbols.notifications_rounded)),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Symbols.logout_rounded,
                  fill: 1,
                )),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
          children: [
            tampilUser(context),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Text('Berita Terbaru')),
                tampilBerita(
                    context: context,
                    image: 'assets/images/berita-1.png',
                    title: 'Waspadai Anemia pada Remaja Putri',
                    author: 'Direktorat SMP'
                ),
                tampilBerita(
                    context: context,
                    image: 'assets/images/berita-2.png',
                    title: '3 dari 10 remaja Indonesia menderita anemia',
                    author: 'Alinea.ID'
                ),
              ],
            )
          ],
        ),)
    );
  }

  Widget tampilBerita({
    BuildContext? context,
    String? image,
    String? title,
    String? author
  }) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.black12),
        child: Column(
          children: [
            Image.asset(image!),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: (MediaQuery.sizeOf(context!).width * 3 / 4) - 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('[$author]',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: Colors.black38)),
                            Text(
                              title!,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )),
                    TextButton(onPressed: () {}, child: const Text('Kunjungi'))
                  ],
                ))
          ],
        ));
  }

  Widget tampilUser(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.black12,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Elvira Vanny ! ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Text('Bagaimana kabarmu hari ini?')
            ],
          )),
          CircleAvatar(
            backgroundColor: Colors.pinkAccent.shade400,
          )
        ],
      ),
    );
  }
}

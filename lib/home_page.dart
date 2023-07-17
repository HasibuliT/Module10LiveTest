import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.orientationOf(context) == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(9),
          child: ListView.builder(
              itemCount: 18,
              scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3.0,
                  child: Padding(
                    padding: const EdgeInsets.all(9),
                    child: Flex(
                      direction: isPortrait ? Axis.horizontal : Axis.vertical,
                      children: [
                        Expanded(
                          flex: isPortrait ? 2 : 4,
                          child: Image.network('https://play-lh.googleusercontent.com/wIf3HtczQDjHzHuu7vezhqNs0zXAG85F7VmP7nhsTxO3OHegrVXlqIh_DWBYi86FTIGk',
                            width: MediaQuery.sizeOf(context).width * 0.35,
                          ),
                        ),

                      ],
                    ),
                  ),
                );
              }
          )
      ),
    );
  }
}
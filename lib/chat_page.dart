// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mentalhealth_app/Util/emoji_face.dart';



class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
     body: SafeArea(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Column(
               children: [
                 // Greetings Row
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                          //back arrow button
                          Container(
                            decoration: BoxDecoration(color: Colors.blue[600],
                             borderRadius: BorderRadius.circular(12),
                             ),
                             padding: EdgeInsets.all(12),
                             child: Icon(
                               Icons.arrow_back,
                               color: Colors.white,
                              ),
                          ),
                           // Bobby Singer
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Text('Bobby Singer',
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 24,
                                   fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text('Online',
                                 style: TextStyle(color: Colors.blue[100]),
                                ),
                              ],
                            ),
                   
                           // call icon
                           Container(
                             decoration: BoxDecoration(color: Colors.blue[600],
                             borderRadius: BorderRadius.circular(12),
                             ),
                             padding: EdgeInsets.all(12),
                             child: Icon(
                               Icons.call,
                               color: Colors.white,
                              ),
                           )
                          ],
                        ),
                 
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
           ),
           SizedBox(height: 25,
           ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18)
              ),
              padding: EdgeInsets.all(18),
                child: Center(
                  child: Column( 
                    children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                           decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(18),
                            child: (
                              Text(
                                'Hi Dami! how are you?  11:04',
                                style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 12,
                                 fontWeight: FontWeight.bold,
                               ),
                              )
                            ),      
                         ),
                       ],
                      ),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12),
                           ),
                            padding: EdgeInsets.all(18),
                             child: (
                              Text(
                                  'Im good, thanks! how are you? 11:04',
                               style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                             ),
                            )
                          ),      
                      ),
                        ],
                      ),
                       SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                           ),
                            padding: EdgeInsets.all(18),
                             child: (
                              Text(
                                  'Im great, are you free today? 11:04',
                               style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                             ),
                            )
                          ),      
                         ),
                        ],
                      ),
                       SizedBox(height: 48),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // to be corrected
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              padding: EdgeInsets.all(1),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.all(8),
                            child: Text('Today',
                             style: TextStyle(
                               color: Colors.grey,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              padding: EdgeInsets.all(1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue[600],
                                        borderRadius: BorderRadius.circular(12),
                                       ),
                                        padding: EdgeInsets.all(14),
                                       child: Row(
                                        children: [
                                        Icon(Icons.play_arrow, color: Colors.white,size: 24),
                                        SizedBox(width: 10),
                                        // get the correct icon for "voice note playing"
                                        Icon(Icons.voice_chat, size: 24,color: Colors.white),
                                        SizedBox(width: 10),
                                        Text('11:04',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                     ),
                                    ],
                                  ),
                                ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          padding: EdgeInsets.all(12),
                                          child: Row(
                                            children: [
                                            Column(
                                              children: [
                                                EmojiFace(emojiFace: '🤓')
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                EmojiFace(emojiFace: '🤓')
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                EmojiFace(emojiFace: '🤓')
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                EmojiFace(emojiFace: '🤓')
                                              ],
                                            ),
                                            SizedBox(width: 10),
                                            Text('11:04'),
                                          ],
                                                                           ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),

                                   Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                    ),
                                     padding: EdgeInsets.all(12),
                                      child: Row(
                                        children: [
                                        Column(
                                          children: [
                                            Text('Bobby',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          ],
                                   ),
                                   SizedBox(width: 3),
                                    Column(
                                          children: [
                                            Text('is',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                          ],
                                   ),
                                   SizedBox(width: 5),
                                    Column(
                                          children: [
                                            Text('typing',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                          ],
                                   ),
                                   SizedBox(width: 5),
                                    Column(
                                          children: [
                                            Icon(Icons.more_horiz)
                                    ],
                                   ),                   
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                     children: [
                       Column(
                          children: [
                          Text('write a message',
                           style: TextStyle(
                            color: Colors.grey,
                               fontSize: 12,
                               fontWeight: FontWeight.bold,
                                ),
                                ),
                          ],
                    ),
                    Column(
                          children: [
                          Icon(Icons.more_horiz),
                          ],
                    ),
                    SizedBox(width: 20),
                    Column(
                          children: [
                          Icon(Icons.photo_camera_rounded),
                          ],
                    ),
                 ]
             ),
          ),
                      Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(16)
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(Icons.mic),
                        ],
                      ),
                    ) 
                  ],
                )
          ]
                
     ),
 
       ),
     ),
          )
         ]
     )
     )
   );
     
  }
}
  
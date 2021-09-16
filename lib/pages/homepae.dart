import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  

static final String id = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

bool tek= true;
String color='black';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tek?Colors.black:Colors.white,
        title: Text("facebook",style: TextStyle(color: Colors.blue[900],fontSize: 40,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){

          },
           icon: Icon(Icons.search,color: tek?Colors.white:Colors.black,)),
          SizedBox(width: 5,),
          IconButton(onPressed: (){
              setState(() {
                if(tek){
                  tek=false;
                }
                else{
                  tek = true;
                }
              });
          },
           icon: Icon(Icons.camera_alt,color: tek?Colors.white:Colors.black,)),
           SizedBox(width: 10,)
        ],
      ),

     
     
     
      body: ListView(
        children: [
          
          
          
          //bosh qism
          Container(
            color: tek?Colors.black:Colors.white,
            padding: EdgeInsets.all(10),
            height:  (MediaQuery.of(context).size.height)/5,
            width: double.infinity,
            child: Column(
              children: [
               
               
               
               
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                  
                  
                  
                   Container(
                     width: 50,
                     height: 50,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage("assets/images/user_5.jpeg"),
                        fit: BoxFit.cover
                      )
                     ),
                   ),
                  
                  
                  
                   SizedBox(width: 10,),
                   
                   
                   
                   
                   Expanded(
                     
                     
                     
                     child: Container(
                       padding: EdgeInsets.only(left: 20),
                       height: 50,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30),
                         border: Border.all(
                           width: 1,
                           color: tek?Colors.white54:Colors.black,
                         ),
                         color: tek?Colors.black:Colors.white,
                       ),
                       child: Center(
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: "What's on your mind?",
                             hintStyle: TextStyle(color: tek?Colors.white54:Colors.black,fontSize: 20),
                             border: InputBorder.none,
                           ),
                         ),
                       )
                     ),
                   )
                    
                  ],
                ),
                SizedBox(height: 8,),
                Expanded(child: Container(
                  color: tek?Colors.black:Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                       
                       
                       
                        child:Container(
                          padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width)/30),
                          child: Row(
                            children: [
                              Icon(Icons.video_call,color: Colors.red,),
                              SizedBox(width: 10,),
                              Text("Live",style: TextStyle(color: tek?Colors.white54:Colors.black,fontSize: (MediaQuery.of(context).size.width)/17),)
                            ],
                          ),
                        )
                         ),
                        
                        
                        
                        
                         Container(
                           margin: EdgeInsets.symmetric(vertical: 7),
                          width: 1,
                          color: Colors.grey,
                         ),
                        
                        
                        
                        
                         Expanded(
                        child:Container(
                          padding: EdgeInsets.only(left:  (MediaQuery.of(context).size.width)/30),
                          child: Row(
                            children: [
                              Icon(Icons.photo,color: Colors.green,),
                              SizedBox(width: 10,),
                              Text("Photo",style: TextStyle(color: tek?Colors.white54:Colors.black,fontSize: (MediaQuery.of(context).size.width)/18),)
                            ],
                          ),
                        )
                         ),
                        
                        
                        
                        
                         Container(
                           margin: EdgeInsets.symmetric(vertical: 7),
                          width: 1,
                          color: Colors.grey,
                         ),
                        
                        
                        
                        
                         Expanded(
                        child:Container(
                          padding: EdgeInsets.only(left:  (MediaQuery.of(context).size.width)/40),
                          child: Row(
                            children: [
                              Icon(Icons.location_on,color: Colors.red,),
                              SizedBox(width: 5,),
                              Text("Check in",style: TextStyle(color: tek?Colors.white54:Colors.black,fontSize:  (MediaQuery.of(context).size.width)/19),)
                            ],
                          ),
                        )
                         ),
                    ],
                  ),
                ))

              ],
            ),
          ),
          SizedBox(height: 4,),
      

          Container(
            height:  (MediaQuery.of(context).size.height)/2.5,
            padding: EdgeInsets.symmetric(vertical: 12),
            color: tek?Colors.black:Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10,),
                  makeStory(
                    "assets/images/story_5.jpeg",
                    "assets/images/user_5.jpeg",
                    "User Five"
                  ),

                  makeStory(
                    "assets/images/story_4.jpeg",
                    "assets/images/user_4.jpeg",
                    "User Four"
                  ),

                  makeStory(
                    "assets/images/story_3.jpeg",
                    "assets/images/user_3.jpeg",
                    "User Three"
                  ),

                  makeStory(
                    "assets/images/story_2.jpeg",
                    "assets/images/user_2.jpeg",
                    "User Two"
                  ),

                  makeStory(
                    "assets/images/story_1.jpeg",
                    "assets/images/user_1.jpeg",
                    "User One"
                  ),

                  makeStory(
                    "assets/images/story_5.jpeg",
                    "assets/images/user_5.jpeg",
                    "User Five"
                  ),

                  makeStory(
                    "assets/images/story_4.jpeg",
                    "assets/images/user_4.jpeg",
                    "User Four"
                  ),

                  makeStory(
                    "assets/images/story_3.jpeg",
                    "assets/images/user_3.jpeg",
                    "User Three"
                  ),

                  makeStory(
                    "assets/images/story_2.jpeg",
                    "assets/images/user_2.jpeg",
                    "User Two"
                  ),

                  makeStory(
                    "assets/images/story_1.jpeg",
                    "assets/images/user_1.jpeg",
                    "User One"
                  ),


                ],
              ),
          ),
          SizedBox(height: 4,),

          makeFeed(
              false,
             'User Two',
             'assets/images/user_2.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_2.jpeg',
              'assets/images/story_3.jpeg'
          ),
          makeFeed(
              true,
             'User Three',
             'assets/images/user_5.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_4.jpeg',
              'assets/images/story_1.jpeg'
          ),

           makeFeed(
              true,
             'User Three',
             'assets/images/user_5.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_4.jpeg',
              'assets/images/story_1.jpeg'
          ),
           makeFeed(
              false,
             'User Three',
             'assets/images/user_5.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_4.jpeg',
              'assets/images/story_1.jpeg'
          ),
           makeFeed(
              false,
             'User Three',
             'assets/images/user_5.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_4.jpeg',
              'assets/images/story_1.jpeg'
          ),
           makeFeed(
              true,
             'User Three',
             'assets/images/user_5.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_4.jpeg',
              'assets/images/story_1.jpeg'
          ),
           makeFeed(
              true,
             'User Three',
             'assets/images/user_5.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_4.jpeg',
              'assets/images/story_1.jpeg'
          ),
           makeFeed(
              true,
             'User Three',
             'assets/images/user_1.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_3.jpeg',
              'assets/images/story_2.jpeg'
          ),
           makeFeed(
              false,
             'User Three',
             'assets/images/user_4.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_3.jpeg',
              'assets/images/story_4.jpeg'
          ),
           makeFeed(
              true,
             'User Three',
             'assets/images/user_2.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_2.jpeg',
              'assets/images/story_3.jpeg'
          ),
           makeFeed(
              false,
             'User Three',
             'assets/images/user_1.jpeg',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_1.jpeg',
              'assets/images/story_5.jpeg'
          ),



        ],
      ),
    );
  }
  Widget makeStory(storyimage , userimage, username){
        return AspectRatio(aspectRatio: 1.3/2,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(storyimage),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.1 ),
                ]
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      ),
                      image: DecorationImage(
                        image: AssetImage(userimage),
                      )
                  ),
                ),
                Text(username,style: TextStyle(color: Colors.white54,fontSize: 15),)
              ],
            ),
          ),
        ),
        );
  }

Widget makeFeed(bool tek1,  userName, userImage, feedTime, feedText,feedImage1,feedImage2){
  return Container(
    margin: EdgeInsets.only(top: 10),
      color: tek?Colors.black:Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
         
         //part1
         Container(
           padding: EdgeInsets.symmetric(horizontal: 10),
           child: Column(
             children: [
               SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                 children: [
                   Container(
                     width: 50,
                     height: 50,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
                         image: AssetImage(userImage),
                         fit: BoxFit.cover,
                       )
                     ),
                   ),
                   SizedBox(width: 10,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userName,style:TextStyle(color: tek?Colors.white70:Colors.black,fontSize: 16 )),
                        SizedBox(height: 4,),
                        Text(feedTime,style: TextStyle(color: tek?Colors.white54:Colors.black,fontSize: 13),)
                      ],
                    )

                 ],
               ),

                IconButton(onPressed: (){

                }, icon: Icon(Icons.more_horiz,size: 30,color: tek?Colors.white70:Colors.black,))
                
                ],
              ),

            SizedBox(height: 20,),
            Text(feedText,style: TextStyle(color: tek?Colors.white54:Colors.black,fontSize: 16),),


               
             ],
           ),
         ),
        
        Container(
          height: 280,
          child: Stack(
            children: [
              
              tek1?Row(
                children: [
                  Expanded(
                    child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(feedImage1),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  ),
                  Expanded(
                    child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(feedImage2),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  )
                ],
              )
                :Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(feedImage1),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ],
          ),

        ),

        //likes
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
                  Row(
                    children: [
                      makeLike(),
                    Transform.translate(
                        offset: Offset(-5, 0),
                        child: makeLove()
                    ),
                    SizedBox(width: 5,),
                    Text("2,5k",style: TextStyle(color: tek?Colors.white54:Colors.black,fontSize: 16),)
                    ],
                  ),

                  Text("400 Comments",style: TextStyle(color: tek?Colors.white54:Colors.black,fontSize: 16),)
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up,color: Colors.blue,),
                          SizedBox(width: 5,),
                          Text("Like",style: TextStyle(color: Colors.blue,fontSize: 16),)
                        ],
                      ),
                    ),


                  Container(
                      child: Row(
                        children: [
                          Icon(Icons.chat,color: Colors.white54,),
                          SizedBox(width: 5,),
                          Text("Comment",style: TextStyle(color: Colors.white54,fontSize: 16),)
                        ],
                      ),
                    ),



                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.share,color: Colors.white54,),
                          SizedBox(width: 5,),
                          Text("Share",style: TextStyle(color: Colors.white54,fontSize: 16),)
                        ],
                      ),
                    )
                ],
              )
            ],
          ),
        )
        
        ],
      ),
  );
}
  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }

}
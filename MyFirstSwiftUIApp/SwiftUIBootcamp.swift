//
//  SwiftUIBootcamp.swift
//  MyFirstSwiftUIApp
//
//  Created by Macservis on 30/04/22.
//

import SwiftUI

@available(iOS 15.0, *)
struct SwiftUIBootcamp: View {

    @State var background: Color = Color.white
    
    @State var object: String = "Object"
    
    typealias tupl = (String,Color)
    
    
    

    
    let fruitsO: [Fruit] = [
      Fruit(name: "apple", color: Color.red.opacity(0.7)),
      Fruit(name: "ananas",color: Color.yellow.opacity(0.7)),
      Fruit(name: "lemon", color: Color.yellow),
      Fruit(name: "orange", color: Color.orange)
    ]
    
    
    
    let vegetablesO: [Vegetables] = [
        Vegetables(name: "carrot", color: Color.orange),
        Vegetables(name: "potato", color: Color.brown),
        Vegetables(name: "onion", color: Color.purple),
        Vegetables(name: "turnip", color: Color.brown.opacity(0.7))
    
    ]
    
    
    let objects: [[Object]] = [
        [
          Fruit(name: "apple", color: Color.red.opacity(0.7)),
          Fruit(name: "ananas",color: Color.yellow.opacity(0.7)),
          Fruit(name: "lemon", color: Color.yellow),
          Fruit(name: "orange", color: Color.orange)
        ],
        [
            Vegetables(name: "carrot", color: Color.orange),
            Vegetables(name: "potato", color: Color.brown),
            Vegetables(name: "onion", color: Color.purple),
            Vegetables(name: "turnip", color: Color.brown.opacity(0.7))
        
        ]
    ]
    
  
    
    
    
    var body: some View {
        
        ZStack {
            
           // background
            background.edgesIgnoringSafeArea(.all)
          
            
            //Contents
    
            
            VStack {
              
                Text("Object Colors")
                    .font(.largeTitle)
                    .bold()
                    //.padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .shadow(radius: 10)
                
                Spacer()
                    .frame(height: 10)
                
                Text(object)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .padding(.horizontal, 30)
                    .foregroundColor(.black)
                    .background(
                        Capsule()

                            .fill(
                                LinearGradient(colors: [.blue,.red,.white,.red,.green], startPoint: .top
                                               , endPoint: .bottom)
                                
                                
                            )
                    )
                    .shadow(color: Color.black, radius: 10,x: 10,y: 10)
                    
                    
                    
                
                
                Spacer()
                    .frame(height: 20)
                
                
                ScrollView {
                    
                 
                    VStack(spacing: 20) {
                        
                    
                      ForEach(0..<objects.count) { i in
                          
                        
                          ScrollView(.horizontal,showsIndicators: false) {
                              
                              HStack(spacing: 15) {
                                  
                                  ForEach(0..<objects[i].count) { j in
                                      
                                      
                                      Button {
                                          self.background = objects[i][j].color!
                                          
                                          
                                          self.object = objects[i][j].name!
                                          
                                          
                                      } label: {
                                          
                                          Image("\(objects[i][j].name!)")
                                              .resizable()
                                              .scaledToFill()
                                              .frame(width: 150, height: 150)
                                              .clipped()
                                              .cornerRadius(10)
                                              .shadow(radius: 10,x:10,y: 10)
                                              .padding()
                                          
                                      }
                                  }
 
                              }
                              
                              
                          }
  
                      }
 
                    }
                    
                    
                }
                .background(Color.white)
                .cornerRadius(20)
                .padding(.horizontal, 8)
              //  .padding(.bottom, 10)
                
                
                
                
                Button {
                    
                    self.background = Color.white
                    self.object = "Object"
                    
                } label: {
                 
                    Text("Refresh")
                        .font(SwiftUI.Font.largeTitle)
                        .bold()
                        .foregroundColor(SwiftUI.Color.white)
                        .padding()
                        .padding(.horizontal,10)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(color: SwiftUI.Color.black, radius: 10, x: 10, y: 10)
                    
                 
                    
                    
                }
         
               
                
            }
          //  .edgesIgnoringSafeArea(.bottom)

        }
        
        
        
        
    }
   
}


@available(iOS 15.0, *)
struct SwiftUIBootcamp_Previews: PreviewProvider {
    static var previews: some View {
       
        SwiftUIBootcamp()
            
    }
}




protocol Object {
    
    var name: String? { get }
    var color: Color? {get }
    
    
    
}




struct Fruit: Object {
    
    var name: String? = "Fruit"
    var color: Color? = Color.green
    
    
    init(name: String?, color: Color?) {
        
        if let name = name {
            self.name = name
        }
        
        if let color = color {
            self.color = color
        }
           
    }
    
}


struct Vegetables: Object {
    
    var name: String? = "Vegetables"
    var color: Color? = Color.orange
    
    
    init(name: String?, color: Color?) {
        
        if let name = name {
            self.name = name
        }
        
        if let color = color {
            self.color = color
        }
           
    }
    
    
}










//MARK: State

//@State var background: Color = Color.green
//
//
//@State var title: String = "Title"
//
//
//@State var count: Int = 0
//
//
//
//
//
//
//
//var body: some View {
//
//    ZStack {
//        //Background
//
//        //Color.green.ignoresSafeArea()
//        background.ignoresSafeArea()
//
//
//
//       //Content
//
//        VStack {
//
//        Text(title)
//                .font(Font.title)
//                .foregroundColor(Color.white)
//                .padding()
//
//        Text("Count: \(count)")
//                .font(Font.title)
//                .foregroundColor(.white)
//
//
//        HStack {
//            Button {
//
//                self.title = "Clicked Button 1"
//                self.count += 1
//                self.background = Color.teal
//
//
//            } label: {
//                Text("Button 1")
//                    .padding()
//                    .padding(.horizontal)
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//                    .shadow(radius: 10)
//            }
//
//            Button {
//                self.title = "Clicked Button 2"
//                self.count -= 1
//                self.background = Color.purple
//                } label : {
//                    Text("Button 2")
//                        .padding()
//                        .padding(.horizontal)
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(10)
//                        .shadow(radius: 10)
//                }
//
//
//
//            }
//        .padding(.vertical, 20)
//
//
//            Button {
//                self.title = "Title"
//                self.count = 0
//                self.background = Color.green
//            } label: {
//                Text("Refresh")
//                    .foregroundColor(.white)
//                    .padding()
//                    .padding(.horizontal, 10)
//                    .background(Color.red)
//                    .cornerRadius(10)
//                    .shadow(radius: 10)
//            }
//
//
//
//
//
//        }
//        .shadow(color: Color.black, radius: 10, x: 10, y: 10)
//
//
//
//    }
//
//}




//MARK: Buttons


//@State  var textTitle = "Title"
//@State var color = Color.yellow
//
//let wwidth = UIScreen.main.bounds.width
//let wheight = UIScreen.main.bounds.height
//
//var body: some View {
//
//
//    VStack {
//
//
//
//    Text(textTitle)
//            .padding()
//            .padding(.horizontal)
//            .background(color)
//            .cornerRadius(10)
//
//        Button(action: {
//
//            self.textTitle = "Button 1 Clicked"
//            self.color = Color.red
//
//            Sayhello(name: "Samandar")
//
//        }, label: {
//
//
//            Text("Press Me")
//                .padding()
//                .padding(.horizontal)
//                .foregroundColor(Color.white)
//                .background(Color.blue.opacity(0.7))
//                .cornerRadius(10)
//                .shadow(radius: 10, x: 5, y: 7)
//
//
//
//        })
//
//
//
//        Button {
//            self.textTitle = "Button2 Clickced"
//            self.color = Color.green
//
//            Sayhello(name: "Humoyun")
//
//        } label: {
//            Text("Finish")
//                .padding()
//                .padding(.horizontal)
//                .foregroundColor(Color.black)
//                .background(
//                Capsule()
//                    .stroke(Color.gray, lineWidth: 2)
//
//                )
//                .shadow(radius: 10,x: 10,y: 10)
//        }
//
//
//
//
//
//
//
//    }
//
//    }
//









//MARK: Safe Area

//ZStack {
//
//        Color.red.edgesIgnoringSafeArea(.all)
//
//            VStack {
//
//            ScrollView {
//
//                VStack {
//
//
//                Text("Hello Samandar")
//                    .font(.title)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .background(Color.red)
//
//
//                ForEach(0..<10) {i in
//
//                  RoundedRectangle(cornerRadius: 10)
//                        .frame(height: 150)
//                        .padding()
//
//                }
//
//                }
//                .background(Color.green)
//
//
//
//            }
//            .background(Color.red)
//            .frame(height: 400)
//
//                Spacer()
//
//            }
//
//
//
//        }
//










//MARK: LazyVGrid

//ScrollView {
//
//    Rectangle()
//        .fill(Color.blue)
//        .frame(height: 200)
//        .frame(maxWidth: .infinity)
//
//
//LazyVGrid(columns:
//            [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())],
//          alignment: HorizontalAlignment.center,
//          spacing: nil, pinnedViews: PinnedScrollableViews.sectionHeaders) {
//
//
//    Section(header:
//                Text("Section 1")
//        .font(.title)
//        .frame(maxWidth: .infinity)
//        .background(Color.gray)
//        .foregroundColor(SwiftUI.Color.white)
//
//    ) {
//        ForEach(0..<10) { i in
//
//            Image("\(i)")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: wwidth / 3,height: 150)
//                .clipped()
//
//        }
//
//    }
//
//
//    Section(header:
//     Text("Section 2")
//        .font(.title)
//        .frame(maxWidth: .infinity)
//        //.foregroundColor(SwiftUI.Color.white)
//       // .background(Color.green)
//
//
//
//    ) {
//        ForEach(5..<15) { i in
//
//            Image("\(i)")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: wwidth / 3,height: 150)
//                .clipped()
//
//        }
//    }
//
//
//
//
//}
//
//
//
//}


//ScrollView(.vertical, showsIndicators: true) {
//
//
//   Text("Profile")
//        .font(.title)
//        .frame(maxWidth: .infinity)
//        .background(Color.green)
//
//
//    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())],spacing: 5) {
//
//        ForEach(0..<images.count) { i in
//
//            Image("\(images[i])")
//                .resizable()
//                .scaledToFill()
//                .frame(width: wwidth / 2, height: 200)
//                .clipped()
//                .cornerRadius(10)
//
//
//        }
//
//
//
//    }
//
//}
//













//MARK: Insta SearchView
//VStack {
//
//TextField("Search",text: $text)
//    .frame(height: 50)
//    .textFieldStyle(RoundedBorderTextFieldStyle())
//    .foregroundColor(Color.gray)
//
//
//
//ScrollView {
//
//
//
//VStack(spacing: 0){
//
//
//
//    ForEach(1..<20) { i in
//
//
//        VStack(spacing: 0) {
////1
//            HStack (spacing: 0) {
//
//             Image("\(i)")
//                    .resizable()
//                    .scaledToFill()
//                    .padding(.all, 0.5)
//                    .frame(width: (wwidth) / 2,height: (wwidth) / 3 * 2)
//                    .clipped()
//
//                VStack(spacing: 0) {
//
//                    Image("\(i)")
//                           .resizable()
//                           .scaledToFill()
//                           .padding(.all, 0.5)
//                           .frame(width: (wwidth) / 2,height: (wwidth) / 3)
//                           .clipped()
//
//                    Image("\(i)")
//                           .resizable()
//                           .scaledToFill()
//                           .padding(.all, 0.5)
//                           .frame(width: (wwidth) / 2,height: (wwidth) / 3)
//                           .clipped()
//
//
//                }
//
//
//
//
//        }
////2
//            HStack(spacing: 0) {
//
//                Image("\(i)")
//                       .resizable()
//                       .scaledToFill()
//                       .padding(.all, 0.5)
//                       .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                       .clipped()
//
//                Image("\(i)")
//                       .resizable()
//                       .scaledToFill()
//                       .padding(.all, 0.5)
//                       .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                       .clipped()
//
//                Image("\(i)")
//                       .resizable()
//                       .scaledToFill()
//                       .padding(.all, 0.5)
//                       .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                       .clipped()
//
//
//            }
//
////3
//              HStack(spacing: 0) {
//
//                  Image("\(i)")
//                         .resizable()
//                         .scaledToFill()
//                         .padding(.all, 0.5)
//                         .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                         .clipped()
//
//                  Image("\(i)")
//                         .resizable()
//                         .scaledToFill()
//                         .padding(.all, 0.5)
//                         .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                         .clipped()
//
//                  Image("\(i)")
//                         .resizable()
//                         .scaledToFill()
//                         .padding(.all, 0.5)
//                         .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                         .clipped()
//
//              }
//
//
////4
//            HStack (spacing: 0) {
//
//                VStack(spacing: 0) {
//
//                    Image("\(i)")
//                           .resizable()
//                           .scaledToFill()
//                           .padding(.all, 0.5)
//                           .frame(width: (wwidth) / 2,height: (wwidth) / 3)
//                           .clipped()
//
//                    Image("\(i)")
//                           .resizable()
//                           .scaledToFill()
//                           .padding(.all, 0.5)
//                           .frame(width: (wwidth) / 2,height: (wwidth) / 3)
//                           .clipped()
//
//
//                }
//
//
//
//                 Image("\(i)")
//                    .resizable()
//                    .scaledToFill()
//                    .padding(.all, 0.5)
//                    .frame(width: (wwidth) / 2,height: (wwidth) / 3 * 2)
//                    .clipped()
//
//
//
//
//
//
//        }
//
////5
//            HStack(spacing: 0) {
//
//                Image("\(i)")
//                       .resizable()
//                       .scaledToFill()
//                       .padding(.all, 0.5)
//                       .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                       .clipped()
//
//                Image("\(i)")
//                       .resizable()
//                       .scaledToFill()
//                       .padding(.all, 0.5)
//                       .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                       .clipped()
//
//                Image("\(i)")
//                       .resizable()
//                       .scaledToFill()
//                       .padding(.all, 0.5)
//                       .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                       .clipped()
//
//
//            }
//
////6
//              HStack(spacing: 0) {
//
//                  Image("\(i)")
//                         .resizable()
//                         .scaledToFill()
//                         .padding(.all, 0.5)
//                         .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                         .clipped()
//
//                  Image("\(i)")
//                         .resizable()
//                         .scaledToFill()
//                         .padding(.all, 0.5)
//                         .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                         .clipped()
//
//                  Image("\(i)")
//                         .resizable()
//                         .scaledToFill()
//                         .padding(.all, 0.5)
//                         .frame(width: (wwidth) / 3,height: (wwidth) / 3)
//                         .clipped()
//
//              }
//
//
//        }
//
//    }
//
//
//}
//
//
//}
//
//}





//MARK: ScrollView


//VStack(spacing: 0){
//
//    Spacer()
//        .frame(width: wwidth * 100,height: 40)
//        .background(Color.gray)
//
//
//    HStack {
//
//      Image(systemName: "camera.fill")
//            .font(Font.title)
//
//        Spacer()
//
//
//
//        Text("Instagram")
//            .font(Font.title)
//
//
//        Spacer()
//
//
//      Image(systemName: "trash.fill")
//            .font(Font.title)
//
//    }
//    .background(Color.gray)
//
//    Spacer()
//        .frame(width: wwidth * 100,height: 20)
//        .background(Color.gray)
//
//
//ScrollView{
//
//    VStack  {
//
//        Rectangle()
//            .fill(Color.green)
//            .frame(height: 300)
//
//        Rectangle()
//            .fill(Color.yellow)
//            .frame(height: 300)
//
//        Rectangle()
//            .fill(Color.red)
//            .frame(height: 300)
//
//        Rectangle()
//            .fill(Color.blue)
//            .frame(height: 300)
//
//
//
//    }
//
//
//}
//
//}
//.frame(height: wheight * 100)
//
//
//


//ScrollView(.horizontal, showsIndicators: false, content: {
//
//            HStack(alignment: .center, spacing: 10, content: {
//
//
//                ForEach(0..<10) {index1 in
//
//                    ScrollView(.vertical, showsIndicators: true, content: {
//
//
//                        VStack(alignment: .center, spacing: 10, content: {
//
//                            ForEach(0..<50) { index2 in
//
//
//                                Circle()
//                                    .fill(Color.blue)
//                                    .shadow(color: Color.black.opacity(0.5), radius: 10)
//                                    .padding()
//                                    .frame(width: 150, height: 150)
//                                    .overlay(
//
//                                        Text("\(index1) : \(index2)")
//
//                                    )
//
//
//
//                            }
//
//
//
//
//
//                        })
//
//
//
//
//
//
//                    })
//
//
//
//
//
//                }
//
//
//
//
//
//
//
//
//            })
//
//
//        })
//




//MARK: FOREACH

//VStack(alignment: SwiftUI.HorizontalAlignment.center, spacing: 10, content: {
//
//    ForEach((0..<5)) { index in
//        Text("Hello Samandar")
//    }
//
//    ForEach(0..<array.count, content: {
//      i in
//
//        Text("\(array[i])")
//
//    })
//
//
//    ForEach((0..<7)) { index in
//        Image("photo1")
//            .resizable()
//            .scaledToFill()
//            .frame(maxWidth: .infinity)
//            .frame(height: 60)
//            .clipped()
//    }
//
//
//})


//       VStack {
        
//        ForEach((array.indices), content: { i in
//
//            TextField("\(array[i])",text: $texts[i])
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .frame(maxWidth: .infinity)
//                .frame(height: 40)
//                //.background(Color.green)
//
//
//
//
//           // Text("\(array[i])")
//
//        })
//
//        }






//MARK: inits

//var background: Color? = Color.green
//var count: Int? = 20
//var title: String? = "Apples"
//
//init(count: Int?, title: String?) {
//
//    if count != nil {
//        self.count = count
//    }
//
//    if title != nil {
//        self.title = title
//    }
//
//    if self.title == "Apples" {
//        background = Color.red
//    }else {
//        background = Color.orange
//    }
//
//
//}
//
//
//
//
//init() {
//
//}
//
//
//init(background: Color?, count: Int?, title: String?) {
//
//    if background != nil {
//        self.background = background
//    }
//
//    if count != nil {
//        self.count = count
//    }
//
//    if title != nil {
//        self.title = title
//    }
//
//}





//MARK: Spacer

//VStack(alignment: HorizontalAlignment.center, spacing: 0, content: {
//
//    Image("photo1")
//        .resizable()
//        .scaledToFill()
//        //.padding(.all, 20)
//        .frame(height: (wheight * 100 - 60) / 3)
//        .clipped()
//
//    Spacer()
//
//    Image("photo2")
//        .resizable()
//        .scaledToFill()
//       // .padding(.all, 20)
//        .frame(height: (wheight * 100 - 60) / 3)
//        .clipped()
//
//   Spacer()
//
//    Image("photo1")
//        .resizable()
//        .scaledToFill()
//        //.padding(.all, 20)
//        .frame(height: (wheight * 100 - 60) / 3)
//        .clipped()
//
//})
//.frame(height: wheight * 100)
//.background(Color.blue)
//


//MARK: Spacer and Stacks

//VStack(alignment: SwiftUI.HorizontalAlignment.center, spacing: 0) {
//
//
//
//
//    VStack(alignment: HorizontalAlignment.center, spacing: 0, content: {
//
//
//        Image("photo2")
//            .resizable()
//            .scaledToFill()
//            .frame(width: wwidth * 100, height: (wheight * 50 - 20) / 3)
//            .clipped()
//
//        Spacer()
//
//
//        Image("photo1")
//            .resizable()
//            .scaledToFill()
//            .frame(width: wwidth * 100, height: (wheight * 50 - 20) / 3)
//            .clipped()
//
//        Spacer()
//
//        Image("photo2")
//            .resizable()
//            .scaledToFill()
//            .frame(width: wwidth * 100, height: (wheight * 50 - 20) / 3)
//            .clipped()
//
//
//
//    })
//    .frame(width: wwidth * 100, height: (wheight * 100 - 10) / 2)
//    .background(Color.yellow)
//
//
//    Spacer()
//
//
//    HStack(alignment: SwiftUI.VerticalAlignment.center, spacing: 0){
//
//        Image("photo1")
//            .resizable()
//            .scaledToFill()
//            .frame(width: (wwidth * 100 - 20) / 3, height: wheight * 50 - 5)
//            .clipped()
//
//        Spacer()
//
//        Image("photo2")
//            .resizable()
//            .scaledToFill()
//            .frame(width: (wwidth * 100 - 20) / 3, height: wheight * 50 - 5)
//            .clipped()
//
//        Spacer()
//
//        Image("photo1")
//            .resizable()
//            .scaledToFill()
//            .frame(width: (wwidth * 100 - 20) / 3, height: wheight * 50 - 5)
//            .clipped()
//
//    }
//    .frame(width: wwidth * 100, height: wheight * 50 - 5)
//    .background(Color.red)
//
//}
//.background(Color.green)





//  VStack(alignment: HorizontalAlignment.center, spacing: 0, content: {
//
//      HStack(alignment: VerticalAlignment.center, spacing: 0){
//
//          Image(systemName: "camera.fill")
//              .font(SwiftUI.Font.largeTitle)
//
//          Spacer()
//              .frame(height: 20)
//              //.background(Color.orange)
//
//          Image(systemName: "trash.fill")
//              .font(.largeTitle)
//
//      }
//      .padding()
//      .background(Color.gray)
//
//      Spacer()
//          .frame(width: 20)
//         // .background(Color.orange)
//
//
//      Rectangle()
//          .frame(width: wwidth * 100, height: 1)
//
//
//
//
//      HStack(alignment: VerticalAlignment.center, spacing: 0) {
//
//          Spacer()
//              .frame(height: 20)
//              //.background(Color.orange)
//
//          Image(systemName: "book.fill")
//              .font(Font.largeTitle)
//              //.padding(.leading, 30)
//
//          Spacer()
//              .frame(width: wwidth * 50, height: 20)
//              //.background(Color.orange)
//
//
//          Image(systemName: "car.fill")
//              .font(.largeTitle)
//              //.padding(.trailing, 30)
//
//          Spacer()
//              .frame(height: 20)
//             // .background(Color.orange)
//
//
//      }
//      .padding()
//
//
//
//  })
//
  
 
  





//MARK: Padding

//        VStack(alignment: HorizontalAlignment.leading, spacing: 0) {
//
//
//            Text("Hello world")
//                .font(.largeTitle)
//            .fontWeight(Font.Weight.semibold)
//            .background(Color.red)
//            .padding()
//            .cornerRadius(10)
//            .background(Color.yellow)
//            //.cornerRadius(10)
//            //.frame(maxWidth: .infinity, alignment: .trailing)
//            .padding(.horizontal, 30)
//            .padding([.bottom, .trailing], 40)
//
//            Text("This is all programmaticly language have word and it's beautiful")
//                .background(Color.blue)
//                .cornerRadius(10)
//                .padding()
//                .background(Color.green)
//              //.cornerRadius(10)
//                .padding()
//
//            Image("photo1")
//                .resizable()
//                .aspectRatio(contentMode: ContentMode.fit)
//                .cornerRadius(10)
//                .padding()
//
//        }
//        .cornerRadius(20)
//        .background(Color.white
//            .shadow(color: Color.black, radius: 20, x: 10, y: 10))
//        //.cornerRadius(10)
//        .padding()
//        //.shadow(color: Color.black.opacity(06), radius: 10, x: 10, y: 10)
//        // .frame(width: wwidth - 30, height: wheight - 30)
//













//ZStack, HStack, VStack


//        VStack(alignment: HorizontalAlignment.center, spacing: 40, content: {
//
//            ZStack(alignment: .bottomLeading, content: {
//                Image(image)
//                    .resizable()
//                    .scaledToFill()
//                    .padding(.top, 10)
//                    .clipped()
//                    .frame(width: wwidth - 30, height: wheight / 2)
//                    .clipShape(Circle())
//                    .padding()
//                    .background(
//                         Circle()
//                            .fill(Color.red)
//                            .frame(width: wwidth, height: wheight / 2)
//                    )
//
//                RoundedRectangle(cornerRadius: 40)
//                    .fill(Color.gray.opacity(0.4))
//                    .frame(width: wwidth / 2, height: 50)
//
//                Text("Hello!")
//                    .foregroundColor(Color.white)
//                    .font(Font.title)
//                    .bold()
//                    .shadow(color: Color.red, radius: 10, x: 20, y: -10)
//                    .frame(width: wwidth / 2, height: 40)
//
//            })
//            .frame(width: wwidth, height: wheight / 2)
//
//            Text("This is my photo ok!")
//                .font(Font.title)
//                .foregroundColor(Color.black)
//                .italic()
//                .opacity(0.6)
//                .frame(width: wwidth, height: 20)
//
//
//
//
//        })
//        .frame(width: wwidth, height: wheight)
//
//
//













//Overlay

//Button(action: {
//           print("Hello Samandar")
//
//        }, label: {
//
//            Rectangle()
//                .fill(Color.blue)
//                .opacity(0.2)
//                .overlay(
//                       Image("photo1")
//                           .resizable()
//                           .scaledToFill()
//                           .clipped()
//                           .clipShape(Circle())
//                           .padding(.all, 5)
//                           .frame(width: 100, height: 100)
//                           .background(
//                               Rectangle()
//                                   .fill(Color.orange)
//                                   .clipShape(Circle())
//                           )
//                           .background(
//                           Rectangle()
//                               .fill(Color.red)
//                               .frame(width: 120, height: 130)
//                               .overlay(
//                                         Text("Samandarbek")
//                                            .bold()
//                                            .font(Font          .system(size: 15))
//                                            .italic()
//                                            .foregroundColor(Color.green)
//                                       ,alignment: .bottom)
//                               .cornerRadius(20)
//
//                           )
//                    , alignment: .leading)
//                .frame(width: UIScreen.main.bounds.width, height: 130)
//                .cornerRadius(20)
//                .overlay(Text("Hello Samandarbek")
//                    .bold().font(.title)
//                    .italic()
//                         , alignment: .trailing)
//
//  })
//


//Circle()
//            .fill(
//                LinearGradient(colors: [Color.orange, Color.red, Color.green], startPoint: UnitPoint.topLeading, endPoint: UnitPoint.bottomTrailing)
//            )
//            .frame(width: 100, height: 100)
//            .overlay(
//                Image("photo1")
//                    .resizable()
//                    .scaledToFill()
//                    .clipShape(Circle())
//                    .frame(width: 90, height: 90)
//               ,alignment: .center
//            )
//            .overlay(
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 35, height: 35)
//                    .overlay(
//                        Text("10")
//                            .foregroundColor(SwiftUI.Color.white)
//                        ,alignment: .center
//                    )
//                    .shadow(color: Color.red.opacity(0.4), radius: 10, x: 10, y: 10)
//                ,alignment: .bottomTrailing
//            )
//            .shadow(color: Color.red.opacity(0.5), radius: 20, x: 10, y: 10)
//







//Background

//Text("Assalomu alekum")
//.bold()
////.font(Font.title)
//.font(Font.system(size: 20))
//.foregroundColor(Color.yellow)
////.padding()
//.frame(width: 200, height: 50, alignment: .center)
//.background(
//    Circle()
//        .fill(
//            LinearGradient(colors: [Color.red, Color.blue], startPoint: UnitPoint.leading, endPoint: UnitPoint.trailing)
//        )
//        .frame(width: 200, height: 200, alignment: Alignment.center)
//)
//.background(
//    Circle()
//        .fill(
//            LinearGradient(colors: [Color.blue, Color.red], startPoint: UnitPoint.leading, endPoint: UnitPoint.trailing)
//        )
//        .frame(width: 220, height: 220, alignment: Alignment.center)
//)




//
////Image
//
//   Image("photo1")
//         .resizable()
//         .aspectRatio(contentMode: ContentMode.fill)
//         .frame(width: 200, height: 200)
//         .clipped()
//         .clipShape(RoundedRectangle(cornerRadius: 30))
//         .foregroundColor(.red)
//         .clipShape(Circle())




// Icons

//        Image(systemName: "doc.fill.badge.plus")
//            .renderingMode(.original)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//             //.font(.title)
//            .frame(width: 200, height: 300)
//            .foregroundColor(.red)
//
//




//        Image(systemName: "arrow.clockwise.heart.fill")
//            //.font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 300, height: 300)
//            //.font(.system(size: 60))
//
//            .foregroundColor(Color.red)










//        RoundedRectangle(cornerRadius: 25)
//            .fill(
//
////
////                AngularGradient(colors: [Color.blue,Color.red], center: UnitPoint.center,
////                                angle: .degrees(60))
////
//
//
//
////RadialGradient(
////             colors: [Color.orange,Color.yellow,Color.black, Color.white,Color.green],
////                  center: UnitPoint.topTrailing,
////                  startRadius: 0,
////                  endRadius: 200
////)
//
//
//
////LinearGradient(
////               colors: [Color.red,
////                        Color.yellow,
////                        Color.black],
////               startPoint: .topTrailing,
////               endPoint: .bottomLeading
////)
//
//
//
//            )
//            .frame(width: 300, height: 200)
//
//





//Colors

//        RoundedRectangle(cornerRadius: 25)
//            .fill(
//                Color.red
//                )
//            .frame(width: 300, height: 200)
//            .shadow(color: .yellow.opacity(0.6), radius: 10, x: 20, y: 20)
//            .opacity(0.7)
//



//Shapes
 
//      // Circle()
//        Rectangle()
//            //.foregroundColor(.red)
//            //.stroke()
//           //.stroke(.red)
//            //.stroke(.red, lineWidth: 30)
//
//            //.stroke(.orange, style: StrokeStyle(lineWidth: 40, lineCap: .round, dash: [50]))
//            .trim(from: 0.4, to: 1)
//





//Text

//        Text("Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World!Hello, World!".lowercased().uppercased().capitalized)
//            //.font(.title)
//            .foregroundColor(.red)
//            //.bold()
//            //.underline()
//            //.underline(true, color: .red)
//            //.italic()
//            //.font(Font.system(size: 30, weight: Font.Weight.semibold, design: Font.Design.serif))
//            //.kerning(10)
//            .multilineTextAlignment(.center)
//            .frame(width: UIScreen.main.bounds.width / 2 - 20, height: UIScreen.main.bounds.height / 2 - 20, alignment: .topTrailing)
//
//            .padding()
//            .background(.yellow)
//
    

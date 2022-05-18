//
//  BindingBootCamp.swift
//  MyFirstSwiftUIApp
//
//  Created by Macservis on 13/05/22.
//

import SwiftUI

struct BindingBootCamp: View {
    
    @State var background: Color = Color.purple
    
    @State var count: Int = 0
    
    @State var title: String = "Title"
    
    
    var body: some View {
        
        
        contentSomeView
        
      
    }
    
    var contentSomeView: some View {
        
        
        ZStack {
            
            background.edgesIgnoringSafeArea(.all)
       
            VStack {
            
            
                Text(title)
                    .font(.largeTitle)
                
                
                Text("Count: \(count)")
                    .font(.largeTitle)
                    .padding()
                
                
                
                ButtonView(background: $background, countt: $count,title: $title)
            
                
                
                
              
                
                
            }
            
        }
        
        
        
    }
    
    
}


struct ButtonView: View {
    
    @Binding var background: Color
    @Binding var countt: Int
    
    @Binding var title: String
    
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
        
           Image("photo1")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .padding()
                .shadow(color: Color.black, radius: 10, x: 10, y: 10)
            
            
        
        
        Button {
            background = Color.red
            
            title = "New Title"
            
            countt += 1
            
        } label: {
            Text("Press Me")
                .font(.largeTitle)
                .padding()
                .padding(.horizontal)
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(10)
                .shadow(radius: 10)
        }

        
        }
    }
  
    
}






struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}

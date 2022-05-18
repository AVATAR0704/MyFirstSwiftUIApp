//
//  Animations.swift
//  MyFirstSwiftUIApp
//
//  Created by Macservis on 14/05/22.
//

import SwiftUI

struct Animations: View {
    
    
    @State var background: Color = Color.green
    
    @State var animating: Bool = false
    
    
    
    
    
    var body: some View {
        
        ZStack(alignment: .center, content: {
            
            //background
            
            background.edgesIgnoringSafeArea(.all)
            
            
            contentSomeView
            
            
            
        })
        
        
     
      
    }
    
    
    var contentSomeView: some View {
 
        
        VStack(alignment: .center, spacing: nil, content: {
            
            
            
            Button(action: {
 
//MARK: Animating
                
                
              //  withAnimation(Animation.default) {
                    
                    animating.toggle()
                    
              //  }
                
                
             
                
                
  
                
                
            }, label: {
                
                Text(animating ? "Animating" : "No Animating")
                    .font(animating ? Font.largeTitle : .title)
                    .padding()
                    .padding(.horizontal, 20)
                    .foregroundColor(animating ? Color.black : Color.white)
                    .background(animating ? Color.white : Color.black)
                    .cornerRadius(animating ? 10 : 20)
                    .shadow(color: Color.black, radius: animating ? 20 : 10, x: animating ? -10 : 10, y: 10)
                    .animation(Animation.default)
                
                
                
            })
            
            
            ScrollView(.vertical, showsIndicators: true, content: {
                
           
                VStack(alignment: .center, spacing: nil, content: {
                    
                
                    
                    
                    ForEach(0..<10) { i in
                        
                    
                        ContentViewCell(cornerRadius: CGFloat(i),animatingg: $animating)
                            
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                })
                
                
                
                
                
                
            })
            
            
        })
        

    
    
}
    
    
}


struct ContentViewCell: View {
    
    
    @State var cornerRadius: CGFloat
    
    @Binding var animatingg: Bool
    
    
    var body: some View {
        
        
    
        if animatingg {
            
            Image("photo1").resizable().scaledToFill()
                .frame(width: animatingg ? UIScreen.main.bounds.width - 20 : 0,height: animatingg ? 150 : 0)
                .clipped()
                .cornerRadius(animatingg ? 10 : 50)
                .padding()
                .animation(Animation.default)
            
        }else {
        
        
   RoundedRectangle(cornerRadius: cornerRadius + CGFloat(20))
            .fill(animatingg ? Color.yellow : Color.blue)
            .frame(width: animatingg ? 0 : UIScreen.main.bounds.width - 20 ,height: animatingg ? 0 : 150)
            //.frame(maxWidth: animatingg ? .zero : .infinity )
             .padding()
             .shadow(color: animatingg ? Color.red : Color.black, radius: animatingg ? 20 : 10, x: animatingg ? 0 : 10, y: animatingg ? -10 : 10)
             .animation(Animation.default)
         
       
        }
        
        
    }
    
    
}





struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}

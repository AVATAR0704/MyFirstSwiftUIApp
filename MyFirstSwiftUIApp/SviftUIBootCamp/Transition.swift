//
//  Transition.swift
//  MyFirstSwiftUIApp
//
//  Created by Macservis on 16/05/22.
//

import SwiftUI

struct Transition: View {
    
    
    @State var showView: Bool = false
    
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
           
            Color.gray.edgesIgnoringSafeArea(.top)
            
            
            
            
            
            
            VStack {
                
                Button("Button") {
                    
                    showView.toggle()
                    
                    
                }
                
               
                ScrollView {
                    
                    VStack {
                        
                        ForEach(0..<100) { i in
                            
                            
                            
                            if showView {
                           
                            RoundedRectangle(cornerRadius: 10)
                                .frame(height: 150)
                                .padding([.horizontal, .top], 10)
                                .overlay(
                                    
                                    Text("\(i)")
                                        .foregroundColor(Color.white)
                                        .font(.largeTitle)
                                )
                                .transition(AnyTransition.asymmetric(insertion: AnyTransition.opacity.animation(Animation.default), removal: AnyTransition.opacity.animation(Animation.easeInOut)))
                                .animation(.default)
                            
                            
                            }
                            
                            
                        }
                        
                        
                    }
  
                }
                
            }
 
            
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
   
}

struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
    }
}

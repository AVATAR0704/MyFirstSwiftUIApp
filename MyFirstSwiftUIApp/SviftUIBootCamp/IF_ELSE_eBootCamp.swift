//
//  IF_ELSE_eBootCamp.swift
//  MyFirstSwiftUIApp
//
//  Created by Macservis on 13/05/22.
//

import SwiftUI


struct IF_ELSE_eBootCamp: View {
    
    
    @State var showCircle: Bool = false
     
    @State var showRectangle: Bool = false
    
    @State var isloadd: Bool = false
    
    
    
    
    
    var body: some View {
        
       
        VStack(spacing: 30) {
            
            Button("IsLoading: \(isloadd.description)") {
                
                isloadd.toggle()
                
                
            }
           
            
            if isloadd {
                
                ProgressView()
                
            }
            else {
                
                Button {
                    
                    showCircle.toggle()
      
                } label: {
                    
                    Text("ShowCircle: \(showCircle.description)")
                         .foregroundColor(Color.white)
                         .padding()
                         .padding(.horizontal,10)
                         .background(Color.black)
                         .cornerRadius(10)
                         .shadow(color: Color.black, radius: 10, x: 10, y: 10)
                    
                }
                
                
                Button {
                    
                    showRectangle.toggle()
      
                } label: {
                    
                    Text("ShowRectangle: \(showRectangle.description)")
                         .foregroundColor(Color.white)
                         .padding()
                         .padding(.horizontal,10)
                         .background(Color.black)
                         .cornerRadius(10)
                         .shadow(color: Color.black, radius: 10, x: 10, y: 10)
                    
                }

                
                
                if showCircle {
                    
                    Circle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100)
                        .shadow(color: .blue, radius: 10, x: 10, y: 10)
                }
                
                
                if showRectangle {
                    
                   Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100,height: 100)
                        .shadow(color: Color.black, radius: 10, x: 10, y: 10)

                }
              
                
                if showCircle && showRectangle {
                    
                    RoundedRectangle(cornerRadius: 10)
                         .fill(Color.white)
                         .frame(width: 200,height: 100)
                         .shadow(color: Color.black, radius: 10, x: 10, y: 10)

                    
                }
                
                
            }
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
        
    }
    
    
}





struct IF_ELSE_eBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IF_ELSE_eBootCamp()
    }
}

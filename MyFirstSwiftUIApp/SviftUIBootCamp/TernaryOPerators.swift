//
//  TernaryOPerators.swift
//  MyFirstSwiftUIApp
//
//  Created by Macservis on 14/05/22.
//

import SwiftUI

struct TernaryOPerators: View {
    
    @State var starting: Bool = false
    
    
    
    var body: some View {
       
        VStack {
        
        
        Button("Button", action: {
            
            starting.toggle()

        })
        
        
//        if starting {
//
//          RoundedRectangle(cornerRadius: 10)
//                .fill(Color.red)
//                .frame(width: 200, height: 100)
//
//
//        }
//        else {
//
//            RoundedRectangle(cornerRadius: 10)
//                  .fill(Color.blue)
//                  .frame(width: 200, height: 100)
//
//        }
            
            RoundedRectangle(cornerRadius: starting ? 10 : 50)
                .fill(starting ? Color.red : Color.blue )
                .frame(width: starting ? 200 : 300, height: starting ? 100 : 400)
            
            
            
            Spacer()
        
        }
     
        
        
    }
    
    
}

struct TernaryOPerators_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOPerators()
    }
}

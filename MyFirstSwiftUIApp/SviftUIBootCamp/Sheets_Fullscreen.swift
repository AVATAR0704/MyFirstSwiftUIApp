//
//  Sheets_Fullscreen.swift
//  MyFirstSwiftUIApp
//
//  Created by Macservis on 16/05/22.
//

import SwiftUI

struct Sheets_Fullscreen: View {
    
    
    @State var nextPageBool: Bool = false
    @State var thridPageBool: Bool = false
    @State var newPageBool: Bool = false
    
    
    
    var body: some View {
        
         ZStack {
            
            //background
            Color.green.edgesIgnoringSafeArea(.all)
            
            
            //Content
            
            
            VStack {
                
               
                Text("First Page")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 50)
                    .padding(.bottom)
                    .background(Color.gray)
                    .edgesIgnoringSafeArea(Edge.Set.top)
                    
                
                
                
                
                HStack {
                    
                    Spacer()
                    
                    
                    Button {
                      
                        nextPageBool = true
                        
                        
                    } label: {
                        Text("Press Me1")
                            .font(.largeTitle)
                            .foregroundColor(Color.green)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(10)
                            .shadow(color: .black, radius: 20, x: 20, y: 20)
                            .padding(.trailing)
                }
                   
                    
                    
                    
                   
                    
                }
                
                Button {
                  
                    thridPageBool = true
                    
                    
                } label: {
                    Text("Press Me2")
                        .font(.largeTitle)
                        .foregroundColor(Color.green)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .shadow(color: .black, radius: 20, x: 20, y: 20)
                        .padding(.trailing)
            }
                
               
                Button {
                    
                    newPageBool = true
                    
                } label: {
                Text("New Page Go")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: SwiftUI.Color.black, radius: 10, x: 10, y: 10)
                }
                
                
               
                
            
                

              Spacer()
                    
                
                
                
            }
           
            
            
            
        }
         .sheet(isPresented: $thridPageBool) {
            ThridPage()
         }
         .sheet(isPresented: $nextPageBool, content: {
           SecondPage()
         })
         .fullScreenCover(isPresented: $newPageBool) {
             NewPage()
         }
        
    }
}



struct SecondPage: View {
    
    @Environment(\.presentationMode) var ortgaValue
    
    
    
    var body: some View {
        
        ZStack {
            
         //background
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            
                //Content
            
            VStack {
                
                ZStack {
                    
                    Button {
                        
                        ortgaValue.wrappedValue.dismiss()
                        
                    } label: {
                    
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    
                
                    }
                    
                    
                    Text("Second Page")
                }
                .font(.title)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .padding(.top,50)
                .padding(.bottom)
                .background(Color.gray)
            .edgesIgnoringSafeArea(.top)
               
                
                
                
                Spacer()
                
                
                
            }
            
            
            
        }
        
        
        
    }
    
    
}

struct ThridPage: View {
    
    
    @Environment(\.presentationMode) var mode
    
    
    
    
    var body: some View {
        
        ZStack {
           
            Color.red.edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                ZStack {
                    
                    Button {
                    
                        
                        mode.wrappedValue.dismiss()
                        
                    } label: {
                    Image(systemName: "xmark")
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                        .padding(.leading, 20)

                    }
                    Spacer()
                    
                    Text("ThridPage")
                       
                    
                    Spacer()
                       
                  
                        
                }
                .font(.title)
                .foregroundColor(.white)
                .padding(.top,50)
                .padding(.bottom)
                .frame(maxWidth: .infinity)
                .background(Color.gray)
                .edgesIgnoringSafeArea(.top)
                
                
                
                Spacer()
                
                
                
            }
            
            
            
        }
        
        
    }
    
    
}


struct NewPage: View {
    
    @Environment(\.presentationMode) var modeback
    
    
    
    var body: some View {
        
        
        ZStack {
            
            Color.purple.edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                ZStack {
                
                    Button {
                        modeback.wrappedValue.dismiss()
                    } label: {
                        Text("back")
                            .foregroundColor(Color.blue)
                            .font(Font.title)
                            .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                            .padding(.leading)
                    }
                
                
                
                
               Text("New Page")
                    
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding(.top, 50)
                .padding(.bottom)
                .background(Color.gray)
                .edgesIgnoringSafeArea(.top)
                
                
                Spacer()
                
                
                
            }
            
            
        }
        
        
        
    }
    
    
}







struct Sheets_Fullscreen_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
        Sheets_Fullscreen()
        SecondPage()
        ThridPage()
        NewPage()
        }
        
        
    }
}

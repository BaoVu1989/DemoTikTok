//
//  ContentView.swift
//  DemoTikTok
//
//  Created by Bao Vu on 7/3/20.
//  Copyright © 2020 Bao Vu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    @State var index = 0
    
    var body: some View{
        
        ZStack{
            
            VStack{
                
                Spacer()
                
                HStack{
                   
                    Spacer()
                    
                    VStack(spacing: 30){
                        
                        //This is an avatar button...
                        Button(action: {
                            
                        }) {
                            ZStack{
                                Image("bao").resizable()
                                    .frame(width:50, height: 50).clipShape(Circle())
                                Image("plus")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.white)
                                    .background(Color.red)
                                .clipShape(Circle())
                                    .offset(x: 0, y: 25)
                            }                        }
                        // This is a heart button...
                        
                        Button(action: {
                            
                        }) {
                            VStack( spacing: 10){
                                Image(systemName: "suit.heart.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("22K").font(.footnote).foregroundColor(.white)
                            }
                        }
                        
                        // This is a comment button...
                        
                        Button(action: {
                            
                        }) {
                            VStack( spacing: 10){
                                Image(systemName: "message.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("10K").font(.footnote).foregroundColor(.white)
                            }
                        }
                        
                        //This is a share button...
                        
                        Button(action: {
                            
                        }) {
                            VStack( spacing: 10){
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("900").font(.footnote).foregroundColor(.white)
                            }
                        }
                    }.padding(.bottom, 50)
                        .padding(.trailing)
                }
                
                Divider()
                
                HStack(spacing: 0){
                    
                    // This is a Home button...
                    Button(action: {
                        self.index = 0
                    }) {
                        VStack{
                            Image("home")
                                .resizable()
                            .frame(width: 25, height: 25)
                            Text("Home").font(.footnote)
                                
                        }.foregroundColor(self.index == 0 ? .white : Color.white.opacity(0.35))
                        .padding(.horizontal)
                    }
                    
                    Spacer(minLength: 0)
                    // This is a Search button...
                    Button(action: {
                        self.index = 1
                    }) {
                        VStack{
                            Image("search")
                                .resizable()
                            .frame(width: 25, height: 25)
                            Text("Discover").font(.footnote)
                                
                        }.foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.35))
                        .padding(.horizontal)
                    }
                    
                    Spacer(minLength: 0)
                    
                    //This is a Upload button ...
                    
                    Button(action: {
                        self.index = 2
                    }) {
                        Image("upload")
                            .resizable()
                        .frame(width: 50, height: 40)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                    }
                    
                    Spacer(minLength: 0)
                    
                    //This is a inbox button...
                    
                    Button(action: {
                        self.index = 3
                    }) {
                        VStack{
                            Image("comment")
                                .resizable()
                            .frame(width: 25, height: 25)
                            Text("inbox").font(.footnote)
                                
                        }.foregroundColor(self.index == 3 ? .white : Color.white.opacity(0.35))
                        .padding(.horizontal)
                    }
                    
                    Spacer(minLength: 0)
                    
                    //This is a profile button...
                    
                    Button(action: {
                        self.index = 4
                    }) {
                        VStack{
                            Image("profile")
                                .resizable()
                            .frame(width: 25, height: 25)
                            Text("profile").font(.footnote)
                                
                        }.foregroundColor(self.index == 4 ? .white : Color.white.opacity(0.35))
                        .padding(.horizontal)
                        
                    }
                
                }
                .padding(.horizontal)
            }
        }.background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

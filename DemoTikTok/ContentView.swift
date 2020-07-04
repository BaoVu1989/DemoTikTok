//
//  ContentView.swift
//  DemoTikTok
//
//  Created by Bao Vu on 7/3/20.
//  Copyright © 2020 Bao Vu. All rights reserved.
//

import SwiftUI
import AVKit

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
    @State var top = 0
    @State var data = [

        Video(id: 0, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video1", ofType: "mp4")!)), replay: false),
        Video(id: 1, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video2", ofType: "mp4")!)), replay: false),
        Video(id: 2, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video3", ofType: "mp4")!)), replay: false),
        Video(id: 3, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video4", ofType: "mp4")!)), replay: false),
        Video(id: 4, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video5", ofType: "mp4")!)), replay: false)
//        Video(id: 5, player: AVPlayer(url:URL(string: "http://v19.tiktokcdn.com/0db337be18650973cead52503433755e/5f0087a9/video/tos/alisg/tos-alisg-pve-0037/ee6887945f6847a6a17f0fc1d419d3e4/?a=1233&br=2230&bt=1115&cr=0&cs=0&dr=0&ds=6&er=&l=20200704074329010115228065189EE35C&lr=all&mime_type=video_mp4&qs=0&rc=M2Q6cXNlbWZudTMzNzgzM0ApNzM2aTdnOGRkNzlkODY1PGdjYGE2M2ouYnNfLS00LzRzc2BgYDY0NC4xMGNgNi9eNDI6Yw%3D%3D&vl=&vr=")!), replay: false)
        
    ]
    
    var body: some View{
        
        ZStack{
            
            PlayerView(data: self.$data)
            
            VStack{
                
                HStack(spacing: 15){
                    
                    // This is a Following button...
                    Button(action: {
                        self.top = 0
                    }) {
                        Text("Following").foregroundColor(self.top == 0 ? .white : Color.white.opacity(0.2))
                            .fontWeight(.bold)
                            .padding(.vertical)
                    }
                    
                    // This is a For You button...
                    Button(action: {
                        self.top = 1
                    }) {
                        Text("For You").foregroundColor(self.top == 1 ? .white : Color.white.opacity(0.2))
                            .fontWeight(.bold)
                            .padding(.vertical)
                    }
                }
                
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
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 5)
        }.background(Color.black.edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
    }
}

struct PlayerView : View {
    
    @Binding var data: [Video]
    
    var body: some View{
        
        VStack(spacing: 0){
            
            ForEach(self.data){i in
                Player(player: i.player).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            }
        }
    }
}

struct Player: UIViewControllerRepresentable{
    
    var player: AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let view = AVPlayerViewController()
        view.player = player
        view.showsPlaybackControls = false
        view.videoGravity = .resizeAspectFill
        return view
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
}

class Host: UIHostingController<ContentView>{
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        
        return.lightContent
    }
    
}

struct Video : Identifiable{
    
    var id : Int
    var player: AVPlayer
    var replay: Bool
}



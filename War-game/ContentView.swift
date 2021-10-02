//
//  ContentView.swift
//  War-game
//
//  Created by Sree on 24/08/21.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        ZStack{
        Image("background").ignoresSafeArea()
            VStack{
            Spacer()
            Image("logo")
            Spacer()
                HStack{
                    Spacer()
                Image(playerCard)
                    Spacer()
                Image(cpuCard)
                    Spacer()
            }
                Spacer()
                Button(action: {
                //Genreate random number
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                   playerCard = "card" + String(playerRand)
                   cpuCard = "card" + String(cpuRand)
                    if playerRand > cpuRand {
                        playerScore += 1
                    }else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
            
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Players")
                            .padding(.bottom, 9.0)
                        Text(String(playerScore))
                    }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                    Spacer()
                    VStack{
                        Text("CPU").padding(.bottom, 9.0)
                        Text(String(cpuScore))
                    }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

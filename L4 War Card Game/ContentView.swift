//
//  ContentView.swift
//  L4 War Card Game
//
//  Created by kasa witra on 04/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard:String = "card7"
    @State var cpuCard:String="card13"
    
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
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
                    deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                
                HStack(){
                    Spacer()
                    VStack(spacing: 20.0){
                        Text("Player")
                            .font(.headline)
                            
                                                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack(spacing: 20.0){
                        Text("CPU")
                            .font(.headline)
                            
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)

                    }
                    Spacer()

                }.foregroundColor(.white)
                Spacer()
            }
            
        }

                
    }
    
    func deal(){
        // Randomize the players card
        let playerCardValue:Int = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        // Randomize the cpu card
        let cpuCardValue:Int = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        // Update Score
        
        if playerCardValue > cpuCardValue {
            // add player score
            playerScore += 1
        } else if playerCardValue < cpuCardValue{
            // add cpu score
            cpuScore += 1
        } else {
            //tie
        }
        
    }
}

#Preview {
    ContentView()
}

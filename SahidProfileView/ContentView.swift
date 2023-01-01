//
//  ContentView.swift
//  SahidProfileView
//
//  Created by Sahid Reza on 01/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("abu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150 , height: 150, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white,lineWidth:5))
                    
                    
                Text("Abu Sahid Reza")
                    .font(.custom("Pacifico-Regular", fixedSize: 40))
                    .bold()
                .foregroundColor(.white)
               
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "987676767676", imageName: "phone.fill")
                InfoView(text: "sahidcse15@gmail.com", imageName: "envelope.fill")
                

                    

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    
    let text:String
    let imageName:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                }).padding(.all)
    }
}

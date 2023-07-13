//
//  CompleteSignUpView.swift
//  Instagram
//
//  Created by Marco Alonso Rodriguez on 13/07/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 12.0) {
            Spacer()
            
            Text("Welcome to Instagram MarcoAlonsoiOSDev93")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
           
            
            Button {
                print("Complete signup")
            } label: {
                Text("Complete Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}

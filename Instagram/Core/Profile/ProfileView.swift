//
//  ProfileView.swift
//  Instagram
//
//  Created by Marco Alonso Rodriguez on 12/07/23.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    private let gridItems: [ GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
            ScrollView {
                //header
                VStack(spacing: 10.0) {
                    // pick and stats
                    HStack {
                        Image(user.profileImageUrl ?? "alonso")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8.0) {
                            UserStatView(value: 3, title: "Posts")
                            
                            UserStatView(value: 14, title: "Followers")
                            
                            UserStatView(value: 6, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    // name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        if let fullname = user.fullname {
                            Text(fullname)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        
                        
                        Text(user.bio ?? "")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // action button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1)
                            )
                    }

                    Divider()
                }
                
                //post grid view
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image(user.profileImageUrl ?? "")
                            .resizable()
                            .scaledToFill()
                    }
                }
                .padding(10)
            }//Scroll
            .navigationBarTitle("Profile", displayMode: .inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}

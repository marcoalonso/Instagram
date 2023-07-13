//
//  FeedCell.swift
//  Instagram
//
//  Created by Marco Alonso Rodriguez on 12/07/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            //image + username
            HStack {
                Image("margot")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("Margot")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .padding(.trailing, 20)
            }
            .padding(.leading, 8)
            
            // post image
            Image("margot")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //action buttons
            HStack(spacing: 16.0) {
                Button {
                    print("like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("like post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("like post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            //likes label
            Text("22 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            //caption label
            HStack {
                Text("Margot  ").fontWeight(.semibold) +
                Text("This is a caption for now as das adsld as dasd las das dl,as dasld,alsd,as dlas, dlas dasl ,das dl,asl ,dasl ,asd asd lañsd ,dalf,dslf, ldsñf ,lsd,flr,oc,od,o oeodf  ...")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("3h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}

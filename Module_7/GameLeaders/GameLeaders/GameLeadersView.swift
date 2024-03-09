//
//  ContentView.swift
//  GameLeaders
//
//  Created by Andrew Kim on 2/28/24.
//

import SwiftUI

struct GameLeadersView: View {
    var body: some View {
        VStack {
            // Title
            HStack {
                Text("Game Leaders")
                    .bold()
                    .font(.system(size: 21))
                Spacer()
            }
            .padding()
            .overlay(
                Divider(),
                alignment: .bottom
            )

            // Three rows of info for the game leaders: Passing Yards, Rushing Yards, and Receiving Yards, all separated by gray lines
            VStack {
                // Passing Yards
                VStack {
                    // Subtitle
                    Text("Passing Yards")
                        .font(.system(size: 19, weight: .bold))
                        .padding(.bottom, 10)
                        .frame(maxWidth: .infinity, alignment: .center)

                    // Two players' stats
                    HStack(alignment:.top) {
                        // Profile picture & team
                        VStack(alignment: .center) {
                            Image("H Hooker")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                                .shadow(radius: 10)
                                .background(Color.white)

                            Text("TENN").foregroundStyle(Color.gray)
                        }

                        // Stats
                        VStack(alignment: .trailing) {
                            Text("H. Hooker")
                                .bold()
                            Text("15-19,").font(.system(size: 14)).foregroundStyle(Color.gray)
                            Text("225 YDS, 3 TD").font(.system(size: 14)).foregroundStyle(Color.gray)
                        }

                        // Center divider
                        Spacer()
                        Divider()
                            .frame(height: 60)
                            .background(Color.gray)
                        Spacer()

                        // Stats
                        VStack(alignment: .leading) {
                            Text("C. Bazelak")
                                .bold()
                            Text("27-44,").font(.system(size: 14)).foregroundStyle(Color.gray)
                            Text("322 YDS,").font(.system(size: 14)).foregroundStyle(Color.gray)
                            Text("2 INT").font(.system(size: 14)).foregroundStyle(Color.gray)
                        }

                        // Profile picture & team
                        VStack(alignment: .center) {
                            Image("C Bazelak")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                                .shadow(radius: 10)
                                .background(Color.white)

                            Text("MIZ").foregroundStyle(Color.gray)
                        }
                    }
                }
                .padding()
                .overlay(
                    Divider(),
                    alignment: .bottom
                )


                // Rushing Yards
                VStack {
                    // Subtitle
                    Text("Rushing Yards")
                        .font(.system(size: 19, weight: .bold))
                        .padding(.bottom, 10)
                        .frame(maxWidth: .infinity, alignment: .center)

                    // Two players' stats
                    HStack(alignment:.top) {
                        // Profile picture & team
                        VStack(alignment: .center) {
                            Image("T Evans")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                                .shadow(radius: 10)
                                .background(Color.white)

                            Text("TENN").foregroundStyle(Color.gray)
                        }

                        // Stats
                        VStack(alignment: .trailing) {
                            Text("T. Evans")
                                .bold()
                            Text("15 CAR,").font(.system(size: 14)).foregroundStyle(Color.gray)
                            Text("156 YDS, 3 TD").font(.system(size: 14)).foregroundStyle(Color.gray)
                        }

                        // Center divider
                        Spacer()
                        Divider()
                            .frame(height: 60)
                            .background(Color.gray)
                        Spacer()

                        // Stats
                        VStack(alignment: .leading) {
                            Text("T. Badie")
                                .bold()
                            Text("21 CAR,").font(.system(size: 14)).foregroundStyle(Color.gray)
                            Text("41 YDS, 1 TD").font(.system(size: 14)).foregroundStyle(Color.gray)
                        }

                        // Profile picture & team
                        VStack(alignment: .center) {
                            Image("T Badie")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                                .shadow(radius: 10)
                                .background(Color.white)

                            Text("MIZ").foregroundStyle(Color.gray)
                        }
                    }
                }
                .padding()
                .overlay(
                    Divider(),
                    alignment: .bottom
                )


                // Receiving Yards
                VStack {
                    // Subtitle
                    Text("Receiving Yards")
                        .font(.system(size: 19, weight: .bold))
                        .padding(.bottom, 10)
                        .frame(maxWidth: .infinity, alignment: .center)

                    // Two players' stats
                    HStack(alignment:.top) {
                        // Profile picture & team
                        VStack(alignment: .center) {
                            Image("V Jones Jr")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                                .shadow(radius: 10)
                                .background(Color.white)

                            Text("TENN").foregroundStyle(Color.gray)
                        }

                        // Stats
                        VStack(alignment: .trailing) {
                            Text("V. Jones Jr.")
                                .bold()
                            Text("7 REC,").font(.system(size: 14)).foregroundStyle(Color.gray)
                            Text("79 YDS, 1  TD").font(.system(size: 14)).foregroundStyle(Color.gray)
                        }

                        // Center divider
                        Spacer()
                        Divider()
                            .frame(height: 60)
                            .background(Color.gray)
                        Spacer()

                        // Stats
                        VStack(alignment: .leading) {
                            Text("K. Chism")
                                .bold()
                            Text("4 REC, 76 YDS").font(.system(size: 14)).foregroundStyle(Color.gray)
                        }

                        // Profile picture & team
                        VStack(alignment: .center) {
                            Image("K Chism")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                                .shadow(radius: 10)
                                .background(Color.white)

                            Text("MIZ").foregroundStyle(Color.gray)
                        }
                    }
                }
                .padding()
                .overlay(
                    Divider(),
                    alignment: .bottom
                )
            }
        }
        .padding()
    }
}

#Preview {
    GameLeadersView()
}

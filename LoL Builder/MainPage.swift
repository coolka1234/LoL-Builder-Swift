//
//  MainPage.swift
//  LoL Builder
//
//  Created by Coolka on 17/11/2024.
//
import SwiftUI

struct PanelOne: View {
    var body: some View {
        ZStack() {
            Group {
                HStack(alignment: .top, spacing: 231.79) {
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 15.27, height: 10.97)
                            .background(
                                AsyncImage(url: URL(string: "https://via.placeholder.com/15x11"))
                            )
                            .offset(x: -3.67, y: -0.19)
                        ZStack() { }
                            .frame(width: 24.33, height: 11.33)
                            .offset(x: 21.17, y: 0)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 17, height: 10.67)
                            .background(
                                AsyncImage(url: URL(string: "https://via.placeholder.com/17x11"))
                            )
                            .offset(x: -24.83, y: 0)
                    }
                    .frame(width: 66.66, height: 11.34)
                }
                .padding(
                    EdgeInsets(top: 19.17, leading: 33.45, bottom: 15.33, trailing: 14.67)
                )
                .frame(width: 375, height: 46)
                .offset(x: -13.50, y: -414)
                ZStack() {
                    Text("coolka1234")
                        .font(Font.custom("DM Sans", size: 20).weight(.bold))
                        .lineSpacing(24)
                        .foregroundColor(.white)
                        .offset(x: -43.50, y: -11)
                    Text("RIP Messi")
                        .font(Font.custom("Inter", size: 12))
                        .lineSpacing(18)
                        .foregroundColor(Color(red: 0.70, green: 0.69, blue: 0.72))
                        .offset(x: 0, y: 14)
                }
                .frame(width: 196, height: 46)
                .offset(x: -13, y: -347)
                ZStack() {
                    Text("Champions")
                        .font(Font.custom("DM Sans", size: 20).weight(.bold))
                        .lineSpacing(24)
                        .foregroundColor(.white)
                        .offset(x: -122, y: 0)
                    Text("Show all")
                        .font(Font.custom("Inter", size: 14))
                        .lineSpacing(20)
                        .foregroundColor(Color(red: 0.70, green: 0.69, blue: 0.72))
                        .offset(x: 150, y: 0)
                }
                .offset(x: -3, y: -275)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 375, height: 34)
                        .background(Color(red: 0.86, green: 0.86, blue: 0.90))
                        .offset(x: 0, y: 0)
                        .opacity(0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 135, height: 5)
                        .background(Color(red: 0.40, green: 0.40, blue: 0.40))
                        .cornerRadius(100)
                        .offset(x: 0, y: 6.50)
                }
                .frame(width: 375, height: 34)
                .offset(x: -13.50, y: 420)
                HStack(alignment: .top, spacing: 8) {
                    VStack(alignment: .leading, spacing: 6) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 104, height: 120)
                            .background(
                                AsyncImage(url: URL(string: "https://via.placeholder.com/104x120"))
                            )
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .inset(by: 1)
                                    .stroke(Color(red: 0.06, green: 0.07, blue: 0.08), lineWidth: 1)
                            )
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Ezreal")
                                .font(Font.custom("Inter", size: 14).weight(.bold))
                                .lineSpacing(24)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 36, trailing: 0))
                    .frame(width: 104, height: 186)
                    VStack(alignment: .leading, spacing: 6) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 104, height: 120)
                            .background(
                                AsyncImage(url: URL(string: "https://via.placeholder.com/104x120"))
                            )
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .inset(by: 1)
                                    .stroke(Color(red: 0.06, green: 0.07, blue: 0.08), lineWidth: 1)
                            )
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Evelynn")
                                .font(Font.custom("Inter", size: 14).weight(.bold))
                                .lineSpacing(24)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 36, trailing: 0))
                    .frame(width: 104, height: 186)
                    VStack(alignment: .leading, spacing: 6) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 104, height: 120)
                            .background(
                                AsyncImage(url: URL(string: "https://via.placeholder.com/104x120"))
                            )
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .inset(by: 1)
                                    .stroke(Color(red: 0.06, green: 0.07, blue: 0.08), lineWidth: 1)
                            )
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Lux")
                                .font(Font.custom("Inter", size: 14).weight(.bold))
                                .lineSpacing(24)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 36, trailing: 0))
                    .frame(width: 104, height: 186)
                    VStack(alignment: .leading, spacing: 6) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 104, height: 120)
                            .background(
                                AsyncImage(url: URL(string: "https://via.placeholder.com/104x120"))
                            )
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .inset(by: 1)
                                    .stroke(Color(red: 0.06, green: 0.07, blue: 0.08), lineWidth: 1)
                            )
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Zyra")
                                .font(Font.custom("Inter", size: 14).weight(.bold))
                                .lineSpacing(24)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 36, trailing: 0))
                    .frame(width: 104, height: 186)
                }
                .frame(width: 338)
                .offset(x: -12, y: -146)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 52, height: 60)
                        .background(Color(red: 0.06, green: 0.07, blue: 0.08))
                        .cornerRadius(2)
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 48, height: 56)
                        .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/48x56"))
                        )
                        .cornerRadius(2)
                        .offset(x: 0, y: 0)
                }
                .frame(width: 52, height: 60)
                .offset(x: 149, y: -347)
                Text("Pro builds\n")
                    .font(Font.custom("DM Sans", size: 20).weight(.bold))
                    .lineSpacing(24)
                    .foregroundColor(.white)
                    .offset(x: -85.55, y: 40.12)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 294, height: 0)
                    .overlay(
                        Rectangle()
                            .stroke(Color(red: 0.17, green: 0.17, blue: 0.20), lineWidth: 0.50)
                    )
                    .offset(x: 32, y: 158)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 294, height: 0)
                    .overlay(
                        Rectangle()
                            .stroke(Color(red: 0.17, green: 0.17, blue: 0.20), lineWidth: 0.50)
                    )
                    .offset(x: 32, y: 244)
                Group {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 294, height: 0)
                        .overlay(
                            Rectangle()
                                .stroke(Color(red: 0.17, green: 0.17, blue: 0.20), lineWidth: 0.50)
                        )
                        .offset(x: 33, y: 330)
                    HStack(alignment: .top, spacing: 20.51) {
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 49.22, height: 61)
                                .background(Color(red: 0.40, green: 0, blue: 0.73))
                                .cornerRadius(4)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 47.17, height: 58.46)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/47x58"))
                                )
                                .cornerRadius(4)
                                .offset(x: -0, y: 0)
                        }
                        .frame(width: 49.22, height: 61)
                        ZStack() {
                            VStack(spacing: 0) {
                                ZStack() { }
                                    .frame(width: 20.51, height: 25.42)
                            }
                            .padding(
                                EdgeInsets(top: 17.79, leading: 14.35, bottom: 17.79, trailing: 14.35)
                            )
                            .frame(width: 49.22, height: 61)
                            ZStack() {
                                Text("CARIOK")
                                    .font(Font.custom("Inter", size: 16).weight(.bold))
                                    .lineSpacing(20)
                                    .foregroundColor(.white)
                                    .offset(x: -16.28, y: -14.25)
                                Text("paiN Gaming")
                                    .font(Font.custom("Inter", size: 12))
                                    .lineSpacing(18)
                                    .foregroundColor(Color(red: 0.70, green: 0.69, blue: 0.72))
                                    .offset(x: 11.28, y: 15.25)
                            }
                            .frame(width: 95.56, height: 48.50)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 16, height: 18.29)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/16x18"))
                                )
                            ZStack() {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 16.41, height: 20.33)
                                    .background(Color(red: 0.12, green: 0.12, blue: 0.14))
                                    .cornerRadius(2)
                                    .offset(x: 0, y: 2.29)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 14, height: 10)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/14x10"))
                                    )
                                    .offset(x: -0.20, y: -7.46)
                            }
                            .frame(width: 16.41, height: 24.92)
                        }
                        .frame(width: 294.28, height: 61)
                    }
                    .frame(width: 364, height: 61)
                    .offset(x: -3, y: 115.50)
                    HStack(alignment: .top, spacing: 20.51) {
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 49.22, height: 60)
                                .background(Color(red: 0.40, green: 0, blue: 0.73))
                                .cornerRadius(4)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 47.17, height: 57.50)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/47x57"))
                                )
                                .cornerRadius(4)
                                .offset(x: -0, y: -0)
                        }
                        .frame(width: 49.22, height: 60)
                        ZStack() {
                            VStack(spacing: 0) {
                                ZStack() { }
                                    .frame(width: 20.51, height: 25)
                            }
                            .padding(
                                EdgeInsets(top: 17.50, leading: 14.35, bottom: 17.50, trailing: 14.35)
                            )
                            .frame(width: 49.22, height: 60)
                            ZStack() {
                                Text("GUMAYUSI")
                                    .font(Font.custom("Inter", size: 16).weight(.bold))
                                    .lineSpacing(20)
                                    .foregroundColor(.white)
                                    .offset(x: 0, y: -14)
                                Text("T1")
                                    .font(Font.custom("Inter", size: 12))
                                    .lineSpacing(18)
                                    .foregroundColor(Color(red: 0.70, green: 0.69, blue: 0.72))
                                    .offset(x: -14.44, y: 15)
                            }
                            .frame(width: 88, height: 48)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 16, height: 18.29)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/16x18"))
                                )
                            ZStack() {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 16.41, height: 20)
                                    .background(.black)
                                    .cornerRadius(2)
                                    .offset(x: 0, y: 2)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 14, height: 10)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/14x10"))
                                    )
                                    .offset(x: -0.20, y: -7)
                            }
                            .frame(width: 16.41, height: 24)
                        }
                        .frame(width: 294.28, height: 60)
                    }
                    .frame(width: 364, height: 60)
                    .offset(x: -3, y: 201)
                    HStack(alignment: .top, spacing: 20.51) {
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 49.22, height: 61)
                                .background(Color(red: 0.40, green: 0, blue: 0.73))
                                .cornerRadius(4)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 47.17, height: 58.46)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/47x58"))
                                )
                                .cornerRadius(4)
                                .offset(x: -0, y: 0)
                        }
                        .frame(width: 49.22, height: 61)
                        ZStack() {
                            VStack(spacing: 0) {
                                ZStack() { }
                                    .frame(width: 20.51, height: 25.42)
                            }
                            .padding(
                                EdgeInsets(top: 17.79, leading: 14.35, bottom: 17.79, trailing: 14.35)
                            )
                            .frame(width: 49.22, height: 61)
                            ZStack() {
                                Text("TINOWS")
                                    .font(Font.custom("Inter", size: 16).weight(.bold))
                                    .lineSpacing(20)
                                    .foregroundColor(.white)
                                    .offset(x: 0, y: -14.25)
                                Text("LOUD")
                                    .font(Font.custom("Inter", size: 12))
                                    .lineSpacing(18)
                                    .foregroundColor(Color(red: 0.70, green: 0.69, blue: 0.72))
                                    .offset(x: 6.56, y: 15.25)
                            }
                            .frame(width: 66, height: 48.50)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 16, height: 18.29)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/16x18"))
                                )
                            ZStack() {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 16.41, height: 20.33)
                                    .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                                    .cornerRadius(2)
                                    .offset(x: 0, y: 2.29)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 14, height: 10)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/14x10"))
                                    )
                                    .offset(x: -0.20, y: -7.46)
                            }
                            .frame(width: 16.41, height: 24.92)
                        }
                        .frame(width: 294.28, height: 61)
                    }
                    .frame(width: 364, height: 61)
                    .offset(x: -2, y: 287.50)
                    HStack(alignment: .top, spacing: 20.51) {
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 49.22, height: 60)
                                .background(Color(red: 0.40, green: 0, blue: 0.73))
                                .cornerRadius(4)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 47.17, height: 57.50)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/47x57"))
                                )
                                .cornerRadius(4)
                                .offset(x: -0, y: -0)
                        }
                        .frame(width: 49.22, height: 60)
                        ZStack() {
                            VStack(spacing: 0) {
                                ZStack() { }
                                    .frame(width: 20.51, height: 25)
                            }
                            .padding(
                                EdgeInsets(top: 17.50, leading: 14.35, bottom: 17.50, trailing: 14.35)
                            )
                            .frame(width: 49.22, height: 60)
                            ZStack() {
                                Text("TAY")
                                    .font(Font.custom("Inter", size: 16).weight(.bold))
                                    .lineSpacing(20)
                                    .foregroundColor(.white)
                                    .offset(x: -12.28, y: -14)
                                Text("LOUD")
                                    .font(Font.custom("Inter", size: 12))
                                    .lineSpacing(18)
                                    .foregroundColor(Color(red: 0.70, green: 0.69, blue: 0.72))
                                    .offset(x: 11.28, y: 15)
                            }
                            .frame(width: 56.56, height: 48)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 16, height: 18.29)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/16x18"))
                                )
                            ZStack() {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 16.41, height: 20)
                                    .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                                    .cornerRadius(2)
                                    .offset(x: 0, y: 2)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 14, height: 10)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/14x10"))
                                    )
                                    .offset(x: -0.20, y: -7)
                            }
                            .frame(width: 16.41, height: 24)
                        }
                        .frame(width: 294.28, height: 60)
                    }
                    .frame(width: 364, height: 60)
                    .offset(x: -1, y: 373)
                    ZStack() {
                        
                    }
                    .frame(width: 24, height: 24)
                    .offset(x: 104, y: -346)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 68, height: 68)
                        .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/68x68"))
                        )
                        .cornerRadius(60)
                        .offset(x: -153, y: -353)
                }
            }
            .frame(width: 402, height: 874)
            .background(Color(red: 0.06, green: 0.07, blue: 0.08))
            .cornerRadius(8)
        }
    }
}

struct PanelOne_Previews: PreviewProvider {
    static var previews: some View {
        PanelOne()
    }
}


import SwiftUI

struct ContentView: View {
    let images = ["image1", "image2", "image3"]
    let texts = ["apple", "babanas", "orange"]
    @State private var currentIndex = 0

    var body: some View {
        VStack {
            Image(images[currentIndex])
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(radius: 10)
                .padding()
            Text(texts[currentIndex])
                .font(.system(size: 35))
                .padding(.top, 5)

            
                            
                            
            HStack {
                Button(action: {
                    if currentIndex > 0 {
                        currentIndex -= 1
                    }
                }) {
                    Image("arrowshape.backward.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                .disabled(currentIndex == 0) 

                Spacer()

                Button(action: {
                    
                    if currentIndex < images.count - 1 {
                        currentIndex += 1
                    }
                }) {
                    Image("arrowshape.right.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                .disabled(currentIndex == images.count - 1)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

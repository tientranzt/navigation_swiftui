import SwiftUI

struct DetailBear: View {
    let bear : Bear
    @State var isScale = false
    var body: some View {
        VStack{
            Image(bear.image)
                .resizable()
                .aspectRatio(contentMode: isScale ? .fill :  .fit)
                .onTapGesture{
                    withAnimation{
                        isScale.toggle()
                    }
                }
            Text(bear.description)
            Spacer()
        }
        .navigationBarTitle(Text(bear.name), displayMode: .inline)
    }
}



struct DetailBear_Previews: PreviewProvider {
    static var previews: some View {
        DetailBear(bear: Bear(name: "Test Name", image: "bear1", age: "1",canSwim : true , description: "Test Description"))
    }
}

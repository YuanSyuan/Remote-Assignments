//4. Please complete the following function that prints a pyramid made of asterisks.
func printTriangle(layers: Int) {
    var star = "*"
    
    for layer in 1...layers {
        let spaces = String(repeating: " ", count: layers - layer)
        print(spaces + star)
        star += "**"
        
    }
}
printTriangle(layers: 5)

/*
 
 5. Do you have any App ideas that you are interested in and want to develop? List them along with a brief description (2 sentences at most), and no need to consider the availability, required techniques and business models at all. (Mon/Tue)

    我想做「個人旅遊地圖/記事本 app」，想要可以pin地圖和撰寫旅遊日記/記錄的功能
    看到 app sotre 上比較相似的 app reference 是https://apps.apple.com/us/app/visited-travel-map-with-lists/id846983349
 
 */

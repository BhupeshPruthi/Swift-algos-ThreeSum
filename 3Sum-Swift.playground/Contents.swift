import Cocoa

func threeSum(_ nums: [Int]) -> [[Int]] {
    var solution = [[Int]]()
    guard nums.count > 2 else {return [[Int]]()}
    
    let sortedNums = nums.sorted()
    
    var i = 0
    while i < sortedNums.count - 2 {
        if i != 0 && sortedNums[i] == sortedNums[i - 1]  {
            i +=  1
        } else {
            let cal =  -sortedNums[i]
            var left = i + 1
            var right = sortedNums.count - 1
            while left < right {
                if (sortedNums[left] + sortedNums[right]) + sortedNums[i] == 0 {
                    let s = [sortedNums[i] , sortedNums[left] , sortedNums[right]]
                    solution.append(s)
                    
                    
                    while left < right, sortedNums[left] == sortedNums[left+1] {
                        left += 1
                    }
                    while left < right, sortedNums[right] == sortedNums[right-1] {
                        right -= 1
                    }
                    left += 1
                    right -= 1
                    
                } else if (sortedNums[left] + sortedNums[right]) > cal {
                    right -= 1
                } else if (sortedNums[left] + sortedNums[right]) < cal {
                    
                    left += 1
                } else {
                    left += 1
                    right -= 1
                }
            }
            i += 1
        }
        
    }
    return solution
}

let x = threeSum([-2,0,1,2, 1])

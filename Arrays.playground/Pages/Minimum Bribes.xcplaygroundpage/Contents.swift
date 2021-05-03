// Complete the minimumBribes function below.
func minimumBribes(q: [Int]) -> Void {
    var totalBribes = 0
    for i in 0..<q.count {
        let displacement = i + 1 - q[i]
        guard displacement >= -2 else { return print("Too chaotic") }
        let bribeReceipitantOrigin = q[i]
        var bribesReceived = 0
        for j in (i+1)..<q.count {
            let potentialBriberOrigin = q[j]
            if potentialBriberOrigin < bribeReceipitantOrigin { bribesReceived += 1 }
        }
        totalBribes += bribesReceived
    }
    print(totalBribes)
}

minimumBribes(q: [1,2,3])
minimumBribes(q: [3,1,2])
minimumBribes(q: [3,2,1])
minimumBribes(q: [2,3,1])
minimumBribes(q: [2,1,3])
minimumBribes(q: [2,1,5,3,4])
minimumBribes(q: [2,5,1,3,4])

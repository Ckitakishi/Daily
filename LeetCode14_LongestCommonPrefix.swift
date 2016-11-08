/*
 
@Ckitakishi -> -> -> ckitakishi.com

14. Longest Common Prefix
Write a function to find the longest common prefix string amongst an array of strings.

*/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var common = ""
        if (strs.count > 0) {
            common = strs[0]
        } else {
            return common
        }
        for str in strs {
            while !str.hasPrefix(common) {
                if common.characters.count == 0 {
                    return common
                }
                common.remove(at: common.index(before: common.endIndex))
            }
        }
        return common
    }
}

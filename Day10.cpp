class Solution {
  public:
    int longestSubarray(vector<int> &arr, int k) {
        // Code here
        int n = arr.size();
        
        vector<int> prefix(n + 1, 0);
        
       
        for (int i = 0; i < n; i++) {
            int val = (arr[i] > k) ? 1 : -1;
            prefix[i + 1] = prefix[i] + val;
        }
        
       
        stack<int> st;
        for (int i = 0; i <= n; i++) {
            if (st.empty() || prefix[i] < prefix[st.top()]) {
                st.push(i);
            }
        }
        
        int ans = 0;
        
       
        for (int j = n; j >= 0; j--) {
            while (!st.empty() && prefix[j] > prefix[st.top()]) {
                ans = max(ans, j - st.top());
                st.pop();
            }
        }
        
        return ans;
    }
};

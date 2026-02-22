#include <stdio.h>

int subarrayXor(int arr[], int n, int k) {
    int count = 0;

    for (int i = 0; i < n; i++) {
        int xr = 0;
        for (int j = i; j < n; j++) {
            xr ^= arr[j];   // XOR from i to j

            if (xr == k) {
                count++;
            }
        }
    }

    return count;
}

int main() {
    int arr[] = {4, 2, 2, 6, 4};
    int n = sizeof(arr) / sizeof(arr[0]);
    int k = 6;

    int result = subarrayXor(arr, n, k);
    printf("Output: %d\n", result);

    return 0;
}

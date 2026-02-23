#include <stdio.h>

int main() {
    int a[] = {1, 2, 3, 2, 1};
    int b[] = {3, 2, 2, 3, 3, 2};

    int n = sizeof(a) / sizeof(a[0]);
    int m = sizeof(b) / sizeof(b[0]);

    int unionArr[n + m];
    int k = 0;

    // Add elements of first array
    for (int i = 0; i < n; i++) {
        int found = 0;
        for (int j = 0; j < k; j++) {
            if (unionArr[j] == a[i]) {
                found = 1;
                break;
            }
        }
        if (!found) {
            unionArr[k++] = a[i];
        }
    }

    // Add elements of second array
    for (int i = 0; i < m; i++) {
        int found = 0;
        for (int j = 0; j < k; j++) {
            if (unionArr[j] == b[i]) {
                found = 1;
                break;
            }
        }
        if (!found) {
            unionArr[k++] = b[i];
        }
    }

    // Sort the union array (simple bubble sort)
    for (int i = 0; i < k - 1; i++) {
        for (int j = i + 1; j < k; j++) {
            if (unionArr[i] > unionArr[j]) {
                int temp = unionArr[i];
                unionArr[i] = unionArr[j];
                unionArr[j] = temp;
            }
        }
    }

    // Print union
    printf("Union of arrays: ");
    for (int i = 0; i < k; i++) {
        printf("%d ", unionArr[i]);
    }

    return 0;
}

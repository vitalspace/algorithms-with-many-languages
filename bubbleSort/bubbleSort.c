#include <stdio.h>

int *bubbleSort(int arr[], int size)
{
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size - 1; j++)
        {
            if (arr[j] > arr[j + 1])
            {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
    return arr;
}
int main()
{
    int arr[] = {1, 5, 4, 9, 2, 8};
    int size = sizeof(arr) / sizeof(arr[0]);

    int *sortedArray = bubbleSort(arr, size);

    for (int i = 0; i < size; i++)
    {
        printf("%d ", sortedArray[i]);
    }

    return 0;
}

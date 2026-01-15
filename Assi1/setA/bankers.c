#include <stdio.h>

int main()
{
    int i, j, n, r;
    int alloc[10][10], max[10][10], need[10][10];
    int av[10], finish[10] = {0}, safeSeq[10];

    printf("Enter number of processes: ");
    scanf("%d", &n);

    printf("Enter number of resources: ");
    scanf("%d", &r);

    printf("Enter Allocation matrix:\n");
    for (i = 0; i < n; i++)
        for (j = 0; j < r; j++)
            scanf("%d", &alloc[i][j]);

    printf("Enter Max matrix:\n");
    for (i = 0; i < n; i++)
        for (j = 0; j < r; j++)
            scanf("%d", &max[i][j]);

    printf("Enter Available resources:\n");
    for (j = 0; j < r; j++)
        scanf("%d", &av[j]);

    // Calculate Need matrix
    for (i = 0; i < n; i++)
        for (j = 0; j < r; j++)
            need[i][j] = max[i][j] - alloc[i][j];

printf("\nneed matrix is : \n");
for( i=0;i<n;i++){
for( j=0;j<r;j++){
printf(" %d",need[i][j]);
}
printf("\n");
}

    int count = 0;

    while (count < n)
    {
        int found = 0;

        for (i = 0; i < n; i++)
        {
            if (finish[i] == 0)
            {
                int canExecute = 1;

                for (j = 0; j < r; j++)
                {
                    if (need[i][j] > av[j])
                    {
                        canExecute = 0;
                        break;
                    }
                }

                if (canExecute)
                {
                    for (j = 0; j < r; j++)
                        av[j] += alloc[i][j];

                    safeSeq[count++] = i;
                    finish[i] = 1;
                    found = 1;
                }
            }
        }

        if (!found)
        {
            printf("\nSystem is NOT in safe state");
            return 0;
        }
    }

    printf("\nSystem is in SAFE state\nSafe sequence: ");
    for (i = 0; i < n; i++)
        printf("P%d ", safeSeq[i]);



    return 0;
}

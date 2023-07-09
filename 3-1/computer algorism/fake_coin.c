//[ 가짜 동전 문제 개선 ]
//이것을 3등분하여 구하는 방법으로 개선하여 작성하고 100 200, 400, 800, 10000의 동전 중 가짜 동전이 하나 섞여 있을 때 그것을 찾아내기 위하여 이 때 몇 번 비교가 필요한지 실험을 통하여 밝혀라.

#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int *find_bad_coin3(int *coins, int n);
int main(){
    int i, n, fake;
    int *coins, *bad_coin;

    scanf("%d", &n);//coin number
    srand(time(NULL));  //random coin
    coins = (int *) malloc((n+1)*sizeof(int));
    for(i = 0; i<n+1; i++)
        coins[i]=10; // All coin weight
    fake = rand() % n;
    coins[fake] = 5; // fake coin weight == 5

// Start fake coin Find
    bad_coin = find_bad_coin3(coins,n);
    printf("coins[%d]=%d:,coins[%d]=%d\n",fake,
            coins[fake], (int)(bad_coin - coins), *bad_coin );
}
int *find_bad_coin3(int *coins, int n)
{
    int i, one3rd = (n+2)/3, sum1 = 0, sum2 = 0, sum3 = 0, *coins2, *coins3;
    static int count = 0; // 얼마만에 찾았느냐 == count
    if(n<=3){
        printf("Found it! with %d iteration\n", count);
        if (coins[0] < coins[1]) return coins;
        else if (coins[1] < coins[2]) return coins+1;
        else return coins+2;
        count++;
        // n=0일때도 count값이 높아지게 될 수 있어서 count를 밑에 두었다
    }
    coins2 = coins + one3rd;
    coins3 = coins + 2*one3rd;
    for ( i = 0; i < one3rd; i++){
        sum1 += coins[i];
        sum2 += coins2[i];
        sum3 += coins3[i];
    }
    count++;

    if (sum1 < sum2)
        return find_bad_coin3(coins, one3rd);
    else if(sum1 > sum2)
        return find_bad_coin3(coins2, one3rd);
    else if(sum1 = sum2 || sum1 > sum3)
        return find_bad_coin3(coins3,one3rd);
    else return coins + 1;
    /* 마지막 else는 coin이 100개 일 때 sum1 = 33, sum2 = 33, sum3 = 33로
    나눠지고 그 셋이 무게가 같으면 나머지 한 코인이 가짜 동전이므로 다음 동전을 retrun하도록 설정*/
}


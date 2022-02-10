#include <stdio.h>
#include <string.h>

int main(){
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    char hex[1000001];
    char bin[4000001];

    scanf("%s", hex);

    int first_digit = hex[0] < 'A'? hex[0] - '0' : hex[0] - 'A' + 10;
    
    int shift = 0;
    if (first_digit < 8)
        shift++;
    if (first_digit < 4)
        shift++;
    if (first_digit < 2)
        shift++;

    int size_hex = strlen(hex);
    int size_bin = strlen(bin) * 4 - shift;

    bin[size_bin] = '\0';

    for(int i = 0; i < size_hex; i++){
        int digit = hex[i] < 'A'? hex[i] - '0' : hex[i] - 'A' + 10;

        bin[i*4 + 0 - shift] = '0' + ((digit >> 3) & 1);
        bin[i*4 + 1 - shift] = '0' + ((digit >> 2) & 1);
        bin[i*4 + 2 - shift] = '0' + ((digit >> 1) & 1);
        bin[i*4 + 3 - shift] = '0' + ((digit >> 0) & 1);

    }

    printf("%s", bin);

    return 0;
}

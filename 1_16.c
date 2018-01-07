#include <stdio.h>

#define MAXLINE 10

int mygetline(char line[], int maxline);

void copy(char to[], char from[]);


int main(void) {
    int len, max, c;

    char line[MAXLINE];
    char longest[MAXLINE];

    max = 0;
    while (len = mygetline(line, MAXLINE), len > 0) {
        if (len > max) {
            max = len;
            copy(longest, line);
            if (longest[max - 1] != '\n') {
                while (c = getchar(), c != EOF && c != '\n') {
                    ++max;
                }
            }
        }
    }
    if (max > 0) {
        printf("%d %s\n", max, longest);
    }
    return 0;
}

int mygetline(char s[], int lim) {
    int c, i;
    for (i = 0; i < lim - 1 && (c = getchar()) != EOF && c != '\n'; ++i) {
        s[i] = c;
    }
    if (c == '\n') {
        s[i] = c;
        ++i;
    }
    s[i] = '\0';
    return i;
}

void copy(char to[], char from[]) {
    int i = 0;
    while (to[i] = from[i], to[i] != '\0') {
        ++i;
    }
}

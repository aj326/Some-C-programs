/*
 * Ahmed AlJehairan
 * Github: aj326
 * Description: Date conversion --  M,D <=> day of year
 */
#include <stdio.h>

#define ISLEAP(year) year%4 == 0 && year%100 != 0 || year%400 ==0

char day_tab[2][13] =
{
    {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31},
    {0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
};
/* day_of_year: set day of year from month & day */
int day_of_year(int year, int month, int day)
{
    int leap = ISLEAP(year);
    char *p = &day_tab[leap][1];
    int i;
    for (i = 1; i < month; ++i)
    {
        day += *p++;
    }
    return day;
}
/* month_day: set month, day from day of year */
void month_day(int year, int yearday, int *pmonth, int *pday)
{
    int leap = ISLEAP(year);
    int i;    char *p;


    p = &day_tab[leap][1];
    for (i = 1; yearday > *p; i++)
    {
        yearday -= *p;
        ++p;
    }
    *pmonth = i;
    *pday = yearday;
}
int main(int argc, char const *argv[])
{
        /* code */
    return 0;
}

//
//  main.m
//  ASArrayMenu
//
//  Created by Student P_02 on 23/10/16.
//  Copyright © 2016 Afsana. All rights reserved.
//

#import <Foundation/Foundation.h>
void sort(int array[]);
void oddvaluessum(int array[]);
void evenvaluessum(int array[]);
void reverse(int number);
int array[10];
int size, i,temp,j;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int choice;
        //store array elements
        printf("Enter size of array: ");
        scanf("%d", &size);
        
        printf("Enter elements in array: ");
        for(i=0; i<size; i++)
        {
            scanf("%d", &array[i]);
        }
        
        //Print Array
        printf("Elements in array: ");
        for(i=0; i<size; i++)
        {
            printf("%d\t", array[i]);
        }
        
        
        printf("\nMenu\n1.Sort Array in Ascending Order\n2.Sum Of Odd values In Array\n3.Sum Of Even Values In Array\n");
        
        printf("\nPlease Enter your choice:");
        scanf("%d",&choice);
        
        
        
        switch(choice)
        {
            case 1 :
                    sort(array);
                    break;
            case 2 :
                    oddvaluessum(array);
                    break;
            case 3 :
                    evenvaluessum(array);
                    break;
                
            default :
                    printf("\nWrong choice");
                    break;
        }
        
    }
    return 0;
}
//Sorting An array
void sort(int array[])
{
   
    for(i=0; i<size; i++)
    {
        for(j=i+1; j<size; j++)
        {
            if(array[j] < array[i])
            {
                temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
    
    //Prints the sorted array
     
    printf("\nElements of array in sorted ascending order: ");
    for(i=0; i<size; i++)
    {
        printf("%d\t", array[i]);
    }
    
}
//Sum of odd values
void oddvaluessum(int array[])
{
    int oddsum=0;
    for(i=0 ; i<size ; i++)
    {
        if((array[i] %2) !=0)
        {
            oddsum =oddsum+ array[i];
        }
        
    }
    printf(" Sum of odd Numbers = %d\n" , oddsum);
   
}
//Sum of Even values
void evenvaluessum(int array[])
{
    int evensum=0;
    for(i=0 ; i<size ; i++)
    {
        if((array[i] %2) ==0)
        {
            evensum =evensum+ array[i];
        }
        
    }
    printf(" Sum of even Numbers = %d\n" , evensum);
}
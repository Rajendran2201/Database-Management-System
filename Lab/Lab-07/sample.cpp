#include <iostream>  // Include the input/output stream library

using namespace std;

int main() {
    // Declare variables to store the numbers
    int num1, num2, sum;

    // Ask the user to enter two numbers
    cout << "Enter the first number: ";
    cin >> num1;  // Store the input in num1

    cout << "Enter the second number: ";
    cin >> num2;  // Store the input in num2

    // Calculate the sum of the two numbers
    sum = num1 + num2;

    // Output the sum
    cout << "The sum of " << num1 << " and " << num2 << " is " << sum << endl;

    return 0;  // End the program
}

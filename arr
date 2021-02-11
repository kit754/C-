#include <string>
#include <iostream>
#include <ctime>
#include <cstdlib>
using namespace std;

int main() {
	int start_time = clock();

	srand(time(NULL));

	int arr[10];
	for (int i = 0; i < 10; i++) {
	arr[i] = rand() % 10;
	cout << arr[i] << endl;
	}

	for (int i = 0; i < 10; i++) {
		int pos = i;
		int tmp = arr[i];
		for (int j = i + 1; j < 10; j++) {
			if (arr[j] > tmp) {
				pos = j;
				tmp = arr[j];
			}
			arr[pos] = arr[i];
			arr[i] = tmp;
		}
		cout << arr[i] << ", ";
	}
	cout << endl;

	int end_time = clock();
	int result = end_time - start_time;
	cout << result << endl;

	return 0;
}

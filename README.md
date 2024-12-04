# Dart JSON Access Bug
This repository demonstrates a common error in Dart applications when handling JSON responses:  accessing array indices without bounds checking.  The `bug.dart` file contains the erroneous code. The `bugSolution.dart` file provides a corrected version.

## Bug Description
The `fetchData` function in `bug.dart` retrieves JSON data from an API. It directly accesses an element at index 10, assuming the array will always be at least that large.  If the array is smaller, a `RangeError` occurs. Additionally, the code assumes `someKey` is present in each object within the array.

## Solution
The `bugSolution.dart` file shows how to correctly handle this situation, using appropriate checks to prevent `RangeError` and other issues.
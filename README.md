# Unhandled JSON Response Exception in Dart

This repository demonstrates a common error in Dart when handling JSON responses from APIs: directly accessing a field without verifying its presence.  This can lead to runtime exceptions if the JSON structure is unexpected. The solution shows how to safely access JSON fields using null-aware operators and conditional checks.

## Bug
The `bug.dart` file contains the erroneous code.  It attempts to access the `name` field of a JSON response without checking if the field exists.  If the API response does not include a `name` field, the code will throw a `null` error.

## Solution
The `bugSolution.dart` file provides a corrected version. It employs null-aware operators (`?.`) and conditional checks to safely handle potential missing fields, preventing runtime errors.
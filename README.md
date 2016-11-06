# buildingblocks
Repo for Odin Project assignments in Basic Ruby Building Blocks.

Assignment 2: Stock Picker
The important information is not the minimum and maximum values of the array itself.  We're looking for the largest difference between any element and any later element of the array.  Therefore, we start at the beginning of the array and subtract the first element from each successive one, recording the indexes of the elements with the largest difference.  Repeat with the second element and so on.  We obviously stop at the second to last element since the last has no successive elements.
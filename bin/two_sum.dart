void main() {
  List<int> list = [1, 2, 3, 4, 5];
  int target = 7;
  print(twoSum(list, target));
}

List<int> twoSum(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }
  return [0, 0];
}

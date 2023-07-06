import { expect, test, describe } from "bun:test";
import { binarySearch } from "./binarySearch";

describe("We are going to look for the number 4 in the array and this should be element 1 in the array.", () => {
  test("Should be 1", () => {
    const arr: number[] = [2, 4, 6, 8, 10];
    expect(binarySearch(arr, 4)).toBe(1);
  });
});

describe("We are going to look for the number 8 in the array and this should be element 3 in the array.", () => {
  test("Should be 3", () => {
    const arr: number[] = [2, 4, 6, 8, 10];
    expect(binarySearch(arr, 8)).toBe(3);
  });
});

describe("We are going to look for the number 7 in the array but it does not exist, so we should receive -1", () => {
  test("Should be -1", () => {
    const arr: number[] = [2, 4, 6, 8, 10];
    expect(binarySearch(arr, 7)).toBe(-1);
  });
});

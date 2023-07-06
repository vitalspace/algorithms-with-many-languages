const std = @import("std");
const print = std.debug.print;

pub fn bubbleSort(arr: []u8) []u8 {
    var i: usize = 0;
    while (i < arr.len) : (i += 1) {
        var j: usize = 0;
        while (j < arr.len - 1) : (j += 1) {
            if (arr[j] > arr[j + 1]) {
                const temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
    return arr;
}

pub fn main() anyerror!void {
    var items = [_]u8{ 1, 5, 4, 9, 2, 8 };
    const sortedArr = bubbleSort(items[0..]);

    for (sortedArr) |value| {
        print("{d}", .{value});
    }
}

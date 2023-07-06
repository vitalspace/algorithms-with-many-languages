const std = @import("std");
const print = std.debug.print;

pub fn binarySearch(items: []u8, target: u8) ?usize {
    var left: usize = 0;
    var right = items.len;

    while (left < right) {
        const mid = left + (right - left) / 2;
        if (items[mid] == target) {
            return mid;
        } else if (items[mid] < target) {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    return null;
}

pub fn main() anyerror!void {
    var items = [_]u8{ 2, 4, 6, 8, 10 };
    const target: u8 = 122;
    const resp = binarySearch(items[0..], target);

    if (resp == null) {
        print("The number {any}, was not found in the array", .{target});
    } else {
        print("Index: {any}", .{resp});
    }
}

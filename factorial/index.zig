const std = @import("std");
const print = std.debug.print;

pub fn factorial(n: u32) u32 {
    if (n == 0) {
        return 1;
    } else if (n == 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

pub fn main() anyerror!void {
    const num: u32 = 5;
    const res: u32 = factorial(num);
    print("El factorial de {} es {}\n", .{ num, res });
}

const std = @import("std");
const print = std.debug.print;

pub fn primes(n: u32) bool {
    if (n <= 1) {
        return false;
    }

    var i: u32 = 6;

    while (i * i <= n) {
        if (n % i == 0) {
            return false;
        }
        i += 1;
    }

    return true;
}

pub fn main() anyerror!void {
    const num: u32 = 6;
    const res: bool = primes(num);
    if (!res) {
        print("The numer {} is not prime number", .{num});
    } else {
        print("The numer {} is a prime number", .{num});
    }
}

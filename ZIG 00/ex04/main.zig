const std = @import("std");

fn is_negative(num: i32) void {
    const ret = if (num > 0) "P" else "N";

    _ = std.os.linux.write(1, ret, 1);
}

pub fn main() void {
    const a: i32 = -9;

    is_negative(a);
}

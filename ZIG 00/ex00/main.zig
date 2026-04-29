const std = @import("std");

fn put_char(c: u8) void {
    _ = std.os.linux.write(1, @ptrCast(&c), 1);
}

pub fn main() void {
    const a: u8 = 'a';
    put_char(a);
}

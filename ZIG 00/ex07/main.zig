const std = @import("std");

fn ft_putnbr(nbr: i32) void {
    var n = nbr;

    if (n < 0) {
        _ = std.os.linux.write(1, "-", 1);
        n = -n;
    }

    if (n >= 10)
        ft_putnbr(@divTrunc(n, 10));

    const a: u8 = @intCast(@mod(n, 10) + '0');
    _ = std.os.linux.write(1, @ptrCast(&a), 1);
}

pub fn main() void {
    ft_putnbr(-999333);
    std.debug.print("\n", .{});
}

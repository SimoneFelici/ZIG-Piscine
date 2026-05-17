const std = @import("std");

fn ft_print_comb2() void {
    var n1: u8 = 0;

    while (n1 <= 98) : (n1 += 1) {
        var n2: u8 = n1 + 1;

        while (n2 <= 99) : (n2 += 1) {
            var out = [5]u8{
                n1 / 10 + '0',
                n1 % 10 + '0',
                ' ',
                n2 / 10 + '0',
                n2 % 10 + '0',
            };
            _ = std.os.linux.write(1, @ptrCast(&out), out.len);
            if (n1 != 98 or n2 != 99)
                _ = std.os.linux.write(1, ", ", 2);
        }
    }
}

pub fn main() void {
    ft_print_comb2();
}

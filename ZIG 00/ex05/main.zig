const std = @import("std");

fn print_comb() void {
    var comb = [3]u8{ 0, 1, 2 };
    var first = true;

    while (comb[0] < 10) : (comb[0] += 1) {
        while (comb[1] < 10) : (comb[1] += 1) {
            while (comb[2] < 10) : (comb[2] += 1) {
                if (comb[2] > comb[1] and comb[2] > comb[0] and comb[1] > comb[0]) {
                    var out = [3]u8{
                        comb[0] + '0',
                        comb[1] + '0',
                        comb[2] + '0',
                    };
                    if (!first) {
                        _ = std.os.linux.write(1, ",", 1);
                    }
                    _ = std.os.linux.write(1, @ptrCast(&out), out.len);

                    first = false;
                }
            }
            comb[2] = 2;
        }
        comb[1] = 1;
    }
}

pub fn main() void {
    print_comb();
}

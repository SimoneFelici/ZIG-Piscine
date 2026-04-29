const std = @import("std");

fn print_numbers() void {
    var letter: u8 = '0';
    while (letter <= '9') : (letter += 1) {
        _ = std.os.linux.write(1, @ptrCast(&letter), 1);
    }
}

pub fn main() void {
    print_numbers();
}

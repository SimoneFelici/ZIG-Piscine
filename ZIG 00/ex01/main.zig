const std = @import("std");

fn print_alphabet() void {
    var letter: u8 = 'a';
    while (letter < 'z') : (letter += 1) {
        _ = std.os.linux.write(1, @ptrCast(&letter), 1);
    }
}

pub fn main() void {
    print_alphabet();
}

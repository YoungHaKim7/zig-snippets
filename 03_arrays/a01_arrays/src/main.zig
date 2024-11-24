const std = @import("std");
const print = std.debug.print;

pub fn main() anyerror!void {
    const array: [5]u8 = .{ 1, 2, 3, 4, 5 };
    const undefined_array: [5]u8 = undefined;
    const name = "Adebayo";
    const name_len = "Adebayo";
    const print_name = "Adebayo";

    std.log.info("{any}", .{array});
    std.log.info("{any}", .{undefined_array});
    std.log.info("{any}", .{name});
    std.log.info("{any}", .{name_len.len});

    for (print_name) |ch| {
        print("[{c}]", .{ch});
    }
    print("\n", .{});
}

test "simple test" {}

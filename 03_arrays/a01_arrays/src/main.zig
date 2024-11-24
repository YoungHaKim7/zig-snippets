const std = @import("std");

pub fn main() anyerror!void {
    const array: [5]u8 = .{ 1, 2, 3, 4, 5 };

    std.log.info("{any}", .{array});
}

test "simple test" {}

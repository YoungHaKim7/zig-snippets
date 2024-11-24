# Result

```bash
$ zig build run

info: { 1, 2, 3, 4, 5 }
info: { 0, 0, 0, 0, 0 }
info: { 65, 100, 101, 98, 97, 121, 111 }
info: 7
[A][d][e][b][a][y][o]
```

- zig build run

```zig
const std = @import("std");

pub fn main() anyerror!void {
    const array: [5]u8 = .{ 1, 2, 3, 4, 5 };

    std.log.info("{any}", .{array});
}

```

```bash
$ zig build run

info: { 1, 2, 3, 4, 5 }

```

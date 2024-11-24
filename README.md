# zig-snippets

# link

- [.gitignore](#gitignore)

- [justfile(Debugging auto input (VSCode))](#justfile)


<hr />

- https://github.com/YoungHaKim7/zig_lang_exercises

# gitignore[|🔝|](#link)

```git
# https://github.com/ziglang/zig/blob/master/.gitignore

.DS_Store

# This file is for zig-specific build artifacts.
# If you have OS-specific or editor-specific files to ignore,
# such as *.swp or .DS_Store, put those in your global
# ~/.gitignore and put this in your ~/.gitconfig:
#
# [core]
#     excludesfile = ~/.gitignore
#
# Cheers!
# -andrewrk

.zig-cache/
zig-out/
/release/
/debug/
/build/
/build-*/
/docgen_tmp/
```

# justfile[|🔝|](#link)

```justfile
# Debugging(VSCode)
vscode:
	rm -rf .vscode
	mkdir -p .vscode
	echo '{' > .vscode/launch.json
	echo '    "version": "0.2.0",' >> .vscode/launch.json
	echo '    "configurations": [' >> .vscode/launch.json
	echo '        {' >> .vscode/launch.json
	echo '            "type": "lldb",' >> .vscode/launch.json
	echo '            "request": "launch",' >> .vscode/launch.json
	echo '            "name": "Launch",' >> .vscode/launch.json
	echo '            "program": "${workspaceFolder}/zig-out/bin/${workspaceFolderBasename}",' >> .vscode/launch.json
	echo '            "args": [],' >> .vscode/launch.json
	echo '            "cwd": "${workspaceFolder}",' >> .vscode/launch.json
	echo '        }' >> .vscode/launch.json
	echo '    ]' >> .vscode/launch.json
	echo '}' >> .vscode/launch.json
	echo '{' > .vscode/tasks.json
	echo '  "version": "2.0.0",' >> .vscode/tasks.json
	echo '  "tasks": [' >> .vscode/tasks.json
	echo '      {' >> .vscode/tasks.json
	echo '          "label": "build",' >> .vscode/tasks.json
	echo '          "type": "shell",' >> .vscode/tasks.json
	echo '          "command": "zig build",' >> .vscode/tasks.json
	echo '          "group": "build",' >> .vscode/tasks.json
	echo '          "problemMatcher: [' >> .vscode/tasks.json
	echo '          "   "$gcc"' >> .vscode/tasks.json
	echo '          ]' >> .vscode/tasks.json
	echo '      }' >> .vscode/tasks.json
	echo '  ]' >> .vscode/tasks.json
	echo '},' >> .vscode/tasks.json
```


<hr />

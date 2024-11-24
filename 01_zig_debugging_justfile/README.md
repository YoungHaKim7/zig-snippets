# link

<hr />

# zig code (예문 출처)[|🔝|](#link)

https://zig-by-example.com/for

<hr>

# VScode ```lanuch.json``` & ```tasks.json``` 규칙[|🔝|](#link)

https://code.visualstudio.com/docs/editor/variables-reference

<hr>

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

# Zig Debug

1. VSCODE Extension 

```
CodeLLDB


```

https://code.visualstudio.com/docs/languages/cpp


# .vscode setting

```
mkdir .vscode

cd .vscode

// linux OS
touch launch.json

touch tasks.json


// windows OS
echo $null >> launch.json

echo $null >> tasks.json


```

<hr>

# macOS

## lanuch.json

```

{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "lldb",
            "request": "launch",
            "name": "Launch",
            "program": "${workspaceFolder}/zig-out/bin/${workspaceFolderBasename}",
            "args": [],
            "cwd": "${workspaceFolder}"
        }
    ]
}

```

## tasks.json

```

{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "build",
            "type": "shell",
            "command": "zig build",
            "group": "build",
            "problemMatcher": [
                "$gcc"
            ]
        }
    ]
}

```

<hr>

# WindowsOS

## lanuch.json (WindowsOS)

- lldb는 안되는듯 ㅠㅠ c++ extensions깔고 해야함.

```

{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "cppdebug",
            "type": "cppvsdbg",
            "request": "launch",
            "program": "${workspaceFolder}/zig-out/bin/${workspaceFolderBasename}",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${workspaceFolder}",
            "environment": [],
            "preLaunchTask": "build"
        }
    ]
}

```

<hr>

<br>

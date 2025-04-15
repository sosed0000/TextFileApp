# TextFileApp

A simple WPF application that demonstrates text synchronization and file operations.

## Features

- Real-time text synchronization between two text boxes (5-second interval)
- File writing functionality with proper class encapsulation
- Two deployment options: portable and installer versions

## Installation

### Portable Version
1. Download `Program.zip`
2. Extract files
3. Run `TextFileApp.exe`

*Note: Requires .NET 8 Runtime*

### Installer Version
1. Download `Installation.zip`
2. Run `Setup1.msi`
3. Follow installation wizard

## Usage
1. Type text in the top textbox (TextBox_Write)
2. Observe automatic synchronization to bottom textbox (TextBox_Read)
3. Click "WriteToFile" to save content to `C:\TEST\Test.txt`

## Technical Details
- Implements proper GET/SET encapsulation via `TextHolder` class
- Uses DispatcherTimer for UI updates
- Follows MVVM pattern principles

## Requirements
- Windows 10/11
- .NET 8.0 Runtime (for portable version)

## Files
- `Program.zip`: Contains portable executable and dependencies
- `Installation.zip`: Contains MSI installer package

## Notes
- Application creates `C:\TEST` directory if it doesn't exist
- Installer version defaults to `Program Files` installation directory

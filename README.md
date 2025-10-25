# OpenAsLocalhost

This project provides a simple solution to open HTML and PHP files in the default browser as localhost URLs using a context menu option in Windows.

## Usage

- **Batch File**: openaslocalhost.bat
- **Registry Script**: openaslocalhost.reg

## How it Works

The batch file uses string replacement to convert the local file path to a localhost URL. The registry script integrates the batch file into the context menu for HTML and PHP files.

## Installation

- **Quick (recommended)**

  Run in an elevated PowerShell (Run as Administrator):

  ```powershell
  iwr -useb https://raw.githubusercontent.com/kabangast/openaslocalhost/main/install.ps1 | iex
  ```

- **Manual (alternative)**

  1. Place the `openaslocalhost.bat` file in a directory, e.g., `C:\Program Files\.me\openaslocalhost`.
  2. Modify the paths in the `openaslocalhost.reg` file to match the location of the batch file if needed.
  3. Double-click the `openaslocalhost.reg` file to add the context menu entries to the registry.

## Uninstall

Run in an elevated PowerShell:

```powershell
iwr -useb https://raw.githubusercontent.com/kabangast/openaslocalhost/main/uninstall.ps1 | iex
```

Or remove manually:

```powershell
Remove-Item 'C:\Program Files\.me\openaslocalhost' -Recurse -Force -ErrorAction SilentlyContinue
reg delete 'HKCR\SystemFileAssociations\.html\shell\openaslocalhost' /f
reg delete 'HKCR\SystemFileAssociations\.php\shell\openaslocalhost' /f
```

## Usage

1. Right-click on an HTML or PHP file.
2. Select "Open as localhost" from the context menu.
3. The file will open in the default browser as a localhost URL.

## Contributing

Feel free to contribute to this project by opening issues or submitting pull requests.

## License

This project is licensed under the MIT License.

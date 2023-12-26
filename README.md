# OpenAsLocalhost

This project provides a simple solution to open HTML and PHP files in the default browser as localhost URLs using a context menu option in Windows.

## Usage

- **Batch File**: OpenAsLocalhost.bat
- **Registry Script**: OpenAsLocalhost.reg

## How it Works

The batch file uses string replacement to convert the local file path to a localhost URL. The registry script integrates the batch file into the context menu for HTML and PHP files.

## Installation

1. Place the `OpenAsLocalhost.bat` file in a directory, e.g., `C:\Program Files\openaslocalhost`.
2. Modify the paths in the `OpenAsLocalhost.reg` file to match the location of the batch file.
3. Double-click the `OpenAsLocalhost.reg` file to add the context menu entries to the registry.

## Usage

1. Right-click on an HTML or PHP file.
2. Select "Open as localhost" from the context menu.
3. The file will open in the default browser as a localhost URL.

## Contributing

Feel free to contribute to this project by opening issues or submitting pull requests.

## License

This project is licensed under the MIT License.

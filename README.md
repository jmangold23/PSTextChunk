# PSTextChunk Project

Welcome to the `PSTextChunk` project. This project is home to the `Get-OverlappingTextChunks` PowerShell function, designed specifically for segmenting lengthy texts into manageable, overlapping chunks. It's a valuable tool for tasks that require detailed, context-sensitive text analysis, such as processing large documents or data streams in natural language processing, data mining, and machine learning.

## Features

- **Chunk Size Customization:** Tailor chunk sizes to handle extensive texts effectively.
- **Controlled Overlap:** Specify overlap between chunks to maintain context continuity in long texts.
- **Error Handling:** Includes robust input validation for reliable operation.

## Prerequisites

- PowerShell 5.0 or higher
## Installation

You can install the `PSTextChunk` module either by downloading the ZIP file from GitHub or by cloning the repository using Git. Follow these steps:

### Option 1: Download ZIP

1. Visit the `PSTextChunk` GitHub repository: [https://github.com/jmangold23/PSTextChunk](https://github.com/jmangold23/PSTextChunk).
2. Click the `Code` button and then select `Download ZIP`.
3. Extract the downloaded ZIP file.
4. Move the extracted `PSTextChunk` folder to your preferred directory.

### Option 2: Git Clone

1. Open your command line or terminal.
2. Clone the repository using the following command:
   ```bash
   git clone https://github.com/jmangold23/PSTextChunk.git
   ```
3. The repository will be cloned into a folder named `PSTextChunk` in your current directory.

### Importing the Module

After downloading or cloning, import the module into PowerShell:

```powershell
Import-Module /path/to/PSTextChunk
```
## Installation

Download the `PSTextChunk.ps1` file into your PowerShell modules directory, or integrate the `Get-OverlappingTextChunks` function directly into your script.

## Usage

Use the `Get-OverlappingTextChunks` function as follows:

```powershell
Get-OverlappingTextChunks -Text <String> -ChunkSize <Int> -Overlap <Int>
```

- `Text`: A long string that needs to be split into chunks.
- `ChunkSize`: The number of characters in each chunk.
- `Overlap`: The number of characters that overlap in each chunk.

### Example

Splitting a long text from a book or document:

```powershell
# Example text excerpt (for illustration, replace with your actual long text)
$longText = "In the realm of Tolkoria, dragons ruled the skies and the kingdoms of men trembled... [very long text continues]"

# This command will process the lengthy text by breaking it into chunks of 100 characters each, with a 10-character overlap between consecutive chunks, making it easier to analyze large bodies of text without losing context.

Get-OverlappingTextChunks -Text $longText -ChunkSize 100 -Overlap 10
```

## Contributing

Contributions to the `PSTextChunk` project are welcome. Please ensure to update tests as appropriate when contributing.

## License

This project is distributed under the MIT License. See `LICENSE` for more information.

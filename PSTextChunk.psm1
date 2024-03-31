<#
.SYNOPSIS
    Splits text into overlapping chunks.

.DESCRIPTION
    The Get-OverlappingTextChunks function splits a given text string into chunks of a specified size. 
    These chunks can overlap based on the specified overlap value.

.PARAMETER Text
    The text string to be split into chunks.

.PARAMETER ChunkSize
    The size of each chunk. This is the number of characters in each text chunk.

.PARAMETER Overlap
    The number of characters each chunk will overlap with the next chunk.

.EXAMPLE
    PS> Get-OverlappingTextChunks -Text "Hello World" -ChunkSize 5 -Overlap 1
    This command splits "Hello World" into chunks of 5 characters, each overlapping the next by 1 character.

.INPUTS
    None. You cannot pipe objects to Get-OverlappingTextChunks.

.OUTPUTS
    String. The function outputs chunks of text as strings.

.NOTES
    Version: 1.0
    Author: Joshua Mangold
    Creation Date: 3/30/24
#>

function Get-OverlappingTextChunks {
    param (
        [string]$Text,
        [int]$ChunkSize,
        [int]$Overlap
    )

    # Validate inputs to ensure ChunkSize is positive, Overlap is non-negative and less than ChunkSize
    if ($ChunkSize -le 0 -or $Overlap -lt 0 -or $Overlap -ge $ChunkSize) {
        Write-Error "Invalid ChunkSize or Overlap"
        return
    }

    # Initialize the start position for the first chunk
    $start = 0

    # Loop until the end of the text is reached
    while ($start -le $Text.Length) {
        # Calculate the end position of the chunk, ensuring it doesn't exceed the text length
        $end = [math]::Min($Text.Length, $start + $ChunkSize)

        # Extract the chunk of text
        $chunk = $Text.Substring($start, $end - $start)
        
        # Output the extracted chunk
        Write-Output $chunk

        # Increment the start position for the next chunk, accounting for the overlap
        $start += ($ChunkSize - $Overlap)

        # Break the loop if the start position for the next chunk is beyond the text length
        if ($start -ge $Text.Length) {
            break
        }
    }
}

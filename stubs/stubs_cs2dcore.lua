--- @meta stubs_cs2dlua

--- Checks if the given path exists.
---
--- @param path string Path to directory.
---
--- @return boolean exists Whether the path exists or not.
function io.isdir(path) end

--- Returns a list containing the files in a directory.
---
--- @param path string Path to directory.
---
--- @return function: A function that can be used to enumerate over a list of files.
function io.enumdir(path) end

--- Returns the amount of time that passed since the game started in milliseconds.
---
--- @return number milliseconds Number of milliseconds since the game started.
--- > **Attention:** The number will eventually overflow when it reaches [the highest possible integer number](lua://math.huge).
---
--- @see os.time for seconds.
--- @see os.difftime for time comparison.
function os.millisecs() end

--- Returns a table with the host's operating system's identifying information.
---
--- @return table
function os.info() end

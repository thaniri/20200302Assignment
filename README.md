# Improvements that should be made given more time:

1. Input validation. The JSON needs to be an expected format.
2. Explicitly creating a powershell object that maps properties to the expected JSON input as opposed to Powershell doing it for me.
3. Seperate reading, parsing, and writing steps into 3 modular functions. Each step should be able to use the powershell object in point 2.

# Where I got stuck:

I'm not really a Powershell guy, so I just needed to discover the prebuilt utilities for parsing JSON/CSV files.
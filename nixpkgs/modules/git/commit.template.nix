{ writeText }:

writeText "commit.template" ''
# <type>: (If applied, this commit will...) <subject> (Max 50 char)
# |<----  Using a Maximum Of 50 Characters  ---->|

# Explain why this change is being made
# * Use '*' as to list bullets.
# * ...
# |<----   Try To Limit Each Line to a Maximum Of 72 Characters   ---->|

# Provide links or keys to any relevant tickets, articles or other resources
# Example: Github issue #23

# --- COMMIT END ---
# Type can be 
#    add    (a new file, function, or other addition)
#    feat   (new feature)
#    fix    (bug fix)
#    rename (renaming things)
#    refact (refactoring production code)
#    style  (formatting, missing semi colons, etc; no code change)
#    docs   (changes to documentation)
#    test   (adding or refactoring tests; no production code change)
#    chore  (updating grunt tasks etc; no production code change)
# --------------------
# Remember to
#   - Capitalize the subject line
#   - Use the imperative mood in the subject line
#   - Do not end the subject line with a period
#   - Separate subject from body with a blank line
#   - Use the body to explain what and why vs. how
''
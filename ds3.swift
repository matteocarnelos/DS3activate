import Foundation

let script = """
set appPath to quoted form of POSIX path of (path to resource "DS3activate") as text
set output to (do shell script appPath)
if output contains "rumbling" then
    display notification "Should be rumbling!" with title "DS3activate" subtitle "DualShock 3 Enabled"
else
    display notification with title "DS3activate" subtitle "No DualShock 3 gamepads found!"
end if
"""

NSAppleScript(source: script)!.executeAndReturnError(nil)

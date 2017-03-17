*** Settings ***
Documentation    A set of test cases to demonstrate a SAT solver plugin to Robot.

*** Variables ***
${Locked}     True
${DoorClosed} True


*** Test Cases ***
# Test Cases are going to be broken down into sets of actions and assertions.  Both
# of these types of steps can fail, but only assertions SHOULD fail.  If an action fails
# that means we have a flaw in our test design, making our test unsatisfiable.  For example:
Unsatisfiable
    Go to Front Door
    Lock Door
    Open Door
    Go Inside
    Assert this is my house

# The above test case will fail every time because we cannot open a door after locking it.
#  If we wish to check that the door is locked, we should design the test to "Assert Door is Locked"

#  Another case we wish to avoid is a Tautology, where we make no assertions, and the test will always
#  Return a true value.  A valid test case should identify a component under test and make an assertion about
#  that component.  The test case below only confirms that the below actions were taken, but we could be in
#  any house in the neighborhood!
Tautology
    Go to Front Door
    Unlock Door
    Open Door
    Go Inside

#  The next case we'd like to catch is that of efficiency.  Test cases can run very long, especially when on the ui side,
#  and many of the steps in question are not necesary.  By binding our assertions to upstream actions, we should be able
#  to eliminate excess steps
Filler
    Go to Front Door
    Wipe Feet
    Unlock Door
    Open Door
    Go Inside
    Close Door
    Assert this is my house

#  Looking at the test case above, we can tell from the assertion that two steps (Wipe Feet, Close Door) are not needed
#  to reach the final state and run our check.

#  Finally a valid test case (below) has a set number of steps, each of which has a clear relationship to the assertion
#  at the end.
Valid
    Go to Front Door
    Unlock Door
    Open Door
    Go Inside
    Assert this is my house


*** Keywords ***
Go to Front Door
    Log to Console      The house looms over you...
Wipe Feet
    Log to Console      Your shoes are filty!
Unlock Door
    Log to Console      The lock squeaks as the key turns
Lock Door
    Log to Console      The lock squeaks as the key turns
Open Door
    Log to Console      the door creaks as it swings open
Go Inside
    Log to Console      you smell dust as you step over the threshhold
Close Door
    Log to Console      The door slams shut with a rattle
Assert this is my house
    Log to Console      This is definitely not my house...
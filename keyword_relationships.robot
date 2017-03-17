*** Keywords ***

Go to Front Door
Wipe Feet           IMPLIES     Go to Front Door
Unlock Door         IMPLIES     Go to Front Door
Lock Door           IMPLIES     Go to Front Door
Open Door           IMPLIES     Go to Front Door
                    AND  NOT    Lock Door
                    OR          Unlock Door
Go Inside           IMPLIES     Go To Front Door
                    IMPLIES     Open Door
Close Door          IMPLIES     Open Door




Assertions

Assert this is my house     IMPLIES     Go Inside
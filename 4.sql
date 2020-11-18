GO
CREATE OR ALTER PROCEDURE GetEmptyTeams
AS
	SELECT TeamCode, TeamName, HomeField FROM Team
	WHERE TeamCode NOT IN (SELECT TeamCode FROM Player)

GO
EXEC GetEmptyTeams
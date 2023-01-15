--Script that creates a stored procedure AddBonus that adds a new correction for a student.

CREATE PROCEDURE AddBonus (@user_id INT, @project_name VARCHAR(255), @score INT)
AS
BEGIN
    DECLARE @project_id INT

    -- check if project exists
    SELECT @project_id = id FROM projects WHERE name = @project_name

    -- if project does not exist, create it
    IF @project_id IS NULL
    BEGIN
        INSERT INTO projects (name) VALUES (@project_name)
        SET @project_id = SCOPE_IDENTITY()
    END

    -- insert the new correction into the corrections table
    INSERT INTO corrections (user_id, project_id, score) VALUES (@user_id, @project_id, @score)
END

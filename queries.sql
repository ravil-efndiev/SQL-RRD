SELECT
    s.id,
    u.username,
    u.email,
    s.createdAt,
    s.expiresAt
FROM `Session` s
JOIN `User` u ON s.userId = u.id
WHERE u.username = 'alice_w'
  AND (s.expiresAt IS NULL OR s.expiresAt > CURRENT_TIMESTAMP);


SELECT * FROM `User`
WHERE username LIKE '%r%'
   OR email    LIKE '%@gmail.com';


SELECT
    dh.id,
    dh.name,
    dh.timeGoal,
    dh.timeSpent,
    u.username
FROM `DailyHabit` dh
JOIN `User` u ON dh.userId = u.id
WHERE dh.timeGoal > 0
ORDER BY dh.timeGoal DESC
LIMIT 5;


SELECT
    wh.id,
    wh.name,
    u.username,
    whd.day
FROM `WeeklyHabit` wh
JOIN `User`           u   ON wh.userId = u.id
JOIN `WeeklyHabitDay` whd ON whd.habitId = wh.id
WHERE wh.userId IN ('cmf7u00000002ab12cd34ef57','cmf7u00000004ab12cd34ef59','cmf7u00000007ab12cd34ef62')
ORDER BY wh.id, whd.day;


SELECT
    at.id,
    at.name,
    at.details,
    at.visibility,
    u.username 
FROM `ActivityType` at
JOIN `User` u ON at.userId = u.id
WHERE at.name LIKE '%ing%'


SELECT * FROM `ActivityEntry` ae
JOIN `ActivityType` at ON ae.typeId = at.id
JOIN `User`         u  ON at.userId = u.id
WHERE at.visibility IN ('everyone', 'friends')
ORDER BY ae.date DESC
LIMIT 10;


SELECT
    u.username,
    COUNT(dh.id)          AS habitCount,
    SUM(dh.timeGoal)      AS timeGoalMins,
    SUM(dh.timeSpent)     AS totalSpentMins,
    ROUND(AVG(dh.timeGoal), 1)  AS avgGoalMins,
    ROUND(
        SUM(dh.timeSpent) / NULLIF(SUM(dh.timeGoal), 0) * 100
    , 1)                  AS completionPercentage
FROM `User` u
JOIN `DailyHabit` dh ON dh.userId = u.id
GROUP BY u.id, u.username
HAVING SUM(dh.timeGoal) > 0
ORDER BY completionPercentage DESC;


SELECT * FROM `DailyHabitStat` dhs
JOIN `DailyHabit` dh ON dhs.habitId = dh.id
JOIN `User`        u  ON dh.userId   = u.id
WHERE (dhs.streakL - dhs.streakC) <= 3
  AND dhs.completed = 1;


SELECT
    n.type,
    n.payload,
    n.createdAt,
FROM `Notification` n
JOIN `User` u ON n.userId = u.id
WHERE n.userId = 'cmf7u00000002ab12cd34ef57'
ORDER BY n.createdAt DESC
LIMIT 5;


SELECT
    u.id,
    u.username,
    u.email,
    u.createdAt
FROM `User` u
LEFT JOIN `DailyHabit` dh ON dh.userId = u.id
WHERE dh.id IS NULL;


SELECT * FROM `DailyHabit` dh
RIGHT JOIN `DailyHabitStat` dhs ON dhs.habitId = dh.id
WHERE dhs.completed = 0
   OR dhs.habitId   IS NULL;


UPDATE `DailyHabit`
SET    timeSpent = timeSpent + 15
WHERE  id = 3
  AND  userId = 'cmf7u00000002ab12cd34ef57';


UPDATE `DailyHabitStat`
SET
    completed = 1,
    streakC   = streakC + 1,
    streakL   = GREATEST(streakL, streakC + 1)
WHERE habitId = 5
  AND DATE(date) = CURRENT_DATE;


DELETE FROM `Session`
WHERE expiresAt IS NOT NULL
  AND expiresAt < CURRENT_TIMESTAMP - INTERVAL 30 DAY;


SELECT
    u.username,
    COUNT(DISTINCT dh.id)   AS dailyHabits,
    COUNT(DISTINCT wh.id)   AS weeklyHabits,
    COUNT(DISTINCT at.id)   AS activityTypes,
    COUNT(DISTINCT n.id)    AS notifications
FROM `User` u
LEFT JOIN `DailyHabit`   dh ON dh.userId = u.id
LEFT JOIN `WeeklyHabit`  wh ON wh.userId = u.id
LEFT JOIN `ActivityType` at ON at.userId = u.id
LEFT JOIN `Notification` n  ON n.userId  = u.id
GROUP BY u.id, u.username
HAVING (dailyHabits + weeklyHabits + activityTypes) > 0
ORDER BY notifications DESC;

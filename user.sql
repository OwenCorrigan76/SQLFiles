drop user EventManager;

create user EventManager identified by 'manager';
grant all on Sunlight_Festival.* to EventManager with grant option;


drop user StageManager;

create user StageManager identified by 'stage';
grant insert, update, delete, select on stage to StageManager;
SELECT user, host FROM mysql.user;
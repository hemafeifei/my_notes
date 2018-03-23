CREATE TABLE USERS (
U_NAME VARCHAR2(16),
MAIL_ADDRESS VARCHAR2(30),
U_PASSWORD VARCHAR2(16),
U_DESCRIPTION VARCHAR(60)
);

INSERT ALL
  INTO GROUPS (G_NAME, G_DESCRIPTION) VALUES ('Administrators',  'admin group')
  INTO GROUPS (G_NAME, G_DESCRIPTION) VALUES ('Deployers', 'deploy group can only view')
  INTO GROUPS (G_NAME, G_DESCRIPTION) VALUES ('Monitors', 'monitor group can creat')
SELECT * FROM dual;


INSERT ALL
  INTO GROUPMEMBERS (G_NAME, G_MEMBER) VALUES ('Administrators',  'weblogic2')
  INTO GROUPMEMBERS (G_NAME, G_MEMBER) VALUES ('Deployers',  'test_deployer')
  INTO GROUPMEMBERS (G_NAME, G_MEMBER) VALUES ('Monitors',  'test_monitor')

SELECT * FROM dual;

INSERT ALL
  INTO USERS (U_NAME, MAIL_ADDRESS,U_PASSWORD,U_DESCRIPTION) VALUES ('weblogic2','','weblogic2','same as acc')
  INTO USERS (U_NAME, MAIL_ADDRESS,U_PASSWORD,U_DESCRIPTION) VALUES ('test_deployer','','test_deployer','same as acc')
  INTO USERS (U_NAME, MAIL_ADDRESS,U_PASSWORD,U_DESCRIPTION) VALUES ('test_monitor','','test_monitor','same as acc')


SELECT * FROM dual;

create view GROUPMEMBERS_VW
as
select s1.G_NAME, s2.G_MEMBER
from groups s1, groupmembers s2
where s1.G_NAME = s2.G_NAME;

create view USER_VW
as
select U_NAME, MAIL_ADDRESS, U_PASSWORD
from users;
 

#!/bin/bash
printf '\033[2J\033[H'
printf 'SESSION 02 | BUILD + SPRING BOOT ON LINUX HOST\n\n$ tail -5 build.log\n'
tail -5 /mnt/d/rikkei-session02/build.log
printf '\n$ ls -lh ~/workspace/quickbite-user/build/libs/\n'
ls -lh /root/workspace/quickbite-user/build/libs/
printf '\n$ java -jar build/libs/user-service.jar\nCaptured startup log (selected messages):\n'
python3 - <<'PY'
import json
for line in open('/mnt/d/rikkei-session02/application.log'):
 try:
  row=json.loads(line); msg=row.get('message','')
  if any(s in msg for s in ['Starting User','HikariPool-1','Started User','Tomcat started']):
   print(row.get('@timestamp',''),row.get('log.level',''),msg)
 except (ValueError,TypeError): pass
PY
printf '\n$ curl -s http://localhost:8081/actuator/health\n'
curl -s http://localhost:8081/actuator/health
printf '\n\n$ docker exec quickbite-db psql -U postgres -d postgres -c "SELECT count(*) FROM users;"\n'
docker exec quickbite-db psql -U postgres -d postgres -c 'SELECT count(*) FROM users;'
sleep infinity

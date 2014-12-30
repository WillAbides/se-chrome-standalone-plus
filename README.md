###Summary

This is a Proof-of-concept extension of selenium/standalone-chrome to show how docker exec can be used to start a vnc session.

###Usage

Build the image and start an instance

```bash
docker build -t se-chrome-standalone-plus .
SE_CONTAINER=$(docker run -p 4444:4444 -p 5900:5900 -d se-chrome-standalone-plus)
```

Use docker exec to start the vnc service

```bash
docker exec -d $SE_CONTAINER /opt/bin/start_vnc.sh
```

Now you can connect with vnc on port 5900 (display 0) and watch whatever test you run with this instance.



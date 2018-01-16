# aschamberger/lms

https://www.mysqueezebox.com/download

## Usage

```
docker create \
    --name=LogitechMediaServer \
    --net="host" \
    -v <path to data>:/config \
    -v <path to data>:/music \
    -e USER_ID=<uid> -e GROUP_ID=<gid> -e UMASK=<umask> \
    aschamberger/lms
```

## Parameters

* `-v /config` - LMS data (prefs/logs/cache)
* `-v /music` - music 
* `-e USER_ID` - match UID of user *nobody* of host system
* `-e GROUP_ID` - match GID of group *users* of host system
* `-e UMASK` - match UMASK of host system

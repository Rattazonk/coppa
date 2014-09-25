# Examples

NOTHING IMPLEMENTED YET!

## File Handling

### For Configured Servers
```
coppa <direction>(up|down) [-r --remote-path] <path>
```
####coppa Up

##### Upload local file
```
coppa up local/file/path
```
or
```
coppa up /absolute/local/file/path
```
##### Upload remote file
```
coppa up --remote-path /path/on/the/server
```
or
```
coppa up -r /path/on/the/server
```
#### coppa down

##### update a local path from server
```
coppa down local/file/path
```
##### update a local file by server path
```
coppa down -r remote/file/path
```
### By Hand
```
coppa <direction>(up|down) -l local/path -r --remote-path /remote/path -u remoteuser -p remotepass
```

## Dumping

### By Hand
```
coppa dump remoteuser@remoteurl:/absolute/remote/path [--from-db dbuser@dburl --from-db-pass remotedbpassword] /local/path --to-db dbuser@dburl --to-db-pass
```

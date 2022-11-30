# hg2git
yet another docker environment for hg to git migration 

# Usage

launch your docker container with following command:
```
docker run -it --mount src=`pwd`,target=/workspace,type=bind local:hg2git
```
go to `workspace` directory, and checkout your mercurial repo:
```
cd /workspace && hg clone <some-mercurial-repo>
```

then use hg-fast-export:
```
mkdir repo-git # or whatever
cd repo-git
git init
hg-fast-export.sh -r <local-mercurial-repo>
git checkout HEAD
```
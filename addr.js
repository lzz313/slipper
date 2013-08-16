{"addr": "58.209.216.30"} EOF
echo 58.209.216.30 > addr

git pull origin gh-pages
git add .
git commit -m "commit by post.sh on Fri Aug 16 13:03:23 CST 2013" -a
git push origin gh-pages
{addr: 58.209.216.30}
{"addr": "$address"}

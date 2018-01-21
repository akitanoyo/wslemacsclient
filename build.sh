# -H windowsgui dos窓開かない
# GOOS=windows go build -ldflags="-H windowsgui" 

# -s stripをかけてサイズ縮小
GOOS=windows go build -ldflags="-s -H windowsgui" 

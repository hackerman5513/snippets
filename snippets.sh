 gh repo list hackerman5513  --json name -q '.[].name'
 gh repo list hackerman5513  | awk '{print $1}'  | awk -F '/' '{print $2}'
 #prints my repo names




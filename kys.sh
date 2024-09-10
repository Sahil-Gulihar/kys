read -p "Enter the port: " PORT
PID=$(lsof -t -i:$PORT)

if [ -n "$PID" ]; then
  kill "$PID"
  echo "Process on port $PORT has been killed."
else
  echo "No process is using port $PORT."
fi
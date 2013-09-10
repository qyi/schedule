coffeescript = require "connect-coffee-script"
express = require "express"
jade = require "jade-static"
http = require "http"
path = require "path"
app = express()


app.configure ->
  app.set "port", process.env.PORT || 3000

  if process.env.NODE_ENV is "production"
    directory = path.join __dirname, "build/krypton/production"
  else
    directory = path.join __dirname

  app.use express.bodyParser()

  app.use jade directory
  app.use coffeescript directory
  app.use express.static directory


http.createServer(app).listen app.get("port"), ->
  console.log "Express server listening on port #{app.get "port"}"

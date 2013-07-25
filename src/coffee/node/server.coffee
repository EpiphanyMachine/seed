express = require 'express'
app = express()
app.use(express.static(__dirname + '/public'))
app.listen "4000", "0.0.0.0"
console.log 'Server started at http://0.0.0.0:4000'

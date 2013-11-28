express = require('express')
app = express()

console.log "#{__dirname}/views"
app.configure( ()->
    app.set('view engine', 'html')
    app.engine('.html', require('hbs').__express)
    app.set('views', "#{__dirname}/views")
    app.use(express.static('/public'))
)

app.get('/', (request, response)->
    response.render('index')
    return
)
app.listen(3000)
console.log 'app listen'

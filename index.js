const app = require('express')();
const { fn1 } = require('./anotherfile')

app.get('/', (req, res) => {
    res.send("OK3")
})
app.get('/route', (req, res) => {
    res.send(fn1())
})
app.listen(3000,()=> console.log("Started"))
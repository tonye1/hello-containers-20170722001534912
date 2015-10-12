/*eslint-env node, node*/
var request = require('request');
request('http://finance.google.com/finance/info?client=ig&q=NASDAQ%3aIBM', function (error, response, body) {
    if (!error && response.statusCode == 200) {
        console.log(body) // Print the google web page.
        var res = body;
        exports.res = res;
     }
})

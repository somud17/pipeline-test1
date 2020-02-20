'use strict'

exports.handler = function (event, context, callback) {
  var response = {
    statusCode: 200,
    headers: {
      'Content-Type': 'text/html; charset=utf-8'
    },
    body: '<h1>Thank you HashiTalks 2020!</h1><p>Have a great rest of the day. I\'ve been Will Hall :) </p>'
  }
  callback(null, response)
}

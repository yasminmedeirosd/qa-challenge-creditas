# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^crio um post$/) do
  @post = HTTParty.post(
    "http://jsonplaceholder.typicode.com/posts",
    :body => { title: "foo", body: "bar", userId: 1 }.to_json,
    :headers => { "Content-Type" => "application/json" },
  )
end

Então(/^visualizo o retorno do response body$/) do
  expect(@post.code).to eql 201
  
  expect(@post.parsed_response["title"]).to eql "foo"
  expect(@post.parsed_response["body"]).to eql "bar"
  expect(@post.parsed_response["userId"]).to eql 1
  expect(@post.parsed_response["id"]).to eql 101
end

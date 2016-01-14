#!/bin/bash

sed -i 's/^USERNAME_ROUTE_FORMAT =.*$/USERNAME_ROUTE_FORMAT = \/[A-Za-z0-9\\_.\\-\\%\\u4E00-\\u9FD5\\u3400-\\u4DBF\\u{20000}-\\u{2A6DF}\\u{2A700}-\\u{2CEAF}\\uF900–\\uFAFF\\u{2F800}-\\u{2FA1D}\\uAC00–\\uD7AF\\u3040-\\u30FF\\u31F0–\\u31FF\\u{1B000}–\\u{1B0FF}\\u3005]+\/ unless defined? USERNAME_ROUTE_FORMAT/' ../config/routes.rb
sed -i 's/^\s*matcher:.*$/  matcher: \/^@([\\w\\u4E00-\\u9FD5\\u3400-\\u4DBF\\u{20000}-\\u{2A6DF}\\u{2A700}-\\u{2CEAF}\\uF900–\\uFAFF\\u{2F800}-\\u{2FA1D}\\uAC00–\\uD7AF\\u3040-\\u30FF\\u31F0–\\u31FF\\u{1B000}–\\u{1B0FF}\\u3005][\\w\\u4E00-\\u9FD5\\u3400-\\u4DBF\\u{20000}-\\u{2A6DF}\\u{2A700}-\\u{2CEAF}\\uF900–\\uFAFF\\u{2F800}-\\u{2FA1D}\\uAC00–\\uD7AF\\u3040-\\u30FF\\u31F0–\\u31FF\\u{1B000}–\\u{1B0FF}\\u3005.-]{0,59})[\\w\\u4E00-\\u9FCC\\u3400-\\u4DB5\\u20000-\\u2A6D6\\u2A700-\\u2B734\\u2B740-\\u2B81D\\u3005\\u3040-\\u30FF]\/i,/' ../app/assets/javascripts/discourse/dialects/mention_dialect.js

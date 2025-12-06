# bonequest.cr
Web-API for [bonequest.com](https://www.bonequest.com) I provides access to episode data, allowing users to fetch details about episodes, including dialogue and metadata. It returns structured JSON responses for easy integration and use by developers

## Example
```cr
require "./bonequest"

bonequest = Bonequest.new
quote = bonequest.get_random_quote()
puts quote
```

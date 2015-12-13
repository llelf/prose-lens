Lens interface for [Prose](https://github.com/llelf/prose)

```
λ> (string # "संस्कृतम्") ^. graphemes
["सं","स्","कृ","त","म्"]

λ> (string # "संस्कृतम्") ^. codes . to length
9
```

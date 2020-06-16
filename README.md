# Name Generator

A command line utility to generate names.

## Usage

Clone down and `cd` into the repo.

Use the CLI to pick from `names`, `fancy_names`, and `space_names`.

You can optionally specify how many names you need.

```
$ ruby ./lib/names.rb
Lonhyn Lievaart Dan Emily

$ ruby ./lib/names.rb 2
Duane Caleb Wendi Olof
Kusum Don Jean Jun


$ ruby ./lib/fancy_names.rb
Irfan Ceyd-Kinde

$ ruby ./lib/fancy_names.rb 3
Dustin Sarmodv-Hanann
Knute Ditalynngc-Roue
Ramneek Ploytj-Fied


$ ruby ./lib/space_names.rb
Se-Jj Es'jee

$ ruby ./lib/space_names.rb 4
Ba-Tv Yd'tay
Ve-Jh Ht'jeh
Mr-Sd Nb'srn
Ri-Tc Ek'tie
```

## Attribution

I used data from the FreeBSD `propernames` document, found at `/usr/share/dict`.

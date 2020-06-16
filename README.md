# Name Generator

A command line utility to generate names.

## Usage

Clone down and `cd` into the repo.

Use the CLI to pick from `names`, `fancy_names`, and `space_names`.

You can optionally specify how many names you need.

```
$ ruby ./run/names.rb
Lonhyn Lievaart Dan Emily

$ ruby ./run/names.rb 2
Duane Caleb Wendi Olof
Kusum Don Jean Jun


$ ruby ./run/fancy_names.rb
Irfan Ceyd-Kinde

$ ruby ./run/fancy_names.rb 3
Dustin Sarmodv-Hanann
Knute Ditalynngc-Roue
Ramneek Ploytj-Fied


$ ruby ./run/space_names.rb
Se-Jj Es'jee

$ ruby ./run/space_names.rb 4
Ba-Tv Yd'tay
Ve-Jh Ht'jeh
Mr-Sd Nb'srn
Ri-Tc Ek'tie
```

## Attribution

I used data from the FreeBSD `propernames` document, found at `/usr/share/dict`.

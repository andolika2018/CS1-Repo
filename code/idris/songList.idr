module songList
import list

data song = HotlineBling | WildestDreams | TheHills | Stitches | WhatDoYouMean
data artist = Drake | TaylorSwift | TheWeekend | ShanMenez | JustinBeiber

|||Takes song, artist, length of song, rank
data songInfo = mkSongInfo song artist Nat Nat

hotline: songInfo
hotline = mkSongInfo HotlineBling Drake 427 1

wildest: songInfo
wildest = mkSongInfo WildestDreams TaylorSwift 340 2

hills: songInfo
hills = mkSongInfo TheHills TheWeekend 402 3

stitch: songInfo
stitch = mkSongInfo Stitches ShanMenez 326 4

wdym: songInfo
wdym = mkSongInfo WhatDoYouMean JustinBeiber 327 5

songlist: list songInfo
songlist = hotline :: wildest :: hills :: stitch :: wdym :: nil

songName: songInfo -> song
songName (mkSongInfo n a t r) = n

artistName: songInfo -> artist
artistName (mkSongInfo n a t r) = a

time: songInfo -> Nat
time (mkSongInfo n a t r) = t

rank: songInfo -> Nat
rank (mkSongInfo n a t r) = r

nextWeek: songInfo -> Nat -> songInfo
nextWeek (mkSongInfo n a t r) m = (mkSongInfo n a t m)

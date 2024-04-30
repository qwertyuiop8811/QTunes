local songs = {"music_disc.pigstep", 
               "music_disc.otherside",
               "music_disc.mall",
               "music_disc.stal",
               "music_disc.cat",
                }

local songNames = {"Pigstep",
                   "Otherside",
                   "Mall",
                   "Stal",
                   "Cat",
}            

term.clear()
--Making the speaker list
local speakers = {peripheral.find("speaker")}

--Function to play a bass note to stop song
local function stopSong()
  for i,speakers in pairs(speakers) do
    speakers.playSound("block.note_block.bass")
  end
  term.clear()
end

--Function to play a song
local function playSong(list, index)
  for i,speakers in pairs(speakers) do
    speakers.playSound(list[tonumber(index)])
  end
end

function userInput()
  --User input setup
term.clear()
write("QTunes v1.0 \n")
write("\n")
write("Please enter the index (number) of the song \n")
for i, songNames in pairs(songNames) do
    write(i .. ".) " .. songNames .. "\n")
end
write(":>> ")
Input = read()

--Now playing menu
write("Now Playing... " .. songNames[tonumber(Input)] .. "\n")
playSong(songs, Input)
  
write("Type 1 to stop \n")
write("Type 2 to pick again \n")
write(":>> ")
local input = read()
local input = tonumber(input)

if input == 1 then
  stopSong()
elseif input == 2 then
  userInput()
end

end

userInput()

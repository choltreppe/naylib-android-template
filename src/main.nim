# ****************************************************************************************
#
#   raylib game template
#
#   <Game title>
#   <Game description>
#
#   This game has been created using raylib (www.raylib.com)
#   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
#
#   Copyright (c) 2021 Ramon Santamaria (@raysan5)
#
# ****************************************************************************************

import raylib

when not defined(android):
  import std/os
  setCurrentDir getAppDir()

const
  screenWidth = 800
  screenHeight = 450

const centerText = "example"

proc main =
  echo "open window.."
  initWindow(screenWidth, screenHeight, "raylib game template")
  initAudioDevice()
  const textSize = 20
  let textWidth = measureText(centerText, textSize)
  try:
    var music = loadMusicStream("resources/ambient.ogg")
    setMusicVolume(music, 1)
    playMusicStream(music)
    setTargetFPS(60)
    while not windowShouldClose():
      updateMusicStream(music)
      drawing:
        clearBackground(Black)
        drawText(centerText, (screenWidth - textWidth) div 2, 200, textSize, White)

    reset(music)
  finally:
    closeAudioDevice()
    closeWindow()

main()

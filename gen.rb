# coding: utf-8

require 'cairo'

w = 128
h = 128
pattern = 2

surface = Cairo::ImageSurface.new(w, h)
context = Cairo::Context.new(surface)

str = "img/back_0" + (rand(pattern)+1).to_s + ".png"
surface2 = Cairo::ImageSurface.from_png(str)

str = "img/face_0" + (rand(pattern)+1).to_s + ".png"
surface3 = Cairo::ImageSurface.from_png(str)

str = "img/eye_0" + (rand(pattern)+1).to_s + ".png"
surface4 = Cairo::ImageSurface.from_png(str)

str = "img/mouth_0" + (rand(pattern)+1).to_s + ".png"
surface5 = Cairo::ImageSurface.from_png(str)

context.set_source(surface2, 0, 0)
context.paint
context.set_source(surface3, 0, 0)
context.paint
context.set_source(surface4, 0, 0)
context.paint
context.set_source(surface5, 0, 0)
context.paint

surface.write_to_png('gen.png')

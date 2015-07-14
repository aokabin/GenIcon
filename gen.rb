# coding: utf-8

require 'cairo'

w = 128 * 2
h = 128 * 2

pattern = 10
hair = (rand(pattern)+1).to_s
gender = ARGV[1] 

surface = Cairo::ImageSurface.new(w, h)
context = Cairo::Context.new(surface)

str = "img/back_" + (rand(pattern)+1).to_s + ".png"
surface2 = Cairo::ImageSurface.from_png(str)

str = "img/" + gender + "b_hair_" + hair + ".png"
surface3 = Cairo::ImageSurface.from_png(str)

str = "img/face_" + (rand(pattern)+1).to_s + ".png"
surface4 = Cairo::ImageSurface.from_png(str)

str = "img/eye_" + (rand(pattern)+1).to_s + ".png"
surface5 = Cairo::ImageSurface.from_png(str)

str = "img/" + gender + "f_hair_" + hair + ".png"
surface6 = Cairo::ImageSurface.from_png(str)

str = "img/mouth_" + (rand(pattern)+1).to_s + ".png"
surface7 = Cairo::ImageSurface.from_png(str)

context.set_source(surface2, 0, 0)
context.paint
context.set_source(surface3, 0, 0)
context.paint
context.set_source(surface4, 0, 0)
context.paint
context.set_source(surface5, 0, 0)
context.paint
context.set_source(surface6, 0, 0)
context.paint
context.set_source(surface7, 0, 0)
context.paint

surface.write_to_png('gen.png')
surface.write_to_png('data/' + ARGV[0] + '.png')

install.packages("imager")
install.packages("OpenImageR")
install.packages("magick")
##Reading the Image Locally
library(imager)
fpath <- system.file('extdata/Koala.jpg',package='imager') 
koala <- load.image("C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/RImage/Koala.jpg")
plot(koala)

##Reading the Image THRU Web
sphere <- magick::image_read("http://www.precisionballs.com/solid_works/JPEG/ball.jpg")
sphere
spheres <- image_resize((sphere, geometry_size_pixels(width = 250, height = 250, preserve_aspect = FALSE)))
spheres

##Resizing the image And Saving the Image
library(imager)
z = load.image("Koala.jpg")
y = resize(z, size_x = 250, size_y = 250)
save.image(im = y, "Koala1.jpg")
koala <- load.image("C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/RImage/Koala1.jpg")
plot(koala)





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
z = grayscale(z)
y = resize(z, size_x = 250, size_y = 250)
koala <- load.image("C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/RImage/Koala1.jpg")
plot(koala)
#

##Using R, implemented with function
##read an image Locally and thru WEB

##Image Augmentation:
##Resize image locally

##Resize image THRU web

##Grayscale
library(imager)
fpath <- system.file('extdata/Koala.jpg',package='imager') 
koala <- load.image("C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/RImage/Koala.jpg")
koala <- grayscale(koala)
plot(koala)
##Invert Image
path = system.file('extdata/Koala.png', package = "OpenImageR")

im = readImage(path)

flp = flipImage(im, mode = 'vertical')
##Augmented image should stored in another directory 


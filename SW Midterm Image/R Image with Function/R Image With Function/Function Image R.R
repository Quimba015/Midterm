##Using R, implemented with function

##1.1 Read an Image Locally
install.packages("imager")
library(imager)
fpath <- system.file('extdata/Koala.jpg', package='imager')
koala <- load.image("C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/R Image with Function/R Image With Function/Koala.jpg")
plot(koala)


##1.2 Read an Image THRU web
install.packages("magick")
library(magick)
koala <- image_read('http://www.precisionballs.com/solid_works/JPEG/ball.jpg')
image_flop(koala)

##Image Augmentation:

##2.1Resize image locally
library(imager)
fpath <- system.file('extdata/boats.jpg', package='imager')
boats <- load.image("C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/R Image with Function/R Image With Function/boats.jpg")
sub <- function(data,w,h){
  resize(data,w,h)
}
x <- sub(boats,250,250)
plot(x,main="RESIZED")
save.image(x, "C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/Augmented Images/Resizedboats.jpg")
##Resize image THRU web

##2.2 Grayscale
library(imager)
fpath <- system.file('extdata/Tulips.jpg',package='imager') 
tulip <-load.image("C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/R Image with Function/R Image With Function/Tulips.jpg")
subset <-function(data,x){
  grayscale(data, method = "Luma", drop = x)
}
y <- subset(tulip,TRUE)
plot(y)
save.image(y, "C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/Augmented Images/TulipsGray.jpg")

##2.3 Invert Image
library(imager)
fpath <- system.file('extdata/truck.jpg',package='imager')
truck <- load.image("C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/R Image with Function/R Image With Function/truck.jpg")
subset <- function(data,x){
  imrotate(data,x) %>% plot(main="Rotating")
}
y <- subset(truck,180)
plot(y)
save.image(y, "C:/Users/RM A-225/Documents/Quimba/Midterm/SW Midterm Image/Augmented Images/RotatedTruck.jpg")


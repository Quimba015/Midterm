library (argparse)
library (imager)



parser <- ArgumentParser()
parser$add_argument("-image", help = "Image to augment")
parser$add_argument("-H",type="integer", help = "Height")
parser$add_argument("-W",type="integer", help = "Width")
parser$add_argument("-grey" ,type="logical",help = "To grayscale an image")
parser$add_argument("-angle",type="integer", help = "To change the angle of the image")

parser$print_help()     
args <- parser$parse_args()  


print (args$image)
print (args$H)
print (args$W)
print (args$grey)
print (args$angle)

augmented <- function(img,H,W,gry,angle){
  if(gry==TRUE){
    imge <- load.image(img)
    gray <- grayscale(imge)
    gray1 <- save.image(im=gray,file=paste0("grayscale.jpg"))
  }
  if(H&&W > 1){
    imge <- load.image(img)
    imgrsze <- resize(imge, size_x = H, size_y = W)
    save.image(im = imgrsze,file=paste0("resized.jpg"))
  }
  if(angle>1){
    imge <- load.image(img)
    invimg <- imrotate(im=imge,angle)
    invimg1 <- save.image(im=invimg,file=paste0("inverted.jpg"))
  }
}
#output
print(augmented(args$image,args$H,args$W,args$grey,args$angle))


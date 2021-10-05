make_ring(10, directed = FALSE, mutual = FALSE, circular = TRUE)
print_all(make_ring(10))
g <- graph_from_literal(Andre----Beverly:Diane:Fernando:Carol,
                        Beverly--Andre:Diane:Garth:Ed,
                        Carol----Andre:Diane:Fernando,
                        Diane----Andre:Carol:Fernando:Garth:Ed:Beverly,
                        Ed-------Beverly:Diane:Garth,
                        Fernando-Carol:Andre:Diane:Garth:Heather,
                        Garth----Ed:Beverly:Diane:Fernando:Heather,
                        Heather--Fernando:Garth:Ike,
                        Ike------Heather:Jane,
                        Jane-----Ike )
coords <- c(5,5,119,256,119,256,120,340,478,
            622,116,330,231,116,5,330,451,231,231,231)
coords <- matrix(coords, nc=2)
V(g)$label <- V(g)$name
g$layout <- coords
plotG <- function(g) {plot(g, asp=FALSE, vertex.label.color="blue", 
                           vertex.label.cex=1.5,vertex.label.font=2, 
                           vertex.size=25, vertex.color="white",
                           vertex.frame.color="white", edge.color="black")}
plotG(g)

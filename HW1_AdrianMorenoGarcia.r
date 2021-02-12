#Tarea 01- Programación R
#Adrián Homero Moreno García
#12/02/2021
#Coded in a Raspberry 4 B


# Encuentra la suma de cada tercer elemento de un vector x
# this can be doing by % module for pair numbers or odd number in the if - for, but this is my implementation by doing sequences
# Parameters: x - vector with values
# print(sum_of_each_3rd_element(c(2,65,6,4,2,1,6,7,6,9))) - Example for run it, output:22
sum_of_each_3rd_element <- function(x){
   
   #Creates the sequence of ids' for each 3rd id sequence
   size_seq <- seq(1,length(x),by=2)
    
    sum_vec = c()
    
    # in a loop we assign into the new sum vector , the element of each 3rd position
    for (i in 0:(length(size_seq))){
        sum_vec <- append(sum_vec,x[size_seq[i]])
        
    }
    
    #we apply the sum and return the result
    return(sum(sum_vec))
    
}

# Suponga una sumatoria exponencial incremental, utilizando un for loop
# Parameters: x - value .. n - 0:n exponential
# print(sum_exp_for(4,4)) - Example for run it, output:341
sum_exp_for <- function(x,n){

    # vector h de elementos x y su exponente
    h <- c()
    
    # ciclo for  y damos vamos ingresando al vector h, el valor de x y su respectiva exponente
    for (i in 0:n){
        h <- append(h,x**i)
    }

    # regresamos la suma de todos los elementos del vector h
    return(sum(h))
}

# Suponga una sumatoria exponencial incremental, utilizando un while loop
# Parameters: x - value .. n - 0:n exponential
# print(sum_exp_while(4,4)) - Example for run it, output:341
sum_exp_while <- function(x,n){

    # vector h de elementos x y su exponente
    h <- c()
    # para el iterador en la función while
    i <- 0
    
    # ciclo while y damos vamos ingresando al vector h, el valor de x y su respectiva exponente
    while (i <= n){
        h <- append(h,x**i)
        
        i <- i+1
    }

    # regresamos la suma de todos los elementos del vector h
    return(sum(h))
}

# Suponga una sumatoria exponencial incremental, sin ningun tipo de loops
# Parameters: x - value .. n - 0:n exponential
# print(sum_exp_without(4,4)) - Example for run it, output:341
sum_exp_without_loops <- function(x,n){
    
    # we generate the sequence of exponents to n
    exp <- seq(0,n,by=1)
    
    # we calculate the length of the vector exponents in order to create a same length vector with x value
    len_vec_exp <- length(exp)
    
    # we create vecto x with same length as exponential vector
    x_vec <- seq(x,x,length.out=len_vec_exp)
    
    # we create the sum of the exponential between vectors
    return(sum(x_vec**exp))
}

# Realizar una funcion que ordene de mayor a menor una matrix M1,
# definiendo la column a ordenar
# Parameters: M1 - matrix to be ordered
# c is the column number which want to be ordered
# print(order_matrix_X_by_column_DESC(matrix(sample(1:100,20),ncol=2)),1) - Example for run it, output:M1 ordered
order_matrix_X_by_column_DESC <- function(M1,c){
    return(M1[order(M1[,c], decreasing=TRUE),])
}


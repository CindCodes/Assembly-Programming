; An assembly program that computes the following expressions
; Creates a DWORD array named ‘z’ of size 3 using DUP operator and leaves the array ‘z’ uninitialized
; Denotes the items in the array as [z_0, z_1, z_2], where z_0 is the first item, z_1 is the second item,  z_2 is the third item and updates each array item using the following expressions

; z_0 = x + y + r
; z_1 = z_0 + (y − r)
; z_2 = z_0 + (z_1 + y)
 
; x, y, r are 16-bit integer memory variables. 
; x = 10, y = 15, r = 4 

lbl_80C2CAC4:
/* 80C2CAC4  38 00 00 01 */	li r0, 1
/* 80C2CAC8  98 03 05 6C */	stb r0, 0x56c(r3)
/* 80C2CACC  98 03 07 10 */	stb r0, 0x710(r3)
/* 80C2CAD0  38 00 00 00 */	li r0, 0
/* 80C2CAD4  98 03 07 11 */	stb r0, 0x711(r3)
/* 80C2CAD8  4E 80 00 20 */	blr 

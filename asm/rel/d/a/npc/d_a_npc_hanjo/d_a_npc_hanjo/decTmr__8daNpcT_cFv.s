lbl_809FFDD0:
/* 809FFDD0  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 809FFDD4  2C 04 00 00 */	cmpwi r4, 0
/* 809FFDD8  4D 82 00 20 */	beqlr 
/* 809FFDDC  38 04 FF FF */	addi r0, r4, -1
/* 809FFDE0  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 809FFDE4  4E 80 00 20 */	blr 

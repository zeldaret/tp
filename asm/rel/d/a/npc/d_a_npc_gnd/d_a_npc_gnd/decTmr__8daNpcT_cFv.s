lbl_809BE1D0:
/* 809BE1D0  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 809BE1D4  2C 04 00 00 */	cmpwi r4, 0
/* 809BE1D8  4D 82 00 20 */	beqlr 
/* 809BE1DC  38 04 FF FF */	addi r0, r4, -1
/* 809BE1E0  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 809BE1E4  4E 80 00 20 */	blr 

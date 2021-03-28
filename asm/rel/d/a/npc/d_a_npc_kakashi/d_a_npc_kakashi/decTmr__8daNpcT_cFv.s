lbl_8054E694:
/* 8054E694  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 8054E698  2C 04 00 00 */	cmpwi r4, 0
/* 8054E69C  4D 82 00 20 */	beqlr 
/* 8054E6A0  38 04 FF FF */	addi r0, r4, -1
/* 8054E6A4  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 8054E6A8  4E 80 00 20 */	blr 

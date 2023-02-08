lbl_80A06314:
/* 80A06314  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A06318  2C 04 00 00 */	cmpwi r4, 0
/* 80A0631C  4D 82 00 20 */	beqlr 
/* 80A06320  38 04 FF FF */	addi r0, r4, -1
/* 80A06324  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A06328  4E 80 00 20 */	blr 

lbl_80B4CB14:
/* 80B4CB14  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B4CB18  2C 04 00 00 */	cmpwi r4, 0
/* 80B4CB1C  4D 82 00 20 */	beqlr 
/* 80B4CB20  38 04 FF FF */	addi r0, r4, -1
/* 80B4CB24  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B4CB28  4E 80 00 20 */	blr 

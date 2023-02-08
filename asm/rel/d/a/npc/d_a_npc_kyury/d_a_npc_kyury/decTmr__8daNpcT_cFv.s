lbl_80A635FC:
/* 80A635FC  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80A63600  2C 04 00 00 */	cmpwi r4, 0
/* 80A63604  4D 82 00 20 */	beqlr 
/* 80A63608  38 04 FF FF */	addi r0, r4, -1
/* 80A6360C  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80A63610  4E 80 00 20 */	blr 

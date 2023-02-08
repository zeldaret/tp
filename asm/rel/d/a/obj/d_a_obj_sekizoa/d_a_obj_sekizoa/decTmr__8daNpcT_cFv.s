lbl_80CD57F4:
/* 80CD57F4  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80CD57F8  2C 04 00 00 */	cmpwi r4, 0
/* 80CD57FC  4D 82 00 20 */	beqlr 
/* 80CD5800  38 04 FF FF */	addi r0, r4, -1
/* 80CD5804  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80CD5808  4E 80 00 20 */	blr 

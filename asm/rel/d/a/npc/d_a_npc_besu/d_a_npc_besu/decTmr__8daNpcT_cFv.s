lbl_8053E2E0:
/* 8053E2E0  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 8053E2E4  2C 04 00 00 */	cmpwi r4, 0
/* 8053E2E8  4D 82 00 20 */	beqlr 
/* 8053E2EC  38 04 FF FF */	addi r0, r4, -1
/* 8053E2F0  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 8053E2F4  4E 80 00 20 */	blr 

lbl_80A3B708:
/* 80A3B708  80 83 0D E4 */	lwz r4, 0xde4(r3)
/* 80A3B70C  2C 04 00 00 */	cmpwi r4, 0
/* 80A3B710  4D 82 00 20 */	beqlr 
/* 80A3B714  38 04 FF FF */	addi r0, r4, -1
/* 80A3B718  90 03 0D E4 */	stw r0, 0xde4(r3)
/* 80A3B71C  4E 80 00 20 */	blr 

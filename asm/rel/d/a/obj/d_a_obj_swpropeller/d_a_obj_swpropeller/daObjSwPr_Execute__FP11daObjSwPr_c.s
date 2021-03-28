lbl_8059B20C:
/* 8059B20C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B210  7C 08 02 A6 */	mflr r0
/* 8059B214  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B218  4B FF FD FD */	bl execute__11daObjSwPr_cFv
/* 8059B21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B220  7C 08 03 A6 */	mtlr r0
/* 8059B224  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B228  4E 80 00 20 */	blr 

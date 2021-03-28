lbl_8059B1EC:
/* 8059B1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B1F0  7C 08 02 A6 */	mflr r0
/* 8059B1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B1F8  4B FF FF 51 */	bl draw__11daObjSwPr_cFv
/* 8059B1FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B200  7C 08 03 A6 */	mtlr r0
/* 8059B204  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B208  4E 80 00 20 */	blr 

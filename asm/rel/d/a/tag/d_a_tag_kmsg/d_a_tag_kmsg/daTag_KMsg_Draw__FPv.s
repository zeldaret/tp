lbl_8048EA08:
/* 8048EA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EA0C  7C 08 02 A6 */	mflr r0
/* 8048EA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EA14  4B FF FE A5 */	bl Draw__12daTag_KMsg_cFv
/* 8048EA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EA1C  7C 08 03 A6 */	mtlr r0
/* 8048EA20  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EA24  4E 80 00 20 */	blr 

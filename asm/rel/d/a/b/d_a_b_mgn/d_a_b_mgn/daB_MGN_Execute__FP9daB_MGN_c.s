lbl_8060EA10:
/* 8060EA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060EA14  7C 08 02 A6 */	mflr r0
/* 8060EA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060EA1C  4B FF FE 05 */	bl execute__9daB_MGN_cFv
/* 8060EA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060EA24  7C 08 03 A6 */	mtlr r0
/* 8060EA28  38 21 00 10 */	addi r1, r1, 0x10
/* 8060EA2C  4E 80 00 20 */	blr 

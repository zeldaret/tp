lbl_8059A390:
/* 8059A390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A394  7C 08 02 A6 */	mflr r0
/* 8059A398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A39C  4B FF FF A1 */	bl _delete__12daObjSMark_cFv
/* 8059A3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A3A4  7C 08 03 A6 */	mtlr r0
/* 8059A3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A3AC  4E 80 00 20 */	blr 

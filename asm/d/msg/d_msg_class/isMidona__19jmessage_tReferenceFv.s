lbl_80228FD8:
/* 80228FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228FDC  7C 08 02 A6 */	mflr r0
/* 80228FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228FE4  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80228FE8  28 03 00 00 */	cmplwi r3, 0
/* 80228FEC  40 82 00 0C */	bne lbl_80228FF8
/* 80228FF0  38 60 00 00 */	li r3, 0
/* 80228FF4  48 00 00 08 */	b lbl_80228FFC
lbl_80228FF8:
/* 80228FF8  48 00 E1 05 */	bl isMidonaMessage__12dMsgObject_cFv
lbl_80228FFC:
/* 80228FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80229000  7C 08 03 A6 */	mtlr r0
/* 80229004  38 21 00 10 */	addi r1, r1, 0x10
/* 80229008  4E 80 00 20 */	blr 

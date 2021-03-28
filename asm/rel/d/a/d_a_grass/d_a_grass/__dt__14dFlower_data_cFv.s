lbl_80522FCC:
/* 80522FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522FD0  7C 08 02 A6 */	mflr r0
/* 80522FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522FDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80522FE0  41 82 00 10 */	beq lbl_80522FF0
/* 80522FE4  7C 80 07 35 */	extsh. r0, r4
/* 80522FE8  40 81 00 08 */	ble lbl_80522FF0
/* 80522FEC  4B DA BD 50 */	b __dl__FPv
lbl_80522FF0:
/* 80522FF0  7F E3 FB 78 */	mr r3, r31
/* 80522FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522FFC  7C 08 03 A6 */	mtlr r0
/* 80523000  38 21 00 10 */	addi r1, r1, 0x10
/* 80523004  4E 80 00 20 */	blr 

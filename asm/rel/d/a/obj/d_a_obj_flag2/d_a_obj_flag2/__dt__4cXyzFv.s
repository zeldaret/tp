lbl_80BEC790:
/* 80BEC790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEC794  7C 08 02 A6 */	mflr r0
/* 80BEC798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEC79C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEC7A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEC7A4  41 82 00 10 */	beq lbl_80BEC7B4
/* 80BEC7A8  7C 80 07 35 */	extsh. r0, r4
/* 80BEC7AC  40 81 00 08 */	ble lbl_80BEC7B4
/* 80BEC7B0  4B 6E 25 8D */	bl __dl__FPv
lbl_80BEC7B4:
/* 80BEC7B4  7F E3 FB 78 */	mr r3, r31
/* 80BEC7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEC7BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEC7C0  7C 08 03 A6 */	mtlr r0
/* 80BEC7C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEC7C8  4E 80 00 20 */	blr 

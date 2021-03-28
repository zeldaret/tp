lbl_80C87FB0:
/* 80C87FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87FB4  7C 08 02 A6 */	mflr r0
/* 80C87FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87FC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C87FC4  7C 7E 1B 78 */	mr r30, r3
/* 80C87FC8  7C 9F 23 78 */	mr r31, r4
/* 80C87FCC  48 00 00 35 */	bl moveMain__13daKekaiTrap_cFv
/* 80C87FD0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C87FD4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C87FD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C87FDC  7F C3 F3 78 */	mr r3, r30
/* 80C87FE0  4B FF FD 61 */	bl setBaseMtx__13daKekaiTrap_cFv
/* 80C87FE4  38 60 00 01 */	li r3, 1
/* 80C87FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C87FEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C87FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C87FF4  7C 08 03 A6 */	mtlr r0
/* 80C87FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87FFC  4E 80 00 20 */	blr 

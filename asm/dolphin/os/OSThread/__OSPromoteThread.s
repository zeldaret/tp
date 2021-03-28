lbl_80340FA8:
/* 80340FA8  7C 08 02 A6 */	mflr r0
/* 80340FAC  90 01 00 04 */	stw r0, 4(r1)
/* 80340FB0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80340FB4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80340FB8  7C 9F 23 78 */	mr r31, r4
lbl_80340FBC:
/* 80340FBC  80 03 02 CC */	lwz r0, 0x2cc(r3)
/* 80340FC0  2C 00 00 00 */	cmpwi r0, 0
/* 80340FC4  41 81 00 20 */	bgt lbl_80340FE4
/* 80340FC8  80 03 02 D0 */	lwz r0, 0x2d0(r3)
/* 80340FCC  7C 00 F8 00 */	cmpw r0, r31
/* 80340FD0  40 81 00 14 */	ble lbl_80340FE4
/* 80340FD4  7F E4 FB 78 */	mr r4, r31
/* 80340FD8  4B FF FE 11 */	bl SetEffectivePriority
/* 80340FDC  28 03 00 00 */	cmplwi r3, 0
/* 80340FE0  40 82 FF DC */	bne lbl_80340FBC
lbl_80340FE4:
/* 80340FE4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80340FE8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80340FEC  38 21 00 18 */	addi r1, r1, 0x18
/* 80340FF0  7C 08 03 A6 */	mtlr r0
/* 80340FF4  4E 80 00 20 */	blr 

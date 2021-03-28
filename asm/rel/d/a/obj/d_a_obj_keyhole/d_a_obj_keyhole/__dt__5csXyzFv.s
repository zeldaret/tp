lbl_80C434AC:
/* 80C434AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C434B0  7C 08 02 A6 */	mflr r0
/* 80C434B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C434B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C434BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C434C0  41 82 00 10 */	beq lbl_80C434D0
/* 80C434C4  7C 80 07 35 */	extsh. r0, r4
/* 80C434C8  40 81 00 08 */	ble lbl_80C434D0
/* 80C434CC  4B 68 B8 70 */	b __dl__FPv
lbl_80C434D0:
/* 80C434D0  7F E3 FB 78 */	mr r3, r31
/* 80C434D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C434D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C434DC  7C 08 03 A6 */	mtlr r0
/* 80C434E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C434E4  4E 80 00 20 */	blr 

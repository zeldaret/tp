lbl_80ACC054:
/* 80ACC054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACC058  7C 08 02 A6 */	mflr r0
/* 80ACC05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACC060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACC064  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACC068  41 82 00 10 */	beq lbl_80ACC078
/* 80ACC06C  7C 80 07 35 */	extsh. r0, r4
/* 80ACC070  40 81 00 08 */	ble lbl_80ACC078
/* 80ACC074  4B 80 2C C8 */	b __dl__FPv
lbl_80ACC078:
/* 80ACC078  7F E3 FB 78 */	mr r3, r31
/* 80ACC07C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACC080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACC084  7C 08 03 A6 */	mtlr r0
/* 80ACC088  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACC08C  4E 80 00 20 */	blr 

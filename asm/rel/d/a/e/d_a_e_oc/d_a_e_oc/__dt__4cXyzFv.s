lbl_80735AD8:
/* 80735AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80735ADC  7C 08 02 A6 */	mflr r0
/* 80735AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80735AE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80735AE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80735AEC  41 82 00 10 */	beq lbl_80735AFC
/* 80735AF0  7C 80 07 35 */	extsh. r0, r4
/* 80735AF4  40 81 00 08 */	ble lbl_80735AFC
/* 80735AF8  4B B9 92 44 */	b __dl__FPv
lbl_80735AFC:
/* 80735AFC  7F E3 FB 78 */	mr r3, r31
/* 80735B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80735B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80735B08  7C 08 03 A6 */	mtlr r0
/* 80735B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80735B10  4E 80 00 20 */	blr 

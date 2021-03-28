lbl_80B23AEC:
/* 80B23AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B23AF0  7C 08 02 A6 */	mflr r0
/* 80B23AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B23AFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B23B00  41 82 00 10 */	beq lbl_80B23B10
/* 80B23B04  7C 80 07 35 */	extsh. r0, r4
/* 80B23B08  40 81 00 08 */	ble lbl_80B23B10
/* 80B23B0C  4B 7A B2 30 */	b __dl__FPv
lbl_80B23B10:
/* 80B23B10  7F E3 FB 78 */	mr r3, r31
/* 80B23B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B23B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B23B1C  7C 08 03 A6 */	mtlr r0
/* 80B23B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80B23B24  4E 80 00 20 */	blr 

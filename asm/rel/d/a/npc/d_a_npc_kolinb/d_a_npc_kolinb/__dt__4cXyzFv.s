lbl_80A47AE4:
/* 80A47AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A47AE8  7C 08 02 A6 */	mflr r0
/* 80A47AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A47AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A47AF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A47AF8  41 82 00 10 */	beq lbl_80A47B08
/* 80A47AFC  7C 80 07 35 */	extsh. r0, r4
/* 80A47B00  40 81 00 08 */	ble lbl_80A47B08
/* 80A47B04  4B 88 72 39 */	bl __dl__FPv
lbl_80A47B08:
/* 80A47B08  7F E3 FB 78 */	mr r3, r31
/* 80A47B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A47B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A47B14  7C 08 03 A6 */	mtlr r0
/* 80A47B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80A47B1C  4E 80 00 20 */	blr 

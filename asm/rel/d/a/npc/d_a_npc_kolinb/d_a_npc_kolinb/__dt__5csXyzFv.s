lbl_80A47B20:
/* 80A47B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A47B24  7C 08 02 A6 */	mflr r0
/* 80A47B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A47B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A47B30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A47B34  41 82 00 10 */	beq lbl_80A47B44
/* 80A47B38  7C 80 07 35 */	extsh. r0, r4
/* 80A47B3C  40 81 00 08 */	ble lbl_80A47B44
/* 80A47B40  4B 88 71 FC */	b __dl__FPv
lbl_80A47B44:
/* 80A47B44  7F E3 FB 78 */	mr r3, r31
/* 80A47B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A47B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A47B50  7C 08 03 A6 */	mtlr r0
/* 80A47B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80A47B58  4E 80 00 20 */	blr 

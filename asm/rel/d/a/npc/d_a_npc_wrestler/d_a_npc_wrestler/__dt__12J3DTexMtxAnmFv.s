lbl_80B2FD08:
/* 80B2FD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2FD0C  7C 08 02 A6 */	mflr r0
/* 80B2FD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2FD14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2FD18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2FD1C  41 82 00 10 */	beq lbl_80B2FD2C
/* 80B2FD20  7C 80 07 35 */	extsh. r0, r4
/* 80B2FD24  40 81 00 08 */	ble lbl_80B2FD2C
/* 80B2FD28  4B 79 F0 14 */	b __dl__FPv
lbl_80B2FD2C:
/* 80B2FD2C  7F E3 FB 78 */	mr r3, r31
/* 80B2FD30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2FD34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2FD38  7C 08 03 A6 */	mtlr r0
/* 80B2FD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2FD40  4E 80 00 20 */	blr 

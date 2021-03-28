lbl_80A6318C:
/* 80A6318C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A63190  7C 08 02 A6 */	mflr r0
/* 80A63194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A63198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6319C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A631A0  41 82 00 30 */	beq lbl_80A631D0
/* 80A631A4  3C 60 80 A6 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A631A8  38 03 40 F4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A631AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80A631B0  41 82 00 10 */	beq lbl_80A631C0
/* 80A631B4  3C 60 80 A6 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A631B8  38 03 40 E8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A631BC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A631C0:
/* 80A631C0  7C 80 07 35 */	extsh. r0, r4
/* 80A631C4  40 81 00 0C */	ble lbl_80A631D0
/* 80A631C8  7F E3 FB 78 */	mr r3, r31
/* 80A631CC  4B 86 BB 70 */	b __dl__FPv
lbl_80A631D0:
/* 80A631D0  7F E3 FB 78 */	mr r3, r31
/* 80A631D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A631D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A631DC  7C 08 03 A6 */	mtlr r0
/* 80A631E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A631E4  4E 80 00 20 */	blr 

lbl_80B2C624:
/* 80B2C624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2C628  7C 08 02 A6 */	mflr r0
/* 80B2C62C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2C630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2C634  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2C638  41 82 00 30 */	beq lbl_80B2C668
/* 80B2C63C  3C 60 80 B3 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B2C640  38 03 DB E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B2C644  90 1F 00 00 */	stw r0, 0(r31)
/* 80B2C648  41 82 00 10 */	beq lbl_80B2C658
/* 80B2C64C  3C 60 80 B3 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B2C650  38 03 DB DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B2C654  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B2C658:
/* 80B2C658  7C 80 07 35 */	extsh. r0, r4
/* 80B2C65C  40 81 00 0C */	ble lbl_80B2C668
/* 80B2C660  7F E3 FB 78 */	mr r3, r31
/* 80B2C664  4B 7A 26 D8 */	b __dl__FPv
lbl_80B2C668:
/* 80B2C668  7F E3 FB 78 */	mr r3, r31
/* 80B2C66C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2C670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2C674  7C 08 03 A6 */	mtlr r0
/* 80B2C678  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2C67C  4E 80 00 20 */	blr 

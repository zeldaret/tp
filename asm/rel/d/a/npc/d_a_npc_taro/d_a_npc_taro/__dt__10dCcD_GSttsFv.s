lbl_80570D44:
/* 80570D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570D48  7C 08 02 A6 */	mflr r0
/* 80570D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570D54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80570D58  41 82 00 30 */	beq lbl_80570D88
/* 80570D5C  3C 60 80 57 */	lis r3, __vt__10dCcD_GStts@ha
/* 80570D60  38 03 34 40 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80570D64  90 1F 00 00 */	stw r0, 0(r31)
/* 80570D68  41 82 00 10 */	beq lbl_80570D78
/* 80570D6C  3C 60 80 57 */	lis r3, __vt__10cCcD_GStts@ha
/* 80570D70  38 03 34 34 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80570D74  90 1F 00 00 */	stw r0, 0(r31)
lbl_80570D78:
/* 80570D78  7C 80 07 35 */	extsh. r0, r4
/* 80570D7C  40 81 00 0C */	ble lbl_80570D88
/* 80570D80  7F E3 FB 78 */	mr r3, r31
/* 80570D84  4B D5 DF B8 */	b __dl__FPv
lbl_80570D88:
/* 80570D88  7F E3 FB 78 */	mr r3, r31
/* 80570D8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570D94  7C 08 03 A6 */	mtlr r0
/* 80570D98  38 21 00 10 */	addi r1, r1, 0x10
/* 80570D9C  4E 80 00 20 */	blr 

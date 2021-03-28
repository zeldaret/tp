lbl_80AC8EDC:
/* 80AC8EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8EE0  7C 08 02 A6 */	mflr r0
/* 80AC8EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC8EEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC8EF0  41 82 00 30 */	beq lbl_80AC8F20
/* 80AC8EF4  3C 60 80 AD */	lis r3, __vt__10dCcD_GStts@ha
/* 80AC8EF8  38 03 94 78 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AC8EFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC8F00  41 82 00 10 */	beq lbl_80AC8F10
/* 80AC8F04  3C 60 80 AD */	lis r3, __vt__10cCcD_GStts@ha
/* 80AC8F08  38 03 94 6C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AC8F0C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AC8F10:
/* 80AC8F10  7C 80 07 35 */	extsh. r0, r4
/* 80AC8F14  40 81 00 0C */	ble lbl_80AC8F20
/* 80AC8F18  7F E3 FB 78 */	mr r3, r31
/* 80AC8F1C  4B 80 5E 20 */	b __dl__FPv
lbl_80AC8F20:
/* 80AC8F20  7F E3 FB 78 */	mr r3, r31
/* 80AC8F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8F2C  7C 08 03 A6 */	mtlr r0
/* 80AC8F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8F34  4E 80 00 20 */	blr 

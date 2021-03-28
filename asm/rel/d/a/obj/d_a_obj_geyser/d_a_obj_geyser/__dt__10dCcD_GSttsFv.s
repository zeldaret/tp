lbl_80BF8ED0:
/* 80BF8ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF8ED4  7C 08 02 A6 */	mflr r0
/* 80BF8ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF8EE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF8EE4  41 82 00 30 */	beq lbl_80BF8F14
/* 80BF8EE8  3C 60 80 C0 */	lis r3, __vt__10dCcD_GStts@ha
/* 80BF8EEC  38 03 91 F4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BF8EF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF8EF4  41 82 00 10 */	beq lbl_80BF8F04
/* 80BF8EF8  3C 60 80 C0 */	lis r3, __vt__10cCcD_GStts@ha
/* 80BF8EFC  38 03 91 E8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BF8F00  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BF8F04:
/* 80BF8F04  7C 80 07 35 */	extsh. r0, r4
/* 80BF8F08  40 81 00 0C */	ble lbl_80BF8F14
/* 80BF8F0C  7F E3 FB 78 */	mr r3, r31
/* 80BF8F10  4B 6D 5E 2C */	b __dl__FPv
lbl_80BF8F14:
/* 80BF8F14  7F E3 FB 78 */	mr r3, r31
/* 80BF8F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF8F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8F20  7C 08 03 A6 */	mtlr r0
/* 80BF8F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8F28  4E 80 00 20 */	blr 

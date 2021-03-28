lbl_80CB5EBC:
/* 80CB5EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5EC0  7C 08 02 A6 */	mflr r0
/* 80CB5EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5ECC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB5ED0  41 82 00 30 */	beq lbl_80CB5F00
/* 80CB5ED4  3C 60 80 CC */	lis r3, __vt__10dCcD_GStts@ha
/* 80CB5ED8  38 03 85 74 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CB5EDC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB5EE0  41 82 00 10 */	beq lbl_80CB5EF0
/* 80CB5EE4  3C 60 80 CC */	lis r3, __vt__10cCcD_GStts@ha
/* 80CB5EE8  38 03 85 68 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CB5EEC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CB5EF0:
/* 80CB5EF0  7C 80 07 35 */	extsh. r0, r4
/* 80CB5EF4  40 81 00 0C */	ble lbl_80CB5F00
/* 80CB5EF8  7F E3 FB 78 */	mr r3, r31
/* 80CB5EFC  4B 61 8E 40 */	b __dl__FPv
lbl_80CB5F00:
/* 80CB5F00  7F E3 FB 78 */	mr r3, r31
/* 80CB5F04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB5F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB5F0C  7C 08 03 A6 */	mtlr r0
/* 80CB5F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5F14  4E 80 00 20 */	blr 

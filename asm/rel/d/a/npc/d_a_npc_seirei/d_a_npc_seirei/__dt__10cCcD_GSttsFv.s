lbl_80AD6EE4:
/* 80AD6EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD6EE8  7C 08 02 A6 */	mflr r0
/* 80AD6EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD6EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD6EF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD6EF8  41 82 00 1C */	beq lbl_80AD6F14
/* 80AD6EFC  3C A0 80 AD */	lis r5, __vt__10cCcD_GStts@ha /* 0x80AD7FE0@ha */
/* 80AD6F00  38 05 7F E0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80AD7FE0@l */
/* 80AD6F04  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD6F08  7C 80 07 35 */	extsh. r0, r4
/* 80AD6F0C  40 81 00 08 */	ble lbl_80AD6F14
/* 80AD6F10  4B 7F 7E 2D */	bl __dl__FPv
lbl_80AD6F14:
/* 80AD6F14  7F E3 FB 78 */	mr r3, r31
/* 80AD6F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD6F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD6F20  7C 08 03 A6 */	mtlr r0
/* 80AD6F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD6F28  4E 80 00 20 */	blr 

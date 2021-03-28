lbl_80D03BFC:
/* 80D03BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D03C00  7C 08 02 A6 */	mflr r0
/* 80D03C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D03C08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D03C0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D03C10  41 82 00 1C */	beq lbl_80D03C2C
/* 80D03C14  3C A0 80 D0 */	lis r5, __vt__10cCcD_GStts@ha
/* 80D03C18  38 05 41 80 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80D03C1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D03C20  7C 80 07 35 */	extsh. r0, r4
/* 80D03C24  40 81 00 08 */	ble lbl_80D03C2C
/* 80D03C28  4B 5C B1 14 */	b __dl__FPv
lbl_80D03C2C:
/* 80D03C2C  7F E3 FB 78 */	mr r3, r31
/* 80D03C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D03C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D03C38  7C 08 03 A6 */	mtlr r0
/* 80D03C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D03C40  4E 80 00 20 */	blr 

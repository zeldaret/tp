lbl_80BCD46C:
/* 80BCD46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCD470  7C 08 02 A6 */	mflr r0
/* 80BCD474  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCD478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCD47C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCD480  41 82 00 30 */	beq lbl_80BCD4B0
/* 80BCD484  3C 60 80 BD */	lis r3, __vt__10dCcD_GStts@ha
/* 80BCD488  38 03 EB E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BCD48C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BCD490  41 82 00 10 */	beq lbl_80BCD4A0
/* 80BCD494  3C 60 80 BD */	lis r3, __vt__10cCcD_GStts@ha
/* 80BCD498  38 03 EB DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BCD49C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BCD4A0:
/* 80BCD4A0  7C 80 07 35 */	extsh. r0, r4
/* 80BCD4A4  40 81 00 0C */	ble lbl_80BCD4B0
/* 80BCD4A8  7F E3 FB 78 */	mr r3, r31
/* 80BCD4AC  4B 70 18 90 */	b __dl__FPv
lbl_80BCD4B0:
/* 80BCD4B0  7F E3 FB 78 */	mr r3, r31
/* 80BCD4B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCD4B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCD4BC  7C 08 03 A6 */	mtlr r0
/* 80BCD4C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCD4C4  4E 80 00 20 */	blr 

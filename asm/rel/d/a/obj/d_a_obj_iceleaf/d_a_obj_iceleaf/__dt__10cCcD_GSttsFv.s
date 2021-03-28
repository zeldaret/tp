lbl_80C25D04:
/* 80C25D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C25D08  7C 08 02 A6 */	mflr r0
/* 80C25D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C25D14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C25D18  41 82 00 1C */	beq lbl_80C25D34
/* 80C25D1C  3C A0 80 C2 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C25D20  38 05 5F 34 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C25D24  90 1F 00 00 */	stw r0, 0(r31)
/* 80C25D28  7C 80 07 35 */	extsh. r0, r4
/* 80C25D2C  40 81 00 08 */	ble lbl_80C25D34
/* 80C25D30  4B 6A 90 0C */	b __dl__FPv
lbl_80C25D34:
/* 80C25D34  7F E3 FB 78 */	mr r3, r31
/* 80C25D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C25D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C25D40  7C 08 03 A6 */	mtlr r0
/* 80C25D44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25D48  4E 80 00 20 */	blr 

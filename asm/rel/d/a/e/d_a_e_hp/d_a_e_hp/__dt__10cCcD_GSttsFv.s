lbl_806E9CF0:
/* 806E9CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9CF4  7C 08 02 A6 */	mflr r0
/* 806E9CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E9D00  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E9D04  41 82 00 1C */	beq lbl_806E9D20
/* 806E9D08  3C A0 80 6F */	lis r5, __vt__10cCcD_GStts@ha
/* 806E9D0C  38 05 A4 64 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 806E9D10  90 1F 00 00 */	stw r0, 0(r31)
/* 806E9D14  7C 80 07 35 */	extsh. r0, r4
/* 806E9D18  40 81 00 08 */	ble lbl_806E9D20
/* 806E9D1C  4B BE 50 20 */	b __dl__FPv
lbl_806E9D20:
/* 806E9D20  7F E3 FB 78 */	mr r3, r31
/* 806E9D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E9D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9D2C  7C 08 03 A6 */	mtlr r0
/* 806E9D30  38 21 00 10 */	addi r1, r1, 0x10
/* 806E9D34  4E 80 00 20 */	blr 

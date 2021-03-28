lbl_80BA8D1C:
/* 80BA8D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8D20  7C 08 02 A6 */	mflr r0
/* 80BA8D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA8D2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA8D30  41 82 00 1C */	beq lbl_80BA8D4C
/* 80BA8D34  3C A0 80 BB */	lis r5, __vt__10cCcD_GStts@ha
/* 80BA8D38  38 05 8F 44 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80BA8D3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA8D40  7C 80 07 35 */	extsh. r0, r4
/* 80BA8D44  40 81 00 08 */	ble lbl_80BA8D4C
/* 80BA8D48  4B 72 5F F4 */	b __dl__FPv
lbl_80BA8D4C:
/* 80BA8D4C  7F E3 FB 78 */	mr r3, r31
/* 80BA8D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA8D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8D58  7C 08 03 A6 */	mtlr r0
/* 80BA8D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8D60  4E 80 00 20 */	blr 

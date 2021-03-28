lbl_807E6DFC:
/* 807E6DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E6E00  7C 08 02 A6 */	mflr r0
/* 807E6E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E6E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E6E0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E6E10  41 82 00 1C */	beq lbl_807E6E2C
/* 807E6E14  3C A0 80 7E */	lis r5, __vt__10cCcD_GStts@ha
/* 807E6E18  38 05 75 40 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 807E6E1C  90 1F 00 00 */	stw r0, 0(r31)
/* 807E6E20  7C 80 07 35 */	extsh. r0, r4
/* 807E6E24  40 81 00 08 */	ble lbl_807E6E2C
/* 807E6E28  4B AE 7F 14 */	b __dl__FPv
lbl_807E6E2C:
/* 807E6E2C  7F E3 FB 78 */	mr r3, r31
/* 807E6E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E6E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E6E38  7C 08 03 A6 */	mtlr r0
/* 807E6E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6E40  4E 80 00 20 */	blr 

lbl_80A13CF8:
/* 80A13CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A13CFC  7C 08 02 A6 */	mflr r0
/* 80A13D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A13D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A13D08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A13D0C  41 82 00 1C */	beq lbl_80A13D28
/* 80A13D10  3C A0 80 A1 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A13D14  38 05 45 90 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A13D18  90 1F 00 00 */	stw r0, 0(r31)
/* 80A13D1C  7C 80 07 35 */	extsh. r0, r4
/* 80A13D20  40 81 00 08 */	ble lbl_80A13D28
/* 80A13D24  4B 8B B0 18 */	b __dl__FPv
lbl_80A13D28:
/* 80A13D28  7F E3 FB 78 */	mr r3, r31
/* 80A13D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A13D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A13D34  7C 08 03 A6 */	mtlr r0
/* 80A13D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80A13D3C  4E 80 00 20 */	blr 

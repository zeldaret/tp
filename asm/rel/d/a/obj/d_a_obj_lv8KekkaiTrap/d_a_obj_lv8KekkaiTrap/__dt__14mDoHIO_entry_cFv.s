lbl_80C87CF8:
/* 80C87CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87CFC  7C 08 02 A6 */	mflr r0
/* 80C87D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87D08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C87D0C  41 82 00 1C */	beq lbl_80C87D28
/* 80C87D10  3C A0 80 C9 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C885FC@ha */
/* 80C87D14  38 05 85 FC */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C885FC@l */
/* 80C87D18  90 1F 00 00 */	stw r0, 0(r31)
/* 80C87D1C  7C 80 07 35 */	extsh. r0, r4
/* 80C87D20  40 81 00 08 */	ble lbl_80C87D28
/* 80C87D24  4B 64 70 19 */	bl __dl__FPv
lbl_80C87D28:
/* 80C87D28  7F E3 FB 78 */	mr r3, r31
/* 80C87D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C87D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C87D34  7C 08 03 A6 */	mtlr r0
/* 80C87D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87D3C  4E 80 00 20 */	blr 

lbl_80C70CF0:
/* 80C70CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70CF4  7C 08 02 A6 */	mflr r0
/* 80C70CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C70D00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C70D04  41 82 00 1C */	beq lbl_80C70D20
/* 80C70D08  3C A0 80 C7 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80C70D0C  38 05 23 68 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80C70D10  90 1F 00 00 */	stw r0, 0(r31)
/* 80C70D14  7C 80 07 35 */	extsh. r0, r4
/* 80C70D18  40 81 00 08 */	ble lbl_80C70D20
/* 80C70D1C  4B 65 E0 20 */	b __dl__FPv
lbl_80C70D20:
/* 80C70D20  7F E3 FB 78 */	mr r3, r31
/* 80C70D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C70D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70D2C  7C 08 03 A6 */	mtlr r0
/* 80C70D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70D34  4E 80 00 20 */	blr 

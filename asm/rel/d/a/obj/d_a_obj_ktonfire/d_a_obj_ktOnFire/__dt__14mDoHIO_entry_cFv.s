lbl_8058C630:
/* 8058C630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C634  7C 08 02 A6 */	mflr r0
/* 8058C638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C63C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058C640  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058C644  41 82 00 1C */	beq lbl_8058C660
/* 8058C648  3C A0 80 59 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 8058C64C  38 05 D0 AC */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 8058C650  90 1F 00 00 */	stw r0, 0(r31)
/* 8058C654  7C 80 07 35 */	extsh. r0, r4
/* 8058C658  40 81 00 08 */	ble lbl_8058C660
/* 8058C65C  4B D4 26 E0 */	b __dl__FPv
lbl_8058C660:
/* 8058C660  7F E3 FB 78 */	mr r3, r31
/* 8058C664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C66C  7C 08 03 A6 */	mtlr r0
/* 8058C670  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C674  4E 80 00 20 */	blr 

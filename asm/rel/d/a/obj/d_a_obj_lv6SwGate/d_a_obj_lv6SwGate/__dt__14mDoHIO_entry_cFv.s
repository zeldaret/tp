lbl_80C73FBC:
/* 80C73FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73FC0  7C 08 02 A6 */	mflr r0
/* 80C73FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C73FCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C73FD0  41 82 00 1C */	beq lbl_80C73FEC
/* 80C73FD4  3C A0 80 C7 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80C73FD8  38 05 57 34 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80C73FDC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C73FE0  7C 80 07 35 */	extsh. r0, r4
/* 80C73FE4  40 81 00 08 */	ble lbl_80C73FEC
/* 80C73FE8  4B 65 AD 54 */	b __dl__FPv
lbl_80C73FEC:
/* 80C73FEC  7F E3 FB 78 */	mr r3, r31
/* 80C73FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C73FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73FF8  7C 08 03 A6 */	mtlr r0
/* 80C73FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C74000  4E 80 00 20 */	blr 

lbl_80A0ED80:
/* 80A0ED80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0ED84  7C 08 02 A6 */	mflr r0
/* 80A0ED88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0ED8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0ED90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0ED94  41 82 00 10 */	beq lbl_80A0EDA4
/* 80A0ED98  7C 80 07 35 */	extsh. r0, r4
/* 80A0ED9C  40 81 00 08 */	ble lbl_80A0EDA4
/* 80A0EDA0  4B 8B FF 9C */	b __dl__FPv
lbl_80A0EDA4:
/* 80A0EDA4  7F E3 FB 78 */	mr r3, r31
/* 80A0EDA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0EDAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0EDB0  7C 08 03 A6 */	mtlr r0
/* 80A0EDB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0EDB8  4E 80 00 20 */	blr 

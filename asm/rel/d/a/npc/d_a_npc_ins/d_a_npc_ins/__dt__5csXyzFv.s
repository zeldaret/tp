lbl_80A136AC:
/* 80A136AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A136B0  7C 08 02 A6 */	mflr r0
/* 80A136B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A136B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A136BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A136C0  41 82 00 10 */	beq lbl_80A136D0
/* 80A136C4  7C 80 07 35 */	extsh. r0, r4
/* 80A136C8  40 81 00 08 */	ble lbl_80A136D0
/* 80A136CC  4B 8B B6 70 */	b __dl__FPv
lbl_80A136D0:
/* 80A136D0  7F E3 FB 78 */	mr r3, r31
/* 80A136D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A136D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A136DC  7C 08 03 A6 */	mtlr r0
/* 80A136E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A136E4  4E 80 00 20 */	blr 

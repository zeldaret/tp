lbl_809D919C:
/* 809D919C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D91A0  7C 08 02 A6 */	mflr r0
/* 809D91A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D91A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D91AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D91B0  41 82 00 10 */	beq lbl_809D91C0
/* 809D91B4  7C 80 07 35 */	extsh. r0, r4
/* 809D91B8  40 81 00 08 */	ble lbl_809D91C0
/* 809D91BC  4B 8F 5B 80 */	b __dl__FPv
lbl_809D91C0:
/* 809D91C0  7F E3 FB 78 */	mr r3, r31
/* 809D91C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D91C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D91CC  7C 08 03 A6 */	mtlr r0
/* 809D91D0  38 21 00 10 */	addi r1, r1, 0x10
/* 809D91D4  4E 80 00 20 */	blr 

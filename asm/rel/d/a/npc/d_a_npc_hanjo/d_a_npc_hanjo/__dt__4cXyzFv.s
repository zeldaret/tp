lbl_809FF1E0:
/* 809FF1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FF1E4  7C 08 02 A6 */	mflr r0
/* 809FF1E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FF1EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FF1F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809FF1F4  41 82 00 10 */	beq lbl_809FF204
/* 809FF1F8  7C 80 07 35 */	extsh. r0, r4
/* 809FF1FC  40 81 00 08 */	ble lbl_809FF204
/* 809FF200  4B 8C FB 3D */	bl __dl__FPv
lbl_809FF204:
/* 809FF204  7F E3 FB 78 */	mr r3, r31
/* 809FF208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FF20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FF210  7C 08 03 A6 */	mtlr r0
/* 809FF214  38 21 00 10 */	addi r1, r1, 0x10
/* 809FF218  4E 80 00 20 */	blr 

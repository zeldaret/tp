lbl_80AA071C:
/* 80AA071C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA0720  7C 08 02 A6 */	mflr r0
/* 80AA0724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA072C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA0730  41 82 00 10 */	beq lbl_80AA0740
/* 80AA0734  7C 80 07 35 */	extsh. r0, r4
/* 80AA0738  40 81 00 08 */	ble lbl_80AA0740
/* 80AA073C  4B 82 E6 00 */	b __dl__FPv
lbl_80AA0740:
/* 80AA0740  7F E3 FB 78 */	mr r3, r31
/* 80AA0744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA074C  7C 08 03 A6 */	mtlr r0
/* 80AA0750  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0754  4E 80 00 20 */	blr 

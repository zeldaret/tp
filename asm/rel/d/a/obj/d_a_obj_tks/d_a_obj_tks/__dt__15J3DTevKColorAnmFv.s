lbl_80D0FB78:
/* 80D0FB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0FB7C  7C 08 02 A6 */	mflr r0
/* 80D0FB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0FB84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0FB88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0FB8C  41 82 00 10 */	beq lbl_80D0FB9C
/* 80D0FB90  7C 80 07 35 */	extsh. r0, r4
/* 80D0FB94  40 81 00 08 */	ble lbl_80D0FB9C
/* 80D0FB98  4B 5B F1 A5 */	bl __dl__FPv
lbl_80D0FB9C:
/* 80D0FB9C  7F E3 FB 78 */	mr r3, r31
/* 80D0FBA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0FBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0FBA8  7C 08 03 A6 */	mtlr r0
/* 80D0FBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0FBB0  4E 80 00 20 */	blr 

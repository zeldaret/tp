lbl_805A6F78:
/* 805A6F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6F7C  7C 08 02 A6 */	mflr r0
/* 805A6F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A6F88  7C 7F 1B 78 */	mr r31, r3
/* 805A6F8C  4B A7 1D 54 */	b fopAc_IsActor__FPv
/* 805A6F90  2C 03 00 00 */	cmpwi r3, 0
/* 805A6F94  41 82 00 18 */	beq lbl_805A6FAC
/* 805A6F98  A8 1F 00 08 */	lha r0, 8(r31)
/* 805A6F9C  2C 00 00 BB */	cmpwi r0, 0xbb
/* 805A6FA0  40 82 00 0C */	bne lbl_805A6FAC
/* 805A6FA4  7F E3 FB 78 */	mr r3, r31
/* 805A6FA8  48 00 00 08 */	b lbl_805A6FB0
lbl_805A6FAC:
/* 805A6FAC  38 60 00 00 */	li r3, 0
lbl_805A6FB0:
/* 805A6FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A6FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6FB8  7C 08 03 A6 */	mtlr r0
/* 805A6FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6FC0  4E 80 00 20 */	blr 

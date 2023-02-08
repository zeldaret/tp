lbl_80945C8C:
/* 80945C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80945C90  7C 08 02 A6 */	mflr r0
/* 80945C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80945C98  7C 60 1B 78 */	mr r0, r3
/* 80945C9C  2C 04 00 00 */	cmpwi r4, 0
/* 80945CA0  40 82 00 24 */	bne lbl_80945CC4
/* 80945CA4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80945CA8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80945CAC  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80945CB0  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80945CB4  28 03 00 00 */	cmplwi r3, 0
/* 80945CB8  41 82 00 0C */	beq lbl_80945CC4
/* 80945CBC  7C 04 03 78 */	mr r4, r0
/* 80945CC0  48 00 0B AD */	bl jntNodeCB__8daMyna_cFP8J3DJointP8J3DModel
lbl_80945CC4:
/* 80945CC4  38 60 00 01 */	li r3, 1
/* 80945CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80945CCC  7C 08 03 A6 */	mtlr r0
/* 80945CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80945CD4  4E 80 00 20 */	blr 

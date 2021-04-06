lbl_80A6BB1C:
/* 80A6BB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6BB20  7C 08 02 A6 */	mflr r0
/* 80A6BB24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6BB28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6BB2C  7C 7F 1B 78 */	mr r31, r3
/* 80A6BB30  2C 04 00 01 */	cmpwi r4, 1
/* 80A6BB34  40 82 00 30 */	bne lbl_80A6BB64
/* 80A6BB38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6BB3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6BB40  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 80A6BB44  7C 00 00 D0 */	neg r0, r0
/* 80A6BB48  7C 04 07 34 */	extsh r4, r0
/* 80A6BB4C  4B 5A 08 E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A6BB50  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80A6BB54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6BB58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6BB5C  4B 5A 09 71 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A6BB60  48 00 00 34 */	b lbl_80A6BB94
lbl_80A6BB64:
/* 80A6BB64  2C 04 00 04 */	cmpwi r4, 4
/* 80A6BB68  40 82 00 2C */	bne lbl_80A6BB94
/* 80A6BB6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6BB70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6BB74  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80A6BB78  7C 00 00 D0 */	neg r0, r0
/* 80A6BB7C  7C 04 07 34 */	extsh r4, r0
/* 80A6BB80  4B 5A 08 B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A6BB84  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80A6BB88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6BB8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6BB90  4B 5A 09 3D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80A6BB94:
/* 80A6BB94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6BB98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6BB9C  7C 08 03 A6 */	mtlr r0
/* 80A6BBA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6BBA4  4E 80 00 20 */	blr 

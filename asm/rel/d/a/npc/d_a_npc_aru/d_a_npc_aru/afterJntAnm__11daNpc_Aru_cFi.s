lbl_80952B00:
/* 80952B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80952B04  7C 08 02 A6 */	mflr r0
/* 80952B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80952B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80952B10  7C 7F 1B 78 */	mr r31, r3
/* 80952B14  2C 04 00 01 */	cmpwi r4, 1
/* 80952B18  40 82 00 30 */	bne lbl_80952B48
/* 80952B1C  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80952B20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80952B24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80952B28  4B 6B 99 0D */	bl mDoMtx_YrotM__FPA4_fs
/* 80952B2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80952B30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80952B34  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80952B38  7C 00 00 D0 */	neg r0, r0
/* 80952B3C  7C 04 07 34 */	extsh r4, r0
/* 80952B40  4B 6B 99 8D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80952B44  48 00 00 2C */	b lbl_80952B70
lbl_80952B48:
/* 80952B48  2C 04 00 04 */	cmpwi r4, 4
/* 80952B4C  40 82 00 24 */	bne lbl_80952B70
/* 80952B50  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80952B54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80952B58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80952B5C  4B 6B 98 D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80952B60  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80952B64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80952B68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80952B6C  4B 6B 99 61 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80952B70:
/* 80952B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80952B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80952B78  7C 08 03 A6 */	mtlr r0
/* 80952B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80952B80  4E 80 00 20 */	blr 

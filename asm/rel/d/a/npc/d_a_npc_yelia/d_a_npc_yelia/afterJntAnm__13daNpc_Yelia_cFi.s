lbl_80B4E068:
/* 80B4E068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4E06C  7C 08 02 A6 */	mflr r0
/* 80B4E070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4E074  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4E078  7C 7F 1B 78 */	mr r31, r3
/* 80B4E07C  2C 04 00 01 */	cmpwi r4, 1
/* 80B4E080  40 82 00 30 */	bne lbl_80B4E0B0
/* 80B4E084  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B4E088  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B4E08C  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 80B4E090  7C 00 00 D0 */	neg r0, r0
/* 80B4E094  7C 04 07 34 */	extsh r4, r0
/* 80B4E098  4B 4B E3 9C */	b mDoMtx_YrotM__FPA4_fs
/* 80B4E09C  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80B4E0A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B4E0A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B4E0A8  4B 4B E4 24 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B4E0AC  48 00 00 34 */	b lbl_80B4E0E0
lbl_80B4E0B0:
/* 80B4E0B0  2C 04 00 04 */	cmpwi r4, 4
/* 80B4E0B4  40 82 00 2C */	bne lbl_80B4E0E0
/* 80B4E0B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B4E0BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B4E0C0  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80B4E0C4  7C 00 00 D0 */	neg r0, r0
/* 80B4E0C8  7C 04 07 34 */	extsh r4, r0
/* 80B4E0CC  4B 4B E3 68 */	b mDoMtx_YrotM__FPA4_fs
/* 80B4E0D0  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80B4E0D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B4E0D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B4E0DC  4B 4B E3 F0 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B4E0E0:
/* 80B4E0E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4E0E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4E0E8  7C 08 03 A6 */	mtlr r0
/* 80B4E0EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4E0F0  4E 80 00 20 */	blr 

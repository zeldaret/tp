lbl_809BC168:
/* 809BC168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BC16C  7C 08 02 A6 */	mflr r0
/* 809BC170  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BC174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BC178  7C 7F 1B 78 */	mr r31, r3
/* 809BC17C  2C 04 00 01 */	cmpwi r4, 1
/* 809BC180  40 82 00 30 */	bne lbl_809BC1B0
/* 809BC184  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809BC188  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809BC18C  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 809BC190  7C 00 00 D0 */	neg r0, r0
/* 809BC194  7C 04 07 34 */	extsh r4, r0
/* 809BC198  4B 65 02 9C */	b mDoMtx_YrotM__FPA4_fs
/* 809BC19C  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 809BC1A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809BC1A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809BC1A8  4B 65 03 24 */	b mDoMtx_ZrotM__FPA4_fs
/* 809BC1AC  48 00 00 34 */	b lbl_809BC1E0
lbl_809BC1B0:
/* 809BC1B0  2C 04 00 04 */	cmpwi r4, 4
/* 809BC1B4  40 82 00 2C */	bne lbl_809BC1E0
/* 809BC1B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809BC1BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809BC1C0  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 809BC1C4  7C 00 00 D0 */	neg r0, r0
/* 809BC1C8  7C 04 07 34 */	extsh r4, r0
/* 809BC1CC  4B 65 02 68 */	b mDoMtx_YrotM__FPA4_fs
/* 809BC1D0  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 809BC1D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809BC1D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809BC1DC  4B 65 02 F0 */	b mDoMtx_ZrotM__FPA4_fs
lbl_809BC1E0:
/* 809BC1E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BC1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BC1E8  7C 08 03 A6 */	mtlr r0
/* 809BC1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 809BC1F0  4E 80 00 20 */	blr 

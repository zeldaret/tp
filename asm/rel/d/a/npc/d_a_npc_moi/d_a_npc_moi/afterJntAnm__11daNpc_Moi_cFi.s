lbl_80A75160:
/* 80A75160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A75164  7C 08 02 A6 */	mflr r0
/* 80A75168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7516C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A75170  7C 7F 1B 78 */	mr r31, r3
/* 80A75174  2C 04 00 01 */	cmpwi r4, 1
/* 80A75178  40 82 00 30 */	bne lbl_80A751A8
/* 80A7517C  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80A75180  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A75184  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A75188  4B 59 72 AC */	b mDoMtx_YrotM__FPA4_fs
/* 80A7518C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A75190  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A75194  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80A75198  7C 00 00 D0 */	neg r0, r0
/* 80A7519C  7C 04 07 34 */	extsh r4, r0
/* 80A751A0  4B 59 73 2C */	b mDoMtx_ZrotM__FPA4_fs
/* 80A751A4  48 00 00 2C */	b lbl_80A751D0
lbl_80A751A8:
/* 80A751A8  2C 04 00 04 */	cmpwi r4, 4
/* 80A751AC  40 82 00 24 */	bne lbl_80A751D0
/* 80A751B0  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80A751B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A751B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A751BC  4B 59 72 78 */	b mDoMtx_YrotM__FPA4_fs
/* 80A751C0  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80A751C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A751C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A751CC  4B 59 73 00 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80A751D0:
/* 80A751D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A751D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A751D8  7C 08 03 A6 */	mtlr r0
/* 80A751DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A751E0  4E 80 00 20 */	blr 

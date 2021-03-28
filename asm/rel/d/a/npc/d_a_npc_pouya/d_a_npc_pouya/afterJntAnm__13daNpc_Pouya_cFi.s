lbl_80AAEDB8:
/* 80AAEDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAEDBC  7C 08 02 A6 */	mflr r0
/* 80AAEDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAEDC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAEDC8  7C 7F 1B 78 */	mr r31, r3
/* 80AAEDCC  2C 04 00 01 */	cmpwi r4, 1
/* 80AAEDD0  40 82 00 30 */	bne lbl_80AAEE00
/* 80AAEDD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AAEDD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AAEDDC  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 80AAEDE0  7C 00 00 D0 */	neg r0, r0
/* 80AAEDE4  7C 04 07 34 */	extsh r4, r0
/* 80AAEDE8  4B 55 D6 4C */	b mDoMtx_YrotM__FPA4_fs
/* 80AAEDEC  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80AAEDF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AAEDF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AAEDF8  4B 55 D6 D4 */	b mDoMtx_ZrotM__FPA4_fs
/* 80AAEDFC  48 00 00 34 */	b lbl_80AAEE30
lbl_80AAEE00:
/* 80AAEE00  2C 04 00 04 */	cmpwi r4, 4
/* 80AAEE04  40 82 00 2C */	bne lbl_80AAEE30
/* 80AAEE08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AAEE0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AAEE10  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80AAEE14  7C 00 00 D0 */	neg r0, r0
/* 80AAEE18  7C 04 07 34 */	extsh r4, r0
/* 80AAEE1C  4B 55 D6 18 */	b mDoMtx_YrotM__FPA4_fs
/* 80AAEE20  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80AAEE24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AAEE28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AAEE2C  4B 55 D6 A0 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80AAEE30:
/* 80AAEE30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAEE34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAEE38  7C 08 03 A6 */	mtlr r0
/* 80AAEE3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAEE40  4E 80 00 20 */	blr 

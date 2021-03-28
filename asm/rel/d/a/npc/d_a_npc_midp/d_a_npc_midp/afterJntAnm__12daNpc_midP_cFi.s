lbl_80A717D4:
/* 80A717D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A717D8  7C 08 02 A6 */	mflr r0
/* 80A717DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A717E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A717E4  7C 7F 1B 78 */	mr r31, r3
/* 80A717E8  2C 04 00 02 */	cmpwi r4, 2
/* 80A717EC  40 82 00 30 */	bne lbl_80A7181C
/* 80A717F0  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80A717F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A717F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A717FC  4B 59 AC 38 */	b mDoMtx_YrotM__FPA4_fs
/* 80A71800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A71804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A71808  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80A7180C  7C 00 00 D0 */	neg r0, r0
/* 80A71810  7C 04 07 34 */	extsh r4, r0
/* 80A71814  4B 59 AC B8 */	b mDoMtx_ZrotM__FPA4_fs
/* 80A71818  48 00 00 34 */	b lbl_80A7184C
lbl_80A7181C:
/* 80A7181C  2C 04 00 04 */	cmpwi r4, 4
/* 80A71820  40 82 00 2C */	bne lbl_80A7184C
/* 80A71824  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80A71828  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A7182C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A71830  4B 59 AC 04 */	b mDoMtx_YrotM__FPA4_fs
/* 80A71834  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A71838  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A7183C  A8 1F 0D 08 */	lha r0, 0xd08(r31)
/* 80A71840  7C 00 00 D0 */	neg r0, r0
/* 80A71844  7C 04 07 34 */	extsh r4, r0
/* 80A71848  4B 59 AC 84 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80A7184C:
/* 80A7184C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A71850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A71854  7C 08 03 A6 */	mtlr r0
/* 80A71858  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7185C  4E 80 00 20 */	blr 

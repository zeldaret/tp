lbl_80A987F4:
/* 80A987F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A987F8  7C 08 02 A6 */	mflr r0
/* 80A987FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A98800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A98804  7C 7F 1B 78 */	mr r31, r3
/* 80A98808  2C 04 00 01 */	cmpwi r4, 1
/* 80A9880C  40 82 00 28 */	bne lbl_80A98834
/* 80A98810  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80A98814  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A98818  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A9881C  4B 57 3C 18 */	b mDoMtx_YrotM__FPA4_fs
/* 80A98820  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80A98824  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A98828  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A9882C  4B 57 3C A0 */	b mDoMtx_ZrotM__FPA4_fs
/* 80A98830  48 00 00 2C */	b lbl_80A9885C
lbl_80A98834:
/* 80A98834  2C 04 00 04 */	cmpwi r4, 4
/* 80A98838  40 82 00 24 */	bne lbl_80A9885C
/* 80A9883C  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80A98840  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A98844  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A98848  4B 57 3B EC */	b mDoMtx_YrotM__FPA4_fs
/* 80A9884C  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80A98850  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A98854  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A98858  4B 57 3C 74 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80A9885C:
/* 80A9885C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A98860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A98864  7C 08 03 A6 */	mtlr r0
/* 80A98868  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9886C  4E 80 00 20 */	blr 

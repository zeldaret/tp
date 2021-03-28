lbl_8059417C:
/* 8059417C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594180  7C 08 02 A6 */	mflr r0
/* 80594184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059418C  7C 7F 1B 78 */	mr r31, r3
/* 80594190  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 80594194  4B A7 8B D0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80594198  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059419C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805941A0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805941A4  4B A7 82 90 */	b mDoMtx_YrotM__FPA4_fs
/* 805941A8  3C 60 80 59 */	lis r3, M_attr__16daObjNameplate_c@ha
/* 805941AC  38 63 4E 74 */	addi r3, r3, M_attr__16daObjNameplate_c@l
/* 805941B0  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 805941B4  2C 00 00 01 */	cmpwi r0, 1
/* 805941B8  41 82 00 38 */	beq lbl_805941F0
/* 805941BC  40 80 00 54 */	bge lbl_80594210
/* 805941C0  2C 00 00 00 */	cmpwi r0, 0
/* 805941C4  40 80 00 08 */	bge lbl_805941CC
/* 805941C8  48 00 00 48 */	b lbl_80594210
lbl_805941CC:
/* 805941CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805941D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805941D4  A8 9F 07 24 */	lha r4, 0x724(r31)
/* 805941D8  4B A7 82 F4 */	b mDoMtx_ZrotM__FPA4_fs
/* 805941DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805941E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805941E4  A8 9F 07 22 */	lha r4, 0x722(r31)
/* 805941E8  4B A7 82 4C */	b mDoMtx_YrotM__FPA4_fs
/* 805941EC  48 00 00 24 */	b lbl_80594210
lbl_805941F0:
/* 805941F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805941F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805941F8  A8 9F 07 24 */	lha r4, 0x724(r31)
/* 805941FC  4B A7 82 D0 */	b mDoMtx_ZrotM__FPA4_fs
/* 80594200  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80594204  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80594208  A8 9F 07 22 */	lha r4, 0x722(r31)
/* 8059420C  4B A7 82 28 */	b mDoMtx_YrotM__FPA4_fs
lbl_80594210:
/* 80594210  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80594214  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80594218  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8059421C  38 84 00 24 */	addi r4, r4, 0x24
/* 80594220  4B DB 22 90 */	b PSMTXCopy
/* 80594224  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80594228  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059422C  38 9F 05 74 */	addi r4, r31, 0x574
/* 80594230  4B DB 22 80 */	b PSMTXCopy
/* 80594234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059423C  7C 08 03 A6 */	mtlr r0
/* 80594240  38 21 00 10 */	addi r1, r1, 0x10
/* 80594244  4E 80 00 20 */	blr 

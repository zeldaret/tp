lbl_80538028:
/* 80538028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053802C  7C 08 02 A6 */	mflr r0
/* 80538030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80538034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80538038  7C 7F 1B 78 */	mr r31, r3
/* 8053803C  2C 04 00 01 */	cmpwi r4, 1
/* 80538040  40 82 00 28 */	bne lbl_80538068
/* 80538044  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80538048  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8053804C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80538050  4B AD 43 E5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80538054  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80538058  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8053805C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80538060  4B AD 44 6D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80538064  48 00 00 2C */	b lbl_80538090
lbl_80538068:
/* 80538068  2C 04 00 04 */	cmpwi r4, 4
/* 8053806C  40 82 00 24 */	bne lbl_80538090
/* 80538070  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80538074  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80538078  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8053807C  4B AD 43 B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80538080  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80538084  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80538088  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8053808C  4B AD 44 41 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80538090:
/* 80538090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80538094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80538098  7C 08 03 A6 */	mtlr r0
/* 8053809C  38 21 00 10 */	addi r1, r1, 0x10
/* 805380A0  4E 80 00 20 */	blr 

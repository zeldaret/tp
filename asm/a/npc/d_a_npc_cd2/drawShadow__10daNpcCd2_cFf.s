lbl_80158F6C:
/* 80158F6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80158F70  7C 08 02 A6 */	mflr r0
/* 80158F74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80158F78  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80158F7C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80158F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80158F84  7C 7F 1B 78 */	mr r31, r3
/* 80158F88  FF E0 08 90 */	fmr f31, f1
/* 80158F8C  88 03 0A C6 */	lbz r0, 0xac6(r3)
/* 80158F90  28 00 00 00 */	cmplwi r0, 0
/* 80158F94  41 82 00 18 */	beq lbl_80158FAC
/* 80158F98  48 00 64 8D */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 80158F9C  2C 03 00 00 */	cmpwi r3, 0
/* 80158FA0  40 82 00 0C */	bne lbl_80158FAC
/* 80158FA4  38 60 00 01 */	li r3, 1
/* 80158FA8  48 00 00 2C */	b lbl_80158FD4
lbl_80158FAC:
/* 80158FAC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80158FB0  C0 3F 06 D0 */	lfs f1, 0x6d0(r31)
/* 80158FB4  FC 40 F8 90 */	fmr f2, f31
/* 80158FB8  38 9F 07 28 */	addi r4, r31, 0x728
/* 80158FBC  38 A0 00 00 */	li r5, 0
/* 80158FC0  C0 62 9A E0 */	lfs f3, lit_4050(r2)
/* 80158FC4  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80158FC8  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80158FCC  4B ED 40 E9 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 80158FD0  38 60 00 01 */	li r3, 1
lbl_80158FD4:
/* 80158FD4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80158FD8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80158FDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80158FE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80158FE4  7C 08 03 A6 */	mtlr r0
/* 80158FE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80158FEC  4E 80 00 20 */	blr 

lbl_80D14264:
/* 80D14264  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D14268  7C 08 02 A6 */	mflr r0
/* 80D1426C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D14270  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D14274  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D14278  7C 7E 1B 78 */	mr r30, r3
/* 80D1427C  7C 9F 23 78 */	mr r31, r4
/* 80D14280  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D14284  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D14288  C0 24 00 08 */	lfs f1, 8(r4)
/* 80D1428C  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80D14290  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 80D14294  4B 63 26 55 */	bl PSMTXTrans
/* 80D14298  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D1429C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D142A0  A8 9F 00 22 */	lha r4, 0x22(r31)
/* 80D142A4  4B 2F 81 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D142A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D142AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D142B0  A8 9F 00 20 */	lha r4, 0x20(r31)
/* 80D142B4  4B 2F 80 E9 */	bl mDoMtx_XrotM__FPA4_fs
/* 80D142B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D142BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D142C0  A8 9F 00 24 */	lha r4, 0x24(r31)
/* 80D142C4  4B 2F 82 09 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80D142C8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D142CC  3C 60 80 D1 */	lis r3, lit_3806@ha /* 0x80D155E8@ha */
/* 80D142D0  C0 43 55 E8 */	lfs f2, lit_3806@l(r3)  /* 0x80D155E8@l */
/* 80D142D4  FC 60 08 90 */	fmr f3, f1
/* 80D142D8  4B 2F 8B 61 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80D142DC  88 1E 05 77 */	lbz r0, 0x577(r30)
/* 80D142E0  28 00 00 00 */	cmplwi r0, 0
/* 80D142E4  40 82 00 74 */	bne lbl_80D14358
/* 80D142E8  88 1F 00 34 */	lbz r0, 0x34(r31)
/* 80D142EC  2C 00 00 01 */	cmpwi r0, 1
/* 80D142F0  40 82 00 68 */	bne lbl_80D14358
/* 80D142F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D142F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D142FC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80D14300  38 84 00 24 */	addi r4, r4, 0x24
/* 80D14304  4B 63 21 AD */	bl PSMTXCopy
/* 80D14308  38 61 00 08 */	addi r3, r1, 8
/* 80D1430C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D14310  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D14314  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D14318  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D1431C  38 BF 00 08 */	addi r5, r31, 8
/* 80D14320  4B 55 28 15 */	bl __mi__4cXyzCFRC3Vec
/* 80D14324  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D14328  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D1432C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D14330  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D14334  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D14338  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D1433C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D14340  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D14344  38 9F 00 40 */	addi r4, r31, 0x40
/* 80D14348  4B 63 21 69 */	bl PSMTXCopy
/* 80D1434C  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80D14350  4B 36 76 71 */	bl Move__4dBgWFv
/* 80D14354  48 00 00 18 */	b lbl_80D1436C
lbl_80D14358:
/* 80D14358  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D1435C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D14360  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D14364  38 84 00 24 */	addi r4, r4, 0x24
/* 80D14368  4B 63 21 49 */	bl PSMTXCopy
lbl_80D1436C:
/* 80D1436C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D14370  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D14374  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D14378  7C 08 03 A6 */	mtlr r0
/* 80D1437C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D14380  4E 80 00 20 */	blr 

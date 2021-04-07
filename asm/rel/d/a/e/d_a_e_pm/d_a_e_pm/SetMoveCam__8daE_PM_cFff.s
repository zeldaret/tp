lbl_80743524:
/* 80743524  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80743528  7C 08 02 A6 */	mflr r0
/* 8074352C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80743530  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80743534  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80743538  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8074353C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80743540  7C 7E 1B 78 */	mr r30, r3
/* 80743544  FF E0 08 90 */	fmr f31, f1
/* 80743548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074354C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80743550  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80743554  7C 00 07 74 */	extsb r0, r0
/* 80743558  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8074355C  7C 63 02 14 */	add r3, r3, r0
/* 80743560  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 80743564  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80743568  38 9E 06 A4 */	addi r4, r30, 0x6a4
/* 8074356C  3C A0 80 75 */	lis r5, lit_3911@ha /* 0x8074BF40@ha */
/* 80743570  C0 65 BF 40 */	lfs f3, lit_3911@l(r5)  /* 0x8074BF40@l */
/* 80743574  4B B2 C5 45 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80743578  38 7E 06 98 */	addi r3, r30, 0x698
/* 8074357C  38 9E 06 B0 */	addi r4, r30, 0x6b0
/* 80743580  FC 20 F8 90 */	fmr f1, f31
/* 80743584  3C A0 80 75 */	lis r5, lit_3910@ha /* 0x8074BF3C@ha */
/* 80743588  C0 45 BF 3C */	lfs f2, lit_3910@l(r5)  /* 0x8074BF3C@l */
/* 8074358C  3C A0 80 75 */	lis r5, lit_3911@ha /* 0x8074BF40@ha */
/* 80743590  C0 65 BF 40 */	lfs f3, lit_3911@l(r5)  /* 0x8074BF40@l */
/* 80743594  4B B2 C5 25 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80743598  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8074359C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807435A0  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807435A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807435A8  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807435AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807435B0  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 807435B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 807435B8  C0 1E 06 9C */	lfs f0, 0x69c(r30)
/* 807435BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807435C0  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 807435C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807435C8  38 7F 02 48 */	addi r3, r31, 0x248
/* 807435CC  38 81 00 14 */	addi r4, r1, 0x14
/* 807435D0  38 A1 00 08 */	addi r5, r1, 8
/* 807435D4  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 807435D8  38 C0 00 00 */	li r6, 0
/* 807435DC  4B A3 D5 05 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 807435E0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807435E4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807435E8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807435EC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807435F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807435F4  7C 08 03 A6 */	mtlr r0
/* 807435F8  38 21 00 40 */	addi r1, r1, 0x40
/* 807435FC  4E 80 00 20 */	blr 

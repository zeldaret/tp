lbl_80BF24C4:
/* 80BF24C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BF24C8  7C 08 02 A6 */	mflr r0
/* 80BF24CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BF24D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BF24D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BF24D8  7C 7E 1B 78 */	mr r30, r3
/* 80BF24DC  3C 80 80 BF */	lis r4, lit_3647@ha /* 0x80BF2B48@ha */
/* 80BF24E0  3B E4 2B 48 */	addi r31, r4, lit_3647@l /* 0x80BF2B48@l */
/* 80BF24E4  A8 03 05 7A */	lha r0, 0x57a(r3)
/* 80BF24E8  2C 00 00 00 */	cmpwi r0, 0
/* 80BF24EC  41 82 00 08 */	beq lbl_80BF24F4
/* 80BF24F0  48 00 00 08 */	b lbl_80BF24F8
lbl_80BF24F4:
/* 80BF24F4  4B FF FD B9 */	bl fw_float__FP12obj_fw_class
lbl_80BF24F8:
/* 80BF24F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF24FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF2500  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BF2504  C0 7E 05 88 */	lfs f3, 0x588(r30)
/* 80BF2508  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80BF250C  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 80BF2510  EC 02 00 2A */	fadds f0, f2, f0
/* 80BF2514  EC 43 00 2A */	fadds f2, f3, f0
/* 80BF2518  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BF251C  4B 75 43 CD */	bl PSMTXTrans
/* 80BF2520  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF2524  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF2528  A8 9E 05 A0 */	lha r4, 0x5a0(r30)
/* 80BF252C  4B 41 9F 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BF2530  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF2534  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF2538  A8 9E 05 A2 */	lha r4, 0x5a2(r30)
/* 80BF253C  4B 41 9E 61 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BF2540  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF2544  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF2548  A8 1E 05 A0 */	lha r0, 0x5a0(r30)
/* 80BF254C  7C 00 00 D0 */	neg r0, r0
/* 80BF2550  7C 04 07 34 */	extsh r4, r0
/* 80BF2554  4B 41 9E E1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BF2558  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF255C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF2560  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80BF2564  A8 1E 05 A4 */	lha r0, 0x5a4(r30)
/* 80BF2568  7C 04 02 14 */	add r0, r4, r0
/* 80BF256C  7C 04 07 34 */	extsh r4, r0
/* 80BF2570  4B 41 9E 2D */	bl mDoMtx_XrotM__FPA4_fs
/* 80BF2574  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF2578  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF257C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BF2580  4B 41 9E B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BF2584  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF2588  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF258C  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 80BF2590  4B 41 9F 3D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80BF2594  3C 60 80 BF */	lis r3, l_HIO@ha /* 0x80BF2C30@ha */
/* 80BF2598  38 63 2C 30 */	addi r3, r3, l_HIO@l /* 0x80BF2C30@l */
/* 80BF259C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80BF25A0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80BF25A4  FC 60 08 90 */	fmr f3, f1
/* 80BF25A8  4B 41 A8 91 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80BF25AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF25B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF25B4  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80BF25B8  38 84 00 24 */	addi r4, r4, 0x24
/* 80BF25BC  4B 75 3E F5 */	bl PSMTXCopy
/* 80BF25C0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BF25C4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BF25C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BF25CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BF25D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF25D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF25D8  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF25DC  38 BE 05 A8 */	addi r5, r30, 0x5a8
/* 80BF25E0  4B 75 47 8D */	bl PSMTXMultVec
/* 80BF25E4  C0 7E 05 A8 */	lfs f3, 0x5a8(r30)
/* 80BF25E8  D0 61 00 08 */	stfs f3, 8(r1)
/* 80BF25EC  C0 5E 05 AC */	lfs f2, 0x5ac(r30)
/* 80BF25F0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80BF25F4  C0 3E 05 B0 */	lfs f1, 0x5b0(r30)
/* 80BF25F8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BF25FC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BF2600  EC 02 00 2A */	fadds f0, f2, f0
/* 80BF2604  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BF2608  D0 7E 05 38 */	stfs f3, 0x538(r30)
/* 80BF260C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BF2610  D0 3E 05 40 */	stfs f1, 0x540(r30)
/* 80BF2614  D0 7E 05 50 */	stfs f3, 0x550(r30)
/* 80BF2618  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80BF261C  D0 3E 05 58 */	stfs f1, 0x558(r30)
/* 80BF2620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF2624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF2628  38 9E 05 B8 */	addi r4, r30, 0x5b8
/* 80BF262C  4B 75 3E 85 */	bl PSMTXCopy
/* 80BF2630  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80BF2634  4B 48 93 8D */	bl Move__4dBgWFv
/* 80BF2638  A8 1E 05 92 */	lha r0, 0x592(r30)
/* 80BF263C  2C 00 00 00 */	cmpwi r0, 0
/* 80BF2640  40 82 00 18 */	bne lbl_80BF2658
/* 80BF2644  38 7E 05 A2 */	addi r3, r30, 0x5a2
/* 80BF2648  38 80 00 00 */	li r4, 0
/* 80BF264C  38 A0 00 04 */	li r5, 4
/* 80BF2650  38 C0 00 10 */	li r6, 0x10
/* 80BF2654  4B 67 DF B5 */	bl cLib_addCalcAngleS2__FPssss
lbl_80BF2658:
/* 80BF2658  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BF265C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BF2660  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BF2664  7C 08 03 A6 */	mtlr r0
/* 80BF2668  38 21 00 30 */	addi r1, r1, 0x30
/* 80BF266C  4E 80 00 20 */	blr 

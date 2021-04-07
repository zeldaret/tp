lbl_80BE94E4:
/* 80BE94E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BE94E8  7C 08 02 A6 */	mflr r0
/* 80BE94EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BE94F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BE94F4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BE94F8  7C 7E 1B 78 */	mr r30, r3
/* 80BE94FC  3C 80 80 BF */	lis r4, lit_3780@ha /* 0x80BE9AA0@ha */
/* 80BE9500  3B E4 9A A0 */	addi r31, r4, lit_3780@l /* 0x80BE9AA0@l */
/* 80BE9504  48 00 01 0D */	bl action__14daObjFPillar_cFv
/* 80BE9508  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80BE950C  D0 1E 09 3C */	stfs f0, 0x93c(r30)
/* 80BE9510  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80BE9514  D0 1E 09 44 */	stfs f0, 0x944(r30)
/* 80BE9518  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BE951C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BE9520  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80BE9524  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BE9528  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BE952C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BE9530  C0 1E 09 40 */	lfs f0, 0x940(r30)
/* 80BE9534  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BE9538  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BE953C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BE9540  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE9544  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE9548  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80BE954C  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80BE9550  A8 DE 04 E0 */	lha r6, 0x4e0(r30)
/* 80BE9554  4B 42 2C B5 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80BE9558  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE955C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE9560  38 81 00 14 */	addi r4, r1, 0x14
/* 80BE9564  7C 85 23 78 */	mr r5, r4
/* 80BE9568  4B 75 D8 05 */	bl PSMTXMultVec
/* 80BE956C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BE9570  D0 1E 09 54 */	stfs f0, 0x954(r30)
/* 80BE9574  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BE9578  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80BE957C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BE9580  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 80BE9584  38 61 00 08 */	addi r3, r1, 8
/* 80BE9588  38 81 00 14 */	addi r4, r1, 0x14
/* 80BE958C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BE9590  4B 67 D5 55 */	bl __pl__4cXyzCFRC3Vec
/* 80BE9594  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BE9598  D0 1E 09 60 */	stfs f0, 0x960(r30)
/* 80BE959C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BE95A0  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80BE95A4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BE95A8  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 80BE95AC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BE95B0  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80BE95B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BE95B8  D0 1E 09 6C */	stfs f0, 0x96c(r30)
/* 80BE95BC  C0 5E 09 40 */	lfs f2, 0x940(r30)
/* 80BE95C0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BE95C4  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80BE95C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BE95CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BE95D0  40 81 00 24 */	ble lbl_80BE95F4
/* 80BE95D4  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 80BE95D8  38 9E 09 54 */	addi r4, r30, 0x954
/* 80BE95DC  4B 68 5A 61 */	bl Set__8cM3dGCpsFRC9cM3dGCpsS
/* 80BE95E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE95E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE95E8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BE95EC  38 9E 07 C8 */	addi r4, r30, 0x7c8
/* 80BE95F0  4B 67 B5 B9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80BE95F4:
/* 80BE95F4  38 60 00 01 */	li r3, 1
/* 80BE95F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BE95FC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BE9600  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BE9604  7C 08 03 A6 */	mtlr r0
/* 80BE9608  38 21 00 30 */	addi r1, r1, 0x30
/* 80BE960C  4E 80 00 20 */	blr 

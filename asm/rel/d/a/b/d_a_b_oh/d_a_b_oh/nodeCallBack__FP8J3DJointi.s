lbl_8061B75C:
/* 8061B75C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061B760  7C 08 02 A6 */	mflr r0
/* 8061B764  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061B768  39 61 00 20 */	addi r11, r1, 0x20
/* 8061B76C  4B D4 6A 69 */	bl _savegpr_27
/* 8061B770  2C 04 00 00 */	cmpwi r4, 0
/* 8061B774  40 82 01 20 */	bne lbl_8061B894
/* 8061B778  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8061B77C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8061B780  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8061B784  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8061B788  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8061B78C  28 1C 00 00 */	cmplwi r28, 0
/* 8061B790  41 82 01 04 */	beq lbl_8061B894
/* 8061B794  80 1C 0C A8 */	lwz r0, 0xca8(r28)
/* 8061B798  7C 1F 00 00 */	cmpw r31, r0
/* 8061B79C  41 80 00 F8 */	blt lbl_8061B894
/* 8061B7A0  2C 1F 00 1D */	cmpwi r31, 0x1d
/* 8061B7A4  41 81 00 F0 */	bgt lbl_8061B894
/* 8061B7A8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8061B7AC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8061B7B0  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8061B7B4  7C 60 EA 14 */	add r3, r0, r29
/* 8061B7B8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8061B7BC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8061B7C0  80 84 00 00 */	lwz r4, 0(r4)
/* 8061B7C4  4B D2 AC ED */	bl PSMTXCopy
/* 8061B7C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8061B7CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8061B7D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8061B7D4  1F 7F 00 06 */	mulli r27, r31, 6
/* 8061B7D8  7C BC DA 14 */	add r5, r28, r27
/* 8061B7DC  A8 85 06 1E */	lha r4, 0x61e(r5)
/* 8061B7E0  A8 05 07 86 */	lha r0, 0x786(r5)
/* 8061B7E4  7C 04 02 14 */	add r0, r4, r0
/* 8061B7E8  7C 04 07 34 */	extsh r4, r0
/* 8061B7EC  4B 9F 0C 49 */	bl mDoMtx_YrotM__FPA4_fs
/* 8061B7F0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8061B7F4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8061B7F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8061B7FC  7C BC DA 14 */	add r5, r28, r27
/* 8061B800  A8 85 06 1C */	lha r4, 0x61c(r5)
/* 8061B804  A8 05 07 84 */	lha r0, 0x784(r5)
/* 8061B808  7C 04 02 14 */	add r0, r4, r0
/* 8061B80C  7C 04 07 34 */	extsh r4, r0
/* 8061B810  4B 9F 0C BD */	bl mDoMtx_ZrotM__FPA4_fs
/* 8061B814  3C 60 80 62 */	lis r3, lit_3692@ha /* 0x8061D9DC@ha */
/* 8061B818  C0 23 D9 DC */	lfs f1, lit_3692@l(r3)  /* 0x8061D9DC@l */
/* 8061B81C  C0 1C 06 18 */	lfs f0, 0x618(r28)
/* 8061B820  EC 21 00 2A */	fadds f1, f1, f0
/* 8061B824  3C 60 80 62 */	lis r3, lit_3650@ha /* 0x8061D9D4@ha */
/* 8061B828  C0 43 D9 D4 */	lfs f2, lit_3650@l(r3)  /* 0x8061D9D4@l */
/* 8061B82C  FC 60 10 90 */	fmr f3, f2
/* 8061B830  38 60 00 01 */	li r3, 1
/* 8061B834  4B C5 56 29 */	bl MtxTrans__FfffUc
/* 8061B838  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8061B83C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8061B840  80 63 00 00 */	lwz r3, 0(r3)
/* 8061B844  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8061B848  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8061B84C  4B D2 AC 65 */	bl PSMTXCopy
/* 8061B850  57 E0 10 3A */	slwi r0, r31, 2
/* 8061B854  7C 7C 02 14 */	add r3, r28, r0
/* 8061B858  C0 23 08 EC */	lfs f1, 0x8ec(r3)
/* 8061B85C  C0 03 09 DC */	lfs f0, 0x9dc(r3)
/* 8061B860  EC 41 00 2A */	fadds f2, f1, f0
/* 8061B864  3C 60 80 62 */	lis r3, lit_3650@ha /* 0x8061D9D4@ha */
/* 8061B868  C0 23 D9 D4 */	lfs f1, lit_3650@l(r3)  /* 0x8061D9D4@l */
/* 8061B86C  FC 60 10 90 */	fmr f3, f2
/* 8061B870  38 60 00 01 */	li r3, 1
/* 8061B874  4B C5 56 31 */	bl MtxScale__FfffUc
/* 8061B878  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8061B87C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8061B880  80 63 00 00 */	lwz r3, 0(r3)
/* 8061B884  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8061B888  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8061B88C  7C 80 EA 14 */	add r4, r0, r29
/* 8061B890  4B D2 AC 21 */	bl PSMTXCopy
lbl_8061B894:
/* 8061B894  38 60 00 01 */	li r3, 1
/* 8061B898  39 61 00 20 */	addi r11, r1, 0x20
/* 8061B89C  4B D4 69 85 */	bl _restgpr_27
/* 8061B8A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061B8A4  7C 08 03 A6 */	mtlr r0
/* 8061B8A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8061B8AC  4E 80 00 20 */	blr 

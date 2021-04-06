lbl_806A27A8:
/* 806A27A8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806A27AC  7C 08 02 A6 */	mflr r0
/* 806A27B0  90 01 00 94 */	stw r0, 0x94(r1)
/* 806A27B4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 806A27B8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 806A27BC  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 806A27C0  93 C1 00 78 */	stw r30, 0x78(r1)
/* 806A27C4  7C 7E 1B 78 */	mr r30, r3
/* 806A27C8  FF E0 08 90 */	fmr f31, f1
/* 806A27CC  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A27D0  3B E3 71 C4 */	addi r31, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A27D4  38 61 00 20 */	addi r3, r1, 0x20
/* 806A27D8  4B 9D 4D A5 */	bl __ct__11dBgS_GndChkFv
/* 806A27DC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A27E0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A27E4  80 63 00 00 */	lwz r3, 0(r3)
/* 806A27E8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 806A27EC  4B 96 9B F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 806A27F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A27F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A27F8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A27FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A2800  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 806A2804  38 61 00 14 */	addi r3, r1, 0x14
/* 806A2808  38 81 00 08 */	addi r4, r1, 8
/* 806A280C  4B BC E6 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806A2810  38 61 00 08 */	addi r3, r1, 8
/* 806A2814  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806A2818  7C 65 1B 78 */	mr r5, r3
/* 806A281C  4B CA 48 75 */	bl PSVECAdd
/* 806A2820  38 61 00 20 */	addi r3, r1, 0x20
/* 806A2824  38 81 00 08 */	addi r4, r1, 8
/* 806A2828  4B BC 55 01 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 806A282C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A2830  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A2834  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806A2838  38 81 00 20 */	addi r4, r1, 0x20
/* 806A283C  4B 9D 1C 65 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806A2840  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806A2844  EC 20 08 28 */	fsubs f1, f0, f1
/* 806A2848  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806A284C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A2850  40 81 00 20 */	ble lbl_806A2870
/* 806A2854  38 00 00 01 */	li r0, 1
/* 806A2858  98 1E 06 D0 */	stb r0, 0x6d0(r30)
/* 806A285C  38 61 00 20 */	addi r3, r1, 0x20
/* 806A2860  38 80 FF FF */	li r4, -1
/* 806A2864  4B 9D 4D 8D */	bl __dt__11dBgS_GndChkFv
/* 806A2868  38 60 00 01 */	li r3, 1
/* 806A286C  48 00 00 1C */	b lbl_806A2888
lbl_806A2870:
/* 806A2870  38 00 00 00 */	li r0, 0
/* 806A2874  98 1E 06 D0 */	stb r0, 0x6d0(r30)
/* 806A2878  38 61 00 20 */	addi r3, r1, 0x20
/* 806A287C  38 80 FF FF */	li r4, -1
/* 806A2880  4B 9D 4D 71 */	bl __dt__11dBgS_GndChkFv
/* 806A2884  38 60 00 00 */	li r3, 0
lbl_806A2888:
/* 806A2888  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 806A288C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 806A2890  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 806A2894  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 806A2898  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806A289C  7C 08 03 A6 */	mtlr r0
/* 806A28A0  38 21 00 90 */	addi r1, r1, 0x90
/* 806A28A4  4E 80 00 20 */	blr 

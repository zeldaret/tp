lbl_805067A0:
/* 805067A0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805067A4  7C 08 02 A6 */	mflr r0
/* 805067A8  90 01 00 94 */	stw r0, 0x94(r1)
/* 805067AC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805067B0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805067B4  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 805067B8  93 C1 00 78 */	stw r30, 0x78(r1)
/* 805067BC  7C 7E 1B 78 */	mr r30, r3
/* 805067C0  FF E0 08 90 */	fmr f31, f1
/* 805067C4  3C 60 80 52 */	lis r3, lit_4208@ha
/* 805067C8  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 805067CC  38 61 00 20 */	addi r3, r1, 0x20
/* 805067D0  4B B7 0D AC */	b __ct__11dBgS_GndChkFv
/* 805067D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805067D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805067DC  80 63 00 00 */	lwz r3, 0(r3)
/* 805067E0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 805067E4  4B B0 5B F8 */	b mDoMtx_YrotS__FPA4_fs
/* 805067E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805067EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805067F0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805067F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805067F8  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 805067FC  38 61 00 14 */	addi r3, r1, 0x14
/* 80506800  38 81 00 08 */	addi r4, r1, 8
/* 80506804  4B D6 A6 E8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80506808  38 61 00 08 */	addi r3, r1, 8
/* 8050680C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80506810  7C 65 1B 78 */	mr r5, r3
/* 80506814  4B E4 08 7C */	b PSVECAdd
/* 80506818  38 61 00 20 */	addi r3, r1, 0x20
/* 8050681C  38 81 00 08 */	addi r4, r1, 8
/* 80506820  4B D6 15 08 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80506824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80506828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8050682C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80506830  38 81 00 20 */	addi r4, r1, 0x20
/* 80506834  4B B6 DC 6C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80506838  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8050683C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80506840  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80506844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80506848  40 81 00 18 */	ble lbl_80506860
/* 8050684C  38 61 00 20 */	addi r3, r1, 0x20
/* 80506850  38 80 FF FF */	li r4, -1
/* 80506854  4B B7 0D 9C */	b __dt__11dBgS_GndChkFv
/* 80506858  38 60 00 01 */	li r3, 1
/* 8050685C  48 00 00 14 */	b lbl_80506870
lbl_80506860:
/* 80506860  38 61 00 20 */	addi r3, r1, 0x20
/* 80506864  38 80 FF FF */	li r4, -1
/* 80506868  4B B7 0D 88 */	b __dt__11dBgS_GndChkFv
/* 8050686C  38 60 00 00 */	li r3, 0
lbl_80506870:
/* 80506870  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80506874  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80506878  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8050687C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80506880  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80506884  7C 08 03 A6 */	mtlr r0
/* 80506888  38 21 00 90 */	addi r1, r1, 0x90
/* 8050688C  4E 80 00 20 */	blr 

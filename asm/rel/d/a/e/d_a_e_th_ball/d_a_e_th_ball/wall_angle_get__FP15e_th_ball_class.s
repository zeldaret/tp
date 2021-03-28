lbl_807B6594:
/* 807B6594  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 807B6598  7C 08 02 A6 */	mflr r0
/* 807B659C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 807B65A0  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 807B65A4  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 807B65A8  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807B65AC  4B BA BC 28 */	b _savegpr_27
/* 807B65B0  3C 80 80 7B */	lis r4, lit_3746@ha
/* 807B65B4  3B C4 7E B8 */	addi r30, r4, lit_3746@l
/* 807B65B8  7C 7C 1B 78 */	mr r28, r3
/* 807B65BC  38 61 00 44 */	addi r3, r1, 0x44
/* 807B65C0  4B 8C 16 A8 */	b __ct__11dBgS_LinChkFv
/* 807B65C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B65C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B65CC  80 63 00 00 */	lwz r3, 0(r3)
/* 807B65D0  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 807B65D4  4B 85 5E 08 */	b mDoMtx_YrotS__FPA4_fs
/* 807B65D8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B65DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B65E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B65E4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 807B65E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B65EC  38 61 00 20 */	addi r3, r1, 0x20
/* 807B65F0  38 81 00 14 */	addi r4, r1, 0x14
/* 807B65F4  4B AB A8 F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B65F8  38 61 00 14 */	addi r3, r1, 0x14
/* 807B65FC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807B6600  7C 65 1B 78 */	mr r5, r3
/* 807B6604  4B B9 0A 8C */	b PSVECAdd
/* 807B6608  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807B660C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B6610  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B6614  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B6618  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807B661C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B6620  3B 60 00 00 */	li r27, 0
/* 807B6624  3B E0 00 00 */	li r31, 0
/* 807B6628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B662C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B6630  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 807B6634  C3 FE 00 AC */	lfs f31, 0xac(r30)
lbl_807B6638:
/* 807B6638  38 61 00 20 */	addi r3, r1, 0x20
/* 807B663C  3B C1 00 2C */	addi r30, r1, 0x2c
/* 807B6640  7F DE FA 14 */	add r30, r30, r31
/* 807B6644  7F C4 F3 78 */	mr r4, r30
/* 807B6648  4B AB A8 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B664C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807B6650  EC 00 07 F2 */	fmuls f0, f0, f31
/* 807B6654  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B6658  7F C3 F3 78 */	mr r3, r30
/* 807B665C  38 81 00 14 */	addi r4, r1, 0x14
/* 807B6660  7F C5 F3 78 */	mr r5, r30
/* 807B6664  4B B9 0A 2C */	b PSVECAdd
/* 807B6668  38 61 00 44 */	addi r3, r1, 0x44
/* 807B666C  38 81 00 14 */	addi r4, r1, 0x14
/* 807B6670  7F C5 F3 78 */	mr r5, r30
/* 807B6674  7F 86 E3 78 */	mr r6, r28
/* 807B6678  4B 8C 16 EC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807B667C  7F A3 EB 78 */	mr r3, r29
/* 807B6680  38 81 00 44 */	addi r4, r1, 0x44
/* 807B6684  4B 8B DD 30 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807B6688  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807B668C  41 82 00 20 */	beq lbl_807B66AC
/* 807B6690  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 807B6694  D0 1E 00 00 */	stfs f0, 0(r30)
/* 807B6698  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 807B669C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 807B66A0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 807B66A4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 807B66A8  48 00 00 18 */	b lbl_807B66C0
lbl_807B66AC:
/* 807B66AC  38 61 00 44 */	addi r3, r1, 0x44
/* 807B66B0  38 80 FF FF */	li r4, -1
/* 807B66B4  4B 8C 16 28 */	b __dt__11dBgS_LinChkFv
/* 807B66B8  38 60 00 23 */	li r3, 0x23
/* 807B66BC  48 00 00 58 */	b lbl_807B6714
lbl_807B66C0:
/* 807B66C0  3B 7B 00 01 */	addi r27, r27, 1
/* 807B66C4  2C 1B 00 02 */	cmpwi r27, 2
/* 807B66C8  3B FF 00 0C */	addi r31, r31, 0xc
/* 807B66CC  41 80 FF 6C */	blt lbl_807B6638
/* 807B66D0  38 61 00 08 */	addi r3, r1, 8
/* 807B66D4  38 81 00 38 */	addi r4, r1, 0x38
/* 807B66D8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 807B66DC  4B AB 04 58 */	b __mi__4cXyzCFRC3Vec
/* 807B66E0  C0 21 00 08 */	lfs f1, 8(r1)
/* 807B66E4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807B66E8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807B66EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B66F0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807B66F4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 807B66F8  4B AB 0F 7C */	b cM_atan2s__Fff
/* 807B66FC  38 03 40 00 */	addi r0, r3, 0x4000
/* 807B6700  7C 1E 07 34 */	extsh r30, r0
/* 807B6704  38 61 00 44 */	addi r3, r1, 0x44
/* 807B6708  38 80 FF FF */	li r4, -1
/* 807B670C  4B 8C 15 D0 */	b __dt__11dBgS_LinChkFv
/* 807B6710  7F C3 F3 78 */	mr r3, r30
lbl_807B6714:
/* 807B6714  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 807B6718  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 807B671C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807B6720  4B BA BB 00 */	b _restgpr_27
/* 807B6724  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 807B6728  7C 08 03 A6 */	mtlr r0
/* 807B672C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 807B6730  4E 80 00 20 */	blr 

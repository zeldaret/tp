lbl_804D065C:
/* 804D065C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 804D0660  7C 08 02 A6 */	mflr r0
/* 804D0664  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804D0668  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 804D066C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 804D0670  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 804D0674  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 804D0678  93 E1 00 AC */	stw r31, 0xac(r1)
/* 804D067C  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 804D0680  7C 7E 1B 78 */	mr r30, r3
/* 804D0684  FF C0 08 90 */	fmr f30, f1
/* 804D0688  FF E0 10 90 */	fmr f31, f2
/* 804D068C  7C 9F 23 78 */	mr r31, r4
/* 804D0690  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D0694  4B BA 75 D5 */	bl __ct__11dBgS_LinChkFv
/* 804D0698  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804D069C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D06A0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 804D06A4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804D06A8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804D06AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D06B0  EC 01 F8 2A */	fadds f0, f1, f31
/* 804D06B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D06B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804D06BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804D06C0  80 63 00 00 */	lwz r3, 0(r3)
/* 804D06C4  7F E4 FB 78 */	mr r4, r31
/* 804D06C8  4B B3 BD 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 804D06CC  3C 60 80 4D */	lis r3, lit_3708@ha /* 0x804D1638@ha */
/* 804D06D0  C0 03 16 38 */	lfs f0, lit_3708@l(r3)  /* 0x804D1638@l */
/* 804D06D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804D06D8  3C 60 80 4D */	lis r3, lit_4005@ha /* 0x804D16D0@ha */
/* 804D06DC  C0 03 16 D0 */	lfs f0, lit_4005@l(r3)  /* 0x804D16D0@l */
/* 804D06E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804D06E4  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 804D06E8  38 61 00 20 */	addi r3, r1, 0x20
/* 804D06EC  38 81 00 08 */	addi r4, r1, 8
/* 804D06F0  4B DA 07 FD */	bl MtxPosition__FP4cXyzP4cXyz
/* 804D06F4  38 61 00 08 */	addi r3, r1, 8
/* 804D06F8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804D06FC  7C 65 1B 78 */	mr r5, r3
/* 804D0700  4B E7 69 91 */	bl PSVECAdd
/* 804D0704  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D0708  38 81 00 14 */	addi r4, r1, 0x14
/* 804D070C  38 A1 00 08 */	addi r5, r1, 8
/* 804D0710  38 C0 00 00 */	li r6, 0
/* 804D0714  4B BA 76 51 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804D0718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D071C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D0720  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804D0724  38 81 00 2C */	addi r4, r1, 0x2c
/* 804D0728  4B BA 3C 8D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804D072C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D0730  41 82 00 18 */	beq lbl_804D0748
/* 804D0734  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D0738  38 80 FF FF */	li r4, -1
/* 804D073C  4B BA 75 A1 */	bl __dt__11dBgS_LinChkFv
/* 804D0740  38 60 00 01 */	li r3, 1
/* 804D0744  48 00 00 14 */	b lbl_804D0758
lbl_804D0748:
/* 804D0748  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D074C  38 80 FF FF */	li r4, -1
/* 804D0750  4B BA 75 8D */	bl __dt__11dBgS_LinChkFv
/* 804D0754  38 60 00 00 */	li r3, 0
lbl_804D0758:
/* 804D0758  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 804D075C  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 804D0760  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 804D0764  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 804D0768  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 804D076C  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 804D0770  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 804D0774  7C 08 03 A6 */	mtlr r0
/* 804D0778  38 21 00 D0 */	addi r1, r1, 0xd0
/* 804D077C  4E 80 00 20 */	blr 

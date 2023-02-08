lbl_805CC454:
/* 805CC454  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 805CC458  7C 08 02 A6 */	mflr r0
/* 805CC45C  90 01 01 04 */	stw r0, 0x104(r1)
/* 805CC460  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 805CC464  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 805CC468  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 805CC46C  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 805CC470  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 805CC474  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 805CC478  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 805CC47C  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 805CC480  39 61 00 C0 */	addi r11, r1, 0xc0
/* 805CC484  4B D9 5D 41 */	bl _savegpr_23
/* 805CC488  7C 7D 1B 78 */	mr r29, r3
/* 805CC48C  3C 80 80 5E */	lis r4, lit_3932@ha /* 0x805DCA54@ha */
/* 805CC490  3B C4 CA 54 */	addi r30, r4, lit_3932@l /* 0x805DCA54@l */
/* 805CC494  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805CC498  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805CC49C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805CC4A0  4B A4 E2 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CC4A4  7C 79 1B 78 */	mr r25, r3
/* 805CC4A8  38 61 00 30 */	addi r3, r1, 0x30
/* 805CC4AC  4B AA B0 D1 */	bl __ct__11dBgS_GndChkFv
/* 805CC4B0  3B 60 00 00 */	li r27, 0
/* 805CC4B4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 805CC4B8  4B C9 B4 9D */	bl cM_rndF__Ff
/* 805CC4BC  FC 00 08 1E */	fctiwz f0, f1
/* 805CC4C0  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805CC4C4  80 C1 00 8C */	lwz r6, 0x8c(r1)
/* 805CC4C8  38 A1 00 0C */	addi r5, r1, 0xc
/* 805CC4CC  3C 60 80 5E */	lis r3, mGuardDt@ha /* 0x805DD474@ha */
/* 805CC4D0  38 63 D4 74 */	addi r3, r3, mGuardDt@l /* 0x805DD474@l */
/* 805CC4D4  38 00 00 05 */	li r0, 5
/* 805CC4D8  7C 09 03 A6 */	mtctr r0
lbl_805CC4DC:
/* 805CC4DC  2C 06 00 04 */	cmpwi r6, 4
/* 805CC4E0  40 81 00 08 */	ble lbl_805CC4E8
/* 805CC4E4  38 C0 00 00 */	li r6, 0
lbl_805CC4E8:
/* 805CC4E8  7F 25 DB 2E */	sthx r25, r5, r27
/* 805CC4EC  54 C0 08 3C */	slwi r0, r6, 1
/* 805CC4F0  7C 83 02 AE */	lhax r4, r3, r0
/* 805CC4F4  7C 80 07 35 */	extsh. r0, r4
/* 805CC4F8  41 82 00 10 */	beq lbl_805CC508
/* 805CC4FC  7C 05 DA AE */	lhax r0, r5, r27
/* 805CC500  7C 00 22 14 */	add r0, r0, r4
/* 805CC504  7C 05 DB 2E */	sthx r0, r5, r27
lbl_805CC508:
/* 805CC508  3B 7B 00 02 */	addi r27, r27, 2
/* 805CC50C  38 C6 00 01 */	addi r6, r6, 1
/* 805CC510  42 00 FF CC */	bdnz lbl_805CC4DC
/* 805CC514  3A E0 00 00 */	li r23, 0
/* 805CC518  3B 80 00 00 */	li r28, 0
/* 805CC51C  3B 60 00 00 */	li r27, 0
/* 805CC520  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805CC524  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805CC528  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 805CC52C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805CC530  3B 23 07 68 */	addi r25, r3, calc_mtx@l /* 0x80450768@l */
/* 805CC534  3B 41 00 0C */	addi r26, r1, 0xc
/* 805CC538  C3 9E 00 04 */	lfs f28, 4(r30)
/* 805CC53C  C3 BE 00 70 */	lfs f29, 0x70(r30)
/* 805CC540  C3 DE 00 2C */	lfs f30, 0x2c(r30)
/* 805CC544  C3 FE 00 5C */	lfs f31, 0x5c(r30)
lbl_805CC548:
/* 805CC548  80 79 00 00 */	lwz r3, 0(r25)
/* 805CC54C  7C 9A DA AE */	lhax r4, r26, r27
/* 805CC550  4B A3 FE 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 805CC554  D3 81 00 24 */	stfs f28, 0x24(r1)
/* 805CC558  D3 81 00 28 */	stfs f28, 0x28(r1)
/* 805CC55C  D3 A1 00 2C */	stfs f29, 0x2c(r1)
/* 805CC560  38 61 00 24 */	addi r3, r1, 0x24
/* 805CC564  38 81 00 18 */	addi r4, r1, 0x18
/* 805CC568  4B CA 49 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805CC56C  38 61 00 18 */	addi r3, r1, 0x18
/* 805CC570  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805CC574  7C 65 1B 78 */	mr r5, r3
/* 805CC578  4B D7 AB 19 */	bl PSVECAdd
/* 805CC57C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805CC580  EC 00 F0 2A */	fadds f0, f0, f30
/* 805CC584  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805CC588  38 61 00 30 */	addi r3, r1, 0x30
/* 805CC58C  38 81 00 18 */	addi r4, r1, 0x18
/* 805CC590  4B C9 B7 99 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805CC594  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805CC598  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 805CC59C  41 82 00 18 */	beq lbl_805CC5B4
/* 805CC5A0  7F 03 C3 78 */	mr r3, r24
/* 805CC5A4  38 81 00 30 */	addi r4, r1, 0x30
/* 805CC5A8  4B AA 7E F9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805CC5AC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805CC5B0  48 00 00 18 */	b lbl_805CC5C8
lbl_805CC5B4:
/* 805CC5B4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805CC5B8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 805CC5BC  EC 01 00 2A */	fadds f0, f1, f0
/* 805CC5C0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805CC5C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_805CC5C8:
/* 805CC5C8  38 1C 2D C8 */	addi r0, r28, 0x2dc8
/* 805CC5CC  7C 7D 00 2E */	lwzx r3, r29, r0
/* 805CC5D0  28 03 00 00 */	cmplwi r3, 0
/* 805CC5D4  41 82 00 40 */	beq lbl_805CC614
/* 805CC5D8  38 81 00 08 */	addi r4, r1, 8
/* 805CC5DC  4B A4 D3 E1 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805CC5E0  2C 03 00 00 */	cmpwi r3, 0
/* 805CC5E4  41 82 00 30 */	beq lbl_805CC614
/* 805CC5E8  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC5EC  28 03 00 00 */	cmplwi r3, 0
/* 805CC5F0  41 82 00 24 */	beq lbl_805CC614
/* 805CC5F4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805CC5F8  D0 03 04 A8 */	stfs f0, 0x4a8(r3)
/* 805CC5FC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805CC600  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC604  D0 03 04 AC */	stfs f0, 0x4ac(r3)
/* 805CC608  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805CC60C  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC610  D0 03 04 B0 */	stfs f0, 0x4b0(r3)
lbl_805CC614:
/* 805CC614  3A F7 00 01 */	addi r23, r23, 1
/* 805CC618  2C 17 00 05 */	cmpwi r23, 5
/* 805CC61C  3B 9C 00 04 */	addi r28, r28, 4
/* 805CC620  3B 7B 00 02 */	addi r27, r27, 2
/* 805CC624  41 80 FF 24 */	blt lbl_805CC548
/* 805CC628  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805CC62C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805CC630  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 805CC634  7D 89 03 A6 */	mtctr r12
/* 805CC638  4E 80 04 21 */	bctrl 
/* 805CC63C  28 03 00 00 */	cmplwi r3, 0
/* 805CC640  41 82 00 30 */	beq lbl_805CC670
/* 805CC644  80 1D 06 80 */	lwz r0, 0x680(r29)
/* 805CC648  2C 00 00 03 */	cmpwi r0, 3
/* 805CC64C  41 82 00 24 */	beq lbl_805CC670
/* 805CC650  7F A3 EB 78 */	mr r3, r29
/* 805CC654  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805CC658  4B A4 E1 89 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CC65C  3C 60 80 5E */	lis r3, l_HIO@ha /* 0x805DDABC@ha */
/* 805CC660  38 63 DA BC */	addi r3, r3, l_HIO@l /* 0x805DDABC@l */
/* 805CC664  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805CC668  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CC66C  40 81 00 1C */	ble lbl_805CC688
lbl_805CC670:
/* 805CC670  38 00 00 00 */	li r0, 0
/* 805CC674  98 1D 08 55 */	stb r0, 0x855(r29)
/* 805CC678  38 61 00 30 */	addi r3, r1, 0x30
/* 805CC67C  38 80 FF FF */	li r4, -1
/* 805CC680  4B AA AF 71 */	bl __dt__11dBgS_GndChkFv
/* 805CC684  48 00 00 38 */	b lbl_805CC6BC
lbl_805CC688:
/* 805CC688  7F A3 EB 78 */	mr r3, r29
/* 805CC68C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805CC690  4B A4 E1 51 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CC694  3C 60 80 5E */	lis r3, l_HIO@ha /* 0x805DDABC@ha */
/* 805CC698  38 63 DA BC */	addi r3, r3, l_HIO@l /* 0x805DDABC@l */
/* 805CC69C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805CC6A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CC6A4  40 80 00 0C */	bge lbl_805CC6B0
/* 805CC6A8  38 00 00 01 */	li r0, 1
/* 805CC6AC  98 1D 08 55 */	stb r0, 0x855(r29)
lbl_805CC6B0:
/* 805CC6B0  38 61 00 30 */	addi r3, r1, 0x30
/* 805CC6B4  38 80 FF FF */	li r4, -1
/* 805CC6B8  4B AA AF 39 */	bl __dt__11dBgS_GndChkFv
lbl_805CC6BC:
/* 805CC6BC  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 805CC6C0  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 805CC6C4  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 805CC6C8  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 805CC6CC  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 805CC6D0  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 805CC6D4  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 805CC6D8  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 805CC6DC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 805CC6E0  4B D9 5B 31 */	bl _restgpr_23
/* 805CC6E4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 805CC6E8  7C 08 03 A6 */	mtlr r0
/* 805CC6EC  38 21 01 00 */	addi r1, r1, 0x100
/* 805CC6F0  4E 80 00 20 */	blr 

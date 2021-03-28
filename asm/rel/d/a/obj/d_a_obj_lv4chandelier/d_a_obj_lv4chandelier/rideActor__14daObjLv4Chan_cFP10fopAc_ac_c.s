lbl_80C639B4:
/* 80C639B4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C639B8  7C 08 02 A6 */	mflr r0
/* 80C639BC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C639C0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C639C4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C639C8  39 61 00 60 */	addi r11, r1, 0x60
/* 80C639CC  4B 6F E8 10 */	b _savegpr_29
/* 80C639D0  7C 7D 1B 78 */	mr r29, r3
/* 80C639D4  7C 9E 23 78 */	mr r30, r4
/* 80C639D8  3C 60 80 C6 */	lis r3, l_bmdidx@ha
/* 80C639DC  3B E3 68 60 */	addi r31, r3, l_bmdidx@l
/* 80C639E0  38 00 00 01 */	li r0, 1
/* 80C639E4  98 1D 24 98 */	stb r0, 0x2498(r29)
/* 80C639E8  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 80C639EC  80 1D 23 D4 */	lwz r0, 0x23d4(r29)
/* 80C639F0  2C 00 00 08 */	cmpwi r0, 8
/* 80C639F4  41 80 00 24 */	blt lbl_80C63A18
/* 80C639F8  FC 20 F8 90 */	fmr f1, f31
/* 80C639FC  4B 60 3F 58 */	b cM_rndF__Ff
/* 80C63A00  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C63A04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C63A08  41 81 02 D4 */	bgt lbl_80C63CDC
/* 80C63A0C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80C63A10  4B 60 3F 44 */	b cM_rndF__Ff
/* 80C63A14  FF E0 08 90 */	fmr f31, f1
lbl_80C63A18:
/* 80C63A18  80 1D 23 D4 */	lwz r0, 0x23d4(r29)
/* 80C63A1C  54 00 10 3A */	slwi r0, r0, 2
/* 80C63A20  7C 7D 02 14 */	add r3, r29, r0
/* 80C63A24  93 C3 23 D8 */	stw r30, 0x23d8(r3)
/* 80C63A28  80 7D 23 D4 */	lwz r3, 0x23d4(r29)
/* 80C63A2C  38 03 00 01 */	addi r0, r3, 1
/* 80C63A30  90 1D 23 D4 */	stw r0, 0x23d4(r29)
/* 80C63A34  38 80 00 00 */	li r4, 0
/* 80C63A38  38 60 00 00 */	li r3, 0
/* 80C63A3C  38 00 00 08 */	li r0, 8
/* 80C63A40  7C 09 03 A6 */	mtctr r0
lbl_80C63A44:
/* 80C63A44  38 03 23 F8 */	addi r0, r3, 0x23f8
/* 80C63A48  7C 1D 00 2E */	lwzx r0, r29, r0
/* 80C63A4C  7C 1E 00 40 */	cmplw r30, r0
/* 80C63A50  40 82 00 08 */	bne lbl_80C63A58
/* 80C63A54  38 80 00 01 */	li r4, 1
lbl_80C63A58:
/* 80C63A58  38 63 00 04 */	addi r3, r3, 4
/* 80C63A5C  42 00 FF E8 */	bdnz lbl_80C63A44
/* 80C63A60  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C63A64  41 82 00 44 */	beq lbl_80C63AA8
/* 80C63A68  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C63A6C  4B 60 3E E8 */	b cM_rndF__Ff
/* 80C63A70  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C63A74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C63A78  40 81 00 24 */	ble lbl_80C63A9C
/* 80C63A7C  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 80C63A80  4B 6E 36 B8 */	b PSVECSquareMag
/* 80C63A84  FC 00 0A 10 */	fabs f0, f1
/* 80C63A88  FC 20 00 18 */	frsp f1, f0
/* 80C63A8C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C63A90  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C63A94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C63A98  41 80 02 44 */	blt lbl_80C63CDC
lbl_80C63A9C:
/* 80C63A9C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80C63AA0  4B 60 3E B4 */	b cM_rndF__Ff
/* 80C63AA4  FF E0 08 90 */	fmr f31, f1
lbl_80C63AA8:
/* 80C63AA8  38 61 00 20 */	addi r3, r1, 0x20
/* 80C63AAC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C63AB0  80 DD 06 1C */	lwz r6, 0x61c(r29)
/* 80C63AB4  80 BD 06 10 */	lwz r5, 0x610(r29)
/* 80C63AB8  38 05 FF FF */	addi r0, r5, -1
/* 80C63ABC  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C63AC0  38 A5 00 0C */	addi r5, r5, 0xc
/* 80C63AC4  7C A6 2A 14 */	add r5, r6, r5
/* 80C63AC8  4B 60 30 6C */	b __mi__4cXyzCFRC3Vec
/* 80C63ACC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C63AD0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C63AD4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C63AD8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C63ADC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C63AE0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C63AE4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C63AE8  4B 60 3E A4 */	b cM_rndFX__Ff
/* 80C63AEC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C63AF0  EC 40 08 2A */	fadds f2, f0, f1
/* 80C63AF4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C63AF8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C63AFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C63B00  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C63B04  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C63B08  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80C63B0C  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80C63B10  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80C63B14  7C 63 02 14 */	add r3, r3, r0
/* 80C63B18  C0 03 FF D8 */	lfs f0, -0x28(r3)
/* 80C63B1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C63B20  D0 03 FF D8 */	stfs f0, -0x28(r3)
/* 80C63B24  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C63B28  4B 60 3E 64 */	b cM_rndFX__Ff
/* 80C63B2C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C63B30  EC 40 08 2A */	fadds f2, f0, f1
/* 80C63B34  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C63B38  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80C63B3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C63B40  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C63B44  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C63B48  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80C63B4C  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80C63B50  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80C63B54  7C 63 02 14 */	add r3, r3, r0
/* 80C63B58  C0 03 FF E0 */	lfs f0, -0x20(r3)
/* 80C63B5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C63B60  D0 03 FF E0 */	stfs f0, -0x20(r3)
/* 80C63B64  38 61 00 14 */	addi r3, r1, 0x14
/* 80C63B68  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C63B6C  80 DD 06 20 */	lwz r6, 0x620(r29)
/* 80C63B70  80 BD 06 14 */	lwz r5, 0x614(r29)
/* 80C63B74  38 05 FF FF */	addi r0, r5, -1
/* 80C63B78  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C63B7C  38 A5 00 0C */	addi r5, r5, 0xc
/* 80C63B80  7C A6 2A 14 */	add r5, r6, r5
/* 80C63B84  4B 60 2F B0 */	b __mi__4cXyzCFRC3Vec
/* 80C63B88  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C63B8C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C63B90  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C63B94  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C63B98  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C63B9C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C63BA0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C63BA4  4B 60 3D E8 */	b cM_rndFX__Ff
/* 80C63BA8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C63BAC  EC 40 08 2A */	fadds f2, f0, f1
/* 80C63BB0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C63BB4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C63BB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C63BBC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C63BC0  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C63BC4  80 7D 06 20 */	lwz r3, 0x620(r29)
/* 80C63BC8  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 80C63BCC  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80C63BD0  7C 63 02 14 */	add r3, r3, r0
/* 80C63BD4  C0 03 FF D8 */	lfs f0, -0x28(r3)
/* 80C63BD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C63BDC  D0 03 FF D8 */	stfs f0, -0x28(r3)
/* 80C63BE0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C63BE4  4B 60 3D A8 */	b cM_rndFX__Ff
/* 80C63BE8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C63BEC  EC 40 08 2A */	fadds f2, f0, f1
/* 80C63BF0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C63BF4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C63BF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C63BFC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C63C00  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C63C04  80 7D 06 20 */	lwz r3, 0x620(r29)
/* 80C63C08  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 80C63C0C  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80C63C10  7C 63 02 14 */	add r3, r3, r0
/* 80C63C14  C0 03 FF E0 */	lfs f0, -0x20(r3)
/* 80C63C18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C63C1C  D0 03 FF E0 */	stfs f0, -0x20(r3)
/* 80C63C20  38 61 00 08 */	addi r3, r1, 8
/* 80C63C24  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C63C28  80 DD 06 24 */	lwz r6, 0x624(r29)
/* 80C63C2C  80 BD 06 18 */	lwz r5, 0x618(r29)
/* 80C63C30  38 05 FF FF */	addi r0, r5, -1
/* 80C63C34  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C63C38  38 A5 00 0C */	addi r5, r5, 0xc
/* 80C63C3C  7C A6 2A 14 */	add r5, r6, r5
/* 80C63C40  4B 60 2E F4 */	b __mi__4cXyzCFRC3Vec
/* 80C63C44  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C63C48  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C63C4C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C63C50  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C63C54  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C63C58  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C63C5C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C63C60  4B 60 3D 2C */	b cM_rndFX__Ff
/* 80C63C64  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C63C68  EC 40 08 2A */	fadds f2, f0, f1
/* 80C63C6C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C63C70  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C63C74  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C63C78  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C63C7C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C63C80  80 7D 06 24 */	lwz r3, 0x624(r29)
/* 80C63C84  80 1D 06 18 */	lwz r0, 0x618(r29)
/* 80C63C88  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80C63C8C  7C 63 02 14 */	add r3, r3, r0
/* 80C63C90  C0 03 FF D8 */	lfs f0, -0x28(r3)
/* 80C63C94  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C63C98  D0 03 FF D8 */	stfs f0, -0x28(r3)
/* 80C63C9C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C63CA0  4B 60 3C EC */	b cM_rndFX__Ff
/* 80C63CA4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C63CA8  EC 40 08 2A */	fadds f2, f0, f1
/* 80C63CAC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C63CB0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C63CB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C63CB8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C63CBC  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C63CC0  80 7D 06 24 */	lwz r3, 0x624(r29)
/* 80C63CC4  80 1D 06 18 */	lwz r0, 0x618(r29)
/* 80C63CC8  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80C63CCC  7C 63 02 14 */	add r3, r3, r0
/* 80C63CD0  C0 03 FF E0 */	lfs f0, -0x20(r3)
/* 80C63CD4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C63CD8  D0 03 FF E0 */	stfs f0, -0x20(r3)
lbl_80C63CDC:
/* 80C63CDC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C63CE0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C63CE4  39 61 00 60 */	addi r11, r1, 0x60
/* 80C63CE8  4B 6F E5 40 */	b _restgpr_29
/* 80C63CEC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C63CF0  7C 08 03 A6 */	mtlr r0
/* 80C63CF4  38 21 00 70 */	addi r1, r1, 0x70
/* 80C63CF8  4E 80 00 20 */	blr 

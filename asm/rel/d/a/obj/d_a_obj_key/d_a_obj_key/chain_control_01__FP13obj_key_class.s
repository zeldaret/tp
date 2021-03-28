lbl_80C3FBC0:
/* 80C3FBC0  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80C3FBC4  7C 08 02 A6 */	mflr r0
/* 80C3FBC8  90 01 01 74 */	stw r0, 0x174(r1)
/* 80C3FBCC  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 80C3FBD0  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 80C3FBD4  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 80C3FBD8  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 80C3FBDC  DB A1 01 40 */	stfd f29, 0x140(r1)
/* 80C3FBE0  F3 A1 01 48 */	psq_st f29, 328(r1), 0, 0 /* qr0 */
/* 80C3FBE4  DB 81 01 30 */	stfd f28, 0x130(r1)
/* 80C3FBE8  F3 81 01 38 */	psq_st f28, 312(r1), 0, 0 /* qr0 */
/* 80C3FBEC  DB 61 01 20 */	stfd f27, 0x120(r1)
/* 80C3FBF0  F3 61 01 28 */	psq_st f27, 296(r1), 0, 0 /* qr0 */
/* 80C3FBF4  39 61 01 20 */	addi r11, r1, 0x120
/* 80C3FBF8  4B 72 25 C0 */	b _savegpr_20
/* 80C3FBFC  7C 7F 1B 78 */	mr r31, r3
/* 80C3FC00  3C 60 80 C4 */	lis r3, lit_3778@ha
/* 80C3FC04  3B A3 0F EC */	addi r29, r3, lit_3778@l
/* 80C3FC08  38 61 00 90 */	addi r3, r1, 0x90
/* 80C3FC0C  4B 43 79 70 */	b __ct__11dBgS_GndChkFv
/* 80C3FC10  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 80C3FC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3FC18  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C3FC1C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C3FC20  38 81 00 14 */	addi r4, r1, 0x14
/* 80C3FC24  4B 3D 9B D4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C3FC28  7C 7E 1B 78 */	mr r30, r3
/* 80C3FC2C  80 1F 05 E4 */	lwz r0, 0x5e4(r31)
/* 80C3FC30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C3FC34  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C3FC38  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C3FC3C  38 81 00 10 */	addi r4, r1, 0x10
/* 80C3FC40  4B 3D 9B B8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C3FC44  7C 60 1B 78 */	mr r0, r3
/* 80C3FC48  7C 1C 03 78 */	mr r28, r0
/* 80C3FC4C  28 1E 00 00 */	cmplwi r30, 0
/* 80C3FC50  40 82 00 98 */	bne lbl_80C3FCE8
/* 80C3FC54  28 1C 00 00 */	cmplwi r28, 0
/* 80C3FC58  41 82 00 78 */	beq lbl_80C3FCD0
/* 80C3FC5C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C3FC60  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C3FC64  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80C3FC68  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80C3FC6C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C3FC70  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C3FC74  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80C3FC78  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3FC7C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C3FC80  38 61 00 78 */	addi r3, r1, 0x78
/* 80C3FC84  4B 3D E0 38 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80C3FC88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3FC8C  41 82 00 18 */	beq lbl_80C3FCA4
/* 80C3FC90  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80C3FC94  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80C3FC98  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80C3FC9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3FCA0  D0 01 00 7C */	stfs f0, 0x7c(r1)
lbl_80C3FCA4:
/* 80C3FCA4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C3FCA8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C3FCAC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C3FCB0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C3FCB4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C3FCB8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C3FCBC  7F 83 E3 78 */	mr r3, r28
/* 80C3FCC0  38 81 00 30 */	addi r4, r1, 0x30
/* 80C3FCC4  48 00 12 F9 */	bl setPos__7daKey_cF4cXyz
/* 80C3FCC8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80C3FCCC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80C3FCD0:
/* 80C3FCD0  7F E3 FB 78 */	mr r3, r31
/* 80C3FCD4  4B 3D 9F A8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C3FCD8  38 61 00 90 */	addi r3, r1, 0x90
/* 80C3FCDC  38 80 FF FF */	li r4, -1
/* 80C3FCE0  4B 43 79 10 */	b __dt__11dBgS_GndChkFv
/* 80C3FCE4  48 00 09 C8 */	b lbl_80C406AC
lbl_80C3FCE8:
/* 80C3FCE8  28 1C 00 00 */	cmplwi r28, 0
/* 80C3FCEC  41 82 00 D0 */	beq lbl_80C3FDBC
/* 80C3FCF0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C3FCF4  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80C3FCF8  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80C3FCFC  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80C3FD00  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80C3FD04  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80C3FD08  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80C3FD0C  EC 21 00 2A */	fadds f1, f1, f0
/* 80C3FD10  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80C3FD14  EC 03 00 2A */	fadds f0, f3, f0
/* 80C3FD18  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C3FD1C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C3FD20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C3FD24  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80C3FD28  38 81 00 24 */	addi r4, r1, 0x24
/* 80C3FD2C  48 00 12 91 */	bl setPos__7daKey_cF4cXyz
/* 80C3FD30  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C3FD34  D0 1C 09 78 */	stfs f0, 0x978(r28)
/* 80C3FD38  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C3FD3C  D0 1C 09 7C */	stfs f0, 0x97c(r28)
/* 80C3FD40  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C3FD44  D0 1C 09 80 */	stfs f0, 0x980(r28)
/* 80C3FD48  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80C3FD4C  7C 03 07 74 */	extsb r3, r0
/* 80C3FD50  4B 3E D3 1C */	b dComIfGp_getReverb__Fi
/* 80C3FD54  7C 67 1B 78 */	mr r7, r3
/* 80C3FD58  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C5@ha */
/* 80C3FD5C  38 03 00 C5 */	addi r0, r3, 0x00C5 /* 0x000800C5@l */
/* 80C3FD60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C3FD64  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C3FD68  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C3FD6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C3FD70  38 81 00 0C */	addi r4, r1, 0xc
/* 80C3FD74  38 BC 09 78 */	addi r5, r28, 0x978
/* 80C3FD78  38 C0 00 00 */	li r6, 0
/* 80C3FD7C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C3FD80  FC 40 08 90 */	fmr f2, f1
/* 80C3FD84  C0 7D 00 34 */	lfs f3, 0x34(r29)
/* 80C3FD88  FC 80 18 90 */	fmr f4, f3
/* 80C3FD8C  39 00 00 00 */	li r8, 0
/* 80C3FD90  4B 66 C7 7C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C3FD94  38 00 00 01 */	li r0, 1
/* 80C3FD98  98 1C 09 84 */	stb r0, 0x984(r28)
/* 80C3FD9C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C3FDA0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C3FDA4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C3FDA8  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80C3FDAC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C3FDB0  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80C3FDB4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C3FDB8  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
lbl_80C3FDBC:
/* 80C3FDBC  C0 1F 05 7C */	lfs f0, 0x57c(r31)
/* 80C3FDC0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C3FDC4  C0 1F 05 80 */	lfs f0, 0x580(r31)
/* 80C3FDC8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C3FDCC  C0 1F 05 84 */	lfs f0, 0x584(r31)
/* 80C3FDD0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C3FDD4  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C3FDD8  38 63 11 48 */	addi r3, r3, l_HIO@l
/* 80C3FDDC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C3FDE0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80C3FDE4  38 00 00 00 */	li r0, 0
/* 80C3FDE8  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80C3FDEC  3B 60 00 00 */	li r27, 0
/* 80C3FDF0  A8 1E 00 08 */	lha r0, 8(r30)
/* 80C3FDF4  2C 00 01 B3 */	cmpwi r0, 0x1b3
/* 80C3FDF8  40 82 00 50 */	bne lbl_80C3FE48
/* 80C3FDFC  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 80C3FE00  80 63 00 04 */	lwz r3, 4(r3)
/* 80C3FE04  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C3FE08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C3FE0C  38 63 00 30 */	addi r3, r3, 0x30
/* 80C3FE10  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80C3FE14  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80C3FE18  80 84 00 00 */	lwz r4, 0(r4)
/* 80C3FE1C  4B 70 66 94 */	b PSMTXCopy
/* 80C3FE20  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80C3FE24  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C3FE28  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80C3FE2C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C3FE30  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80C3FE34  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C3FE38  38 61 00 84 */	addi r3, r1, 0x84
/* 80C3FE3C  38 81 00 78 */	addi r4, r1, 0x78
/* 80C3FE40  4B 63 10 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80C3FE44  48 00 02 3C */	b lbl_80C40080
lbl_80C3FE48:
/* 80C3FE48  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 80C3FE4C  40 82 00 58 */	bne lbl_80C3FEA4
/* 80C3FE50  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 80C3FE54  80 63 00 04 */	lwz r3, 4(r3)
/* 80C3FE58  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C3FE5C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C3FE60  38 63 02 40 */	addi r3, r3, 0x240
/* 80C3FE64  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80C3FE68  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80C3FE6C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C3FE70  4B 70 66 40 */	b PSMTXCopy
/* 80C3FE74  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80C3FE78  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C3FE7C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80C3FE80  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C3FE84  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C3FE88  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C3FE8C  38 61 00 84 */	addi r3, r1, 0x84
/* 80C3FE90  38 81 00 78 */	addi r4, r1, 0x78
/* 80C3FE94  4B 63 10 58 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C3FE98  38 00 00 01 */	li r0, 1
/* 80C3FE9C  98 1E 05 67 */	stb r0, 0x567(r30)
/* 80C3FEA0  48 00 01 E0 */	b lbl_80C40080
lbl_80C3FEA4:
/* 80C3FEA4  2C 00 01 D5 */	cmpwi r0, 0x1d5
/* 80C3FEA8  40 82 00 B0 */	bne lbl_80C3FF58
/* 80C3FEAC  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80C3FEB0  80 63 00 04 */	lwz r3, 4(r3)
/* 80C3FEB4  88 1E 11 04 */	lbz r0, 0x1104(r30)
/* 80C3FEB8  28 00 00 00 */	cmplwi r0, 0
/* 80C3FEBC  41 82 00 3C */	beq lbl_80C3FEF8
/* 80C3FEC0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C3FEC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C3FEC8  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 80C3FECC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80C3FED0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80C3FED4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C3FED8  4B 70 65 D8 */	b PSMTXCopy
/* 80C3FEDC  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 80C3FEE0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C3FEE4  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 80C3FEE8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C3FEEC  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C3FEF0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C3FEF4  48 00 00 38 */	b lbl_80C3FF2C
lbl_80C3FEF8:
/* 80C3FEF8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C3FEFC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C3FF00  38 63 04 20 */	addi r3, r3, 0x420
/* 80C3FF04  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80C3FF08  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80C3FF0C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C3FF10  4B 70 65 A0 */	b PSMTXCopy
/* 80C3FF14  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80C3FF18  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C3FF1C  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80C3FF20  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C3FF24  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80C3FF28  D0 01 00 8C */	stfs f0, 0x8c(r1)
lbl_80C3FF2C:
/* 80C3FF2C  38 61 00 84 */	addi r3, r1, 0x84
/* 80C3FF30  38 81 00 78 */	addi r4, r1, 0x78
/* 80C3FF34  4B 63 0F B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C3FF38  88 1E 0F E5 */	lbz r0, 0xfe5(r30)
/* 80C3FF3C  7C 00 07 75 */	extsb. r0, r0
/* 80C3FF40  41 82 01 40 */	beq lbl_80C40080
/* 80C3FF44  7F 83 E3 78 */	mr r3, r28
/* 80C3FF48  4B 3D 9D 34 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C3FF4C  7F E3 FB 78 */	mr r3, r31
/* 80C3FF50  4B 3D 9D 2C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C3FF54  48 00 01 2C */	b lbl_80C40080
lbl_80C3FF58:
/* 80C3FF58  2C 00 01 FE */	cmpwi r0, 0x1fe
/* 80C3FF5C  40 82 00 50 */	bne lbl_80C3FFAC
/* 80C3FF60  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80C3FF64  80 63 00 04 */	lwz r3, 4(r3)
/* 80C3FF68  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C3FF6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C3FF70  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 80C3FF74  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80C3FF78  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80C3FF7C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C3FF80  4B 70 65 30 */	b PSMTXCopy
/* 80C3FF84  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80C3FF88  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C3FF8C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C3FF90  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C3FF94  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C3FF98  38 61 00 84 */	addi r3, r1, 0x84
/* 80C3FF9C  38 81 00 78 */	addi r4, r1, 0x78
/* 80C3FFA0  4B 63 0F 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 80C3FFA4  3B 60 00 01 */	li r27, 1
/* 80C3FFA8  48 00 00 D8 */	b lbl_80C40080
lbl_80C3FFAC:
/* 80C3FFAC  2C 00 01 C5 */	cmpwi r0, 0x1c5
/* 80C3FFB0  41 82 00 0C */	beq lbl_80C3FFBC
/* 80C3FFB4  2C 00 01 C9 */	cmpwi r0, 0x1c9
/* 80C3FFB8  40 82 00 48 */	bne lbl_80C40000
lbl_80C3FFBC:
/* 80C3FFBC  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 80C3FFC0  2C 00 00 14 */	cmpwi r0, 0x14
/* 80C3FFC4  40 82 00 20 */	bne lbl_80C3FFE4
/* 80C3FFC8  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 80C3FFCC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C3FFD0  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 80C3FFD4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C3FFD8  C0 1E 06 BC */	lfs f0, 0x6bc(r30)
/* 80C3FFDC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C3FFE0  48 00 00 A0 */	b lbl_80C40080
lbl_80C3FFE4:
/* 80C3FFE4  C0 1E 07 08 */	lfs f0, 0x708(r30)
/* 80C3FFE8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C3FFEC  C0 1E 07 0C */	lfs f0, 0x70c(r30)
/* 80C3FFF0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C3FFF4  C0 1E 07 10 */	lfs f0, 0x710(r30)
/* 80C3FFF8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C3FFFC  48 00 00 84 */	b lbl_80C40080
lbl_80C40000:
/* 80C40000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C40004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C40008  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80C4000C  38 80 00 02 */	li r4, 2
/* 80C40010  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C40014  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80C40018  7D 89 03 A6 */	mtctr r12
/* 80C4001C  4E 80 04 21 */	bctrl 
/* 80C40020  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80C40024  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80C40028  80 84 00 00 */	lwz r4, 0(r4)
/* 80C4002C  4B 70 64 84 */	b PSMTXCopy
/* 80C40030  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 80C40034  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C40038  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80C4003C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C40040  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80C40044  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C40048  38 61 00 84 */	addi r3, r1, 0x84
/* 80C4004C  38 81 00 78 */	addi r4, r1, 0x78
/* 80C40050  4B 63 0E 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 80C40054  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80C40058  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80C4005C  38 00 00 01 */	li r0, 1
/* 80C40060  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80C40064  38 00 00 00 */	li r0, 0
/* 80C40068  3C 60 80 C4 */	lis r3, target_info_count@ha
/* 80C4006C  B0 03 11 58 */	sth r0, target_info_count@l(r3)
/* 80C40070  3C 60 80 C4 */	lis r3, s_count_sub__FPvPv@ha
/* 80C40074  38 63 F4 D4 */	addi r3, r3, s_count_sub__FPvPv@l
/* 80C40078  7F E4 FB 78 */	mr r4, r31
/* 80C4007C  4B 3E 12 BC */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80C40080:
/* 80C40080  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C40084  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80C40088  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C4008C  D0 1F 05 80 */	stfs f0, 0x580(r31)
/* 80C40090  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C40094  D0 1F 05 84 */	stfs f0, 0x584(r31)
/* 80C40098  3B 5F 05 88 */	addi r26, r31, 0x588
/* 80C4009C  3B 3F 05 CA */	addi r25, r31, 0x5ca
/* 80C400A0  3B 1F 05 DC */	addi r24, r31, 0x5dc
/* 80C400A4  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80C400A8  C0 1F 05 7C */	lfs f0, 0x57c(r31)
/* 80C400AC  EF 81 00 28 */	fsubs f28, f1, f0
/* 80C400B0  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80C400B4  C0 1F 05 84 */	lfs f0, 0x584(r31)
/* 80C400B8  EF 61 00 28 */	fsubs f27, f1, f0
/* 80C400BC  EC 3C 07 32 */	fmuls f1, f28, f28
/* 80C400C0  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 80C400C4  EC 21 00 2A */	fadds f1, f1, f0
/* 80C400C8  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80C400CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C400D0  40 81 00 74 */	ble lbl_80C40144
/* 80C400D4  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C400D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C400DC  40 81 00 0C */	ble lbl_80C400E8
/* 80C400E0  FC 00 08 34 */	frsqrte f0, f1
/* 80C400E4  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80C400E8:
/* 80C400E8  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80C400EC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80C400F0  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 80C400F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C400F8  40 80 00 4C */	bge lbl_80C40144
/* 80C400FC  D0 3F 06 18 */	stfs f1, 0x618(r31)
/* 80C40100  C0 3F 06 18 */	lfs f1, 0x618(r31)
/* 80C40104  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80C40108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4010C  40 81 00 08 */	ble lbl_80C40114
/* 80C40110  D0 1F 06 18 */	stfs f0, 0x618(r31)
lbl_80C40114:
/* 80C40114  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 80C40118  4B 62 78 74 */	b cM_rndFX__Ff
/* 80C4011C  FC 00 08 1E */	fctiwz f0, f1
/* 80C40120  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80C40124  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80C40128  B0 1F 06 16 */	sth r0, 0x616(r31)
/* 80C4012C  FC 20 E0 90 */	fmr f1, f28
/* 80C40130  FC 40 D8 90 */	fmr f2, f27
/* 80C40134  4B 62 75 40 */	b cM_atan2s__Fff
/* 80C40138  B0 7F 06 14 */	sth r3, 0x614(r31)
/* 80C4013C  38 00 00 00 */	li r0, 0
/* 80C40140  B0 1F 06 12 */	sth r0, 0x612(r31)
lbl_80C40144:
/* 80C40144  A8 7F 06 12 */	lha r3, 0x612(r31)
/* 80C40148  38 03 0B B8 */	addi r0, r3, 0xbb8
/* 80C4014C  B0 1F 06 12 */	sth r0, 0x612(r31)
/* 80C40150  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80C40154  A8 1F 06 16 */	lha r0, 0x616(r31)
/* 80C40158  7C 03 02 14 */	add r0, r3, r0
/* 80C4015C  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80C40160  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C40164  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C40168  80 63 00 00 */	lwz r3, 0(r3)
/* 80C4016C  A8 9F 06 14 */	lha r4, 0x614(r31)
/* 80C40170  4B 3C C2 6C */	b mDoMtx_YrotS__FPA4_fs
/* 80C40174  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C40178  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C4017C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C40180  A8 1F 06 12 */	lha r0, 0x612(r31)
/* 80C40184  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C40188  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C4018C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C40190  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C40194  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 80C40198  FC 00 00 50 */	fneg f0, f0
/* 80C4019C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C401A0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C401A4  38 61 00 84 */	addi r3, r1, 0x84
/* 80C401A8  38 81 00 48 */	addi r4, r1, 0x48
/* 80C401AC  4B 63 0D 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C401B0  38 7F 06 18 */	addi r3, r31, 0x618
/* 80C401B4  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80C401B8  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80C401BC  4B 62 F8 C4 */	b cLib_addCalc0__FPfff
/* 80C401C0  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C401C4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C401C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C401CC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C401D0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80C401D4  41 82 01 6C */	beq lbl_80C40340
/* 80C401D8  38 61 00 18 */	addi r3, r1, 0x18
/* 80C401DC  38 9F 05 7C */	addi r4, r31, 0x57c
/* 80C401E0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C401E4  4B 62 69 50 */	b __mi__4cXyzCFRC3Vec
/* 80C401E8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80C401EC  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80C401F0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C401F4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C401F8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80C401FC  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 80C40200  4B 62 74 74 */	b cM_atan2s__Fff
/* 80C40204  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C40208  7C 04 18 50 */	subf r0, r4, r3
/* 80C4020C  7C 00 07 34 */	extsh r0, r0
/* 80C40210  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80C40214  41 81 00 0C */	bgt lbl_80C40220
/* 80C40218  2C 00 C0 00 */	cmpwi r0, -16384
/* 80C4021C  40 80 01 24 */	bge lbl_80C40340
lbl_80C40220:
/* 80C40220  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C40224  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C40228  80 63 00 00 */	lwz r3, 0(r3)
/* 80C4022C  38 04 D8 F0 */	addi r0, r4, -10000
/* 80C40230  7C 04 07 34 */	extsh r4, r0
/* 80C40234  4B 3C C1 A8 */	b mDoMtx_YrotS__FPA4_fs
/* 80C40238  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C4023C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C40240  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C40244  38 61 00 84 */	addi r3, r1, 0x84
/* 80C40248  4B 70 6E F0 */	b PSVECSquareMag
/* 80C4024C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C40250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C40254  40 81 00 58 */	ble lbl_80C402AC
/* 80C40258  FC 00 08 34 */	frsqrte f0, f1
/* 80C4025C  C8 9D 00 68 */	lfd f4, 0x68(r29)
/* 80C40260  FC 44 00 32 */	fmul f2, f4, f0
/* 80C40264  C8 7D 00 70 */	lfd f3, 0x70(r29)
/* 80C40268  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4026C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C40270  FC 03 00 28 */	fsub f0, f3, f0
/* 80C40274  FC 02 00 32 */	fmul f0, f2, f0
/* 80C40278  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4027C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C40280  FC 01 00 32 */	fmul f0, f1, f0
/* 80C40284  FC 03 00 28 */	fsub f0, f3, f0
/* 80C40288  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4028C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C40290  FC 00 00 32 */	fmul f0, f0, f0
/* 80C40294  FC 01 00 32 */	fmul f0, f1, f0
/* 80C40298  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4029C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C402A0  FC 21 00 32 */	fmul f1, f1, f0
/* 80C402A4  FC 20 08 18 */	frsp f1, f1
/* 80C402A8  48 00 00 88 */	b lbl_80C40330
lbl_80C402AC:
/* 80C402AC  C8 1D 00 78 */	lfd f0, 0x78(r29)
/* 80C402B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C402B4  40 80 00 10 */	bge lbl_80C402C4
/* 80C402B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C402BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C402C0  48 00 00 70 */	b lbl_80C40330
lbl_80C402C4:
/* 80C402C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C402C8  80 81 00 08 */	lwz r4, 8(r1)
/* 80C402CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C402D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C402D4  7C 03 00 00 */	cmpw r3, r0
/* 80C402D8  41 82 00 14 */	beq lbl_80C402EC
/* 80C402DC  40 80 00 40 */	bge lbl_80C4031C
/* 80C402E0  2C 03 00 00 */	cmpwi r3, 0
/* 80C402E4  41 82 00 20 */	beq lbl_80C40304
/* 80C402E8  48 00 00 34 */	b lbl_80C4031C
lbl_80C402EC:
/* 80C402EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C402F0  41 82 00 0C */	beq lbl_80C402FC
/* 80C402F4  38 00 00 01 */	li r0, 1
/* 80C402F8  48 00 00 28 */	b lbl_80C40320
lbl_80C402FC:
/* 80C402FC  38 00 00 02 */	li r0, 2
/* 80C40300  48 00 00 20 */	b lbl_80C40320
lbl_80C40304:
/* 80C40304  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C40308  41 82 00 0C */	beq lbl_80C40314
/* 80C4030C  38 00 00 05 */	li r0, 5
/* 80C40310  48 00 00 10 */	b lbl_80C40320
lbl_80C40314:
/* 80C40314  38 00 00 03 */	li r0, 3
/* 80C40318  48 00 00 08 */	b lbl_80C40320
lbl_80C4031C:
/* 80C4031C  38 00 00 04 */	li r0, 4
lbl_80C40320:
/* 80C40320  2C 00 00 01 */	cmpwi r0, 1
/* 80C40324  40 82 00 0C */	bne lbl_80C40330
/* 80C40328  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C4032C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C40330:
/* 80C40330  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80C40334  38 61 00 84 */	addi r3, r1, 0x84
/* 80C40338  38 81 00 3C */	addi r4, r1, 0x3c
/* 80C4033C  4B 63 0B B0 */	b MtxPosition__FP4cXyzP4cXyz
lbl_80C40340:
/* 80C40340  C3 DD 00 14 */	lfs f30, 0x14(r29)
/* 80C40344  D3 C1 00 88 */	stfs f30, 0x88(r1)
/* 80C40348  D3 C1 00 84 */	stfs f30, 0x84(r1)
/* 80C4034C  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80C40350  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C40354  3B 80 00 01 */	li r28, 1
/* 80C40358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4035C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C40360  3A C3 0F 38 */	addi r22, r3, 0xf38
/* 80C40364  C3 FD 00 1C */	lfs f31, 0x1c(r29)
/* 80C40368  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C4036C  3B 63 07 68 */	addi r27, r3, calc_mtx@l
/* 80C40370  3C 60 80 43 */	lis r3, g_Counter@ha
/* 80C40374  3A E3 0C D8 */	addi r23, r3, g_Counter@l
lbl_80C40378:
/* 80C40378  2C 1C 00 02 */	cmpwi r28, 2
/* 80C4037C  40 82 00 20 */	bne lbl_80C4039C
/* 80C40380  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C40384  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80C40388  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C4038C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C40390  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C40394  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C40398  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80C4039C:
/* 80C4039C  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 80C403A0  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 80C403A4  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80C403A8  C0 1A FF F4 */	lfs f0, -0xc(r26)
/* 80C403AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C403B0  EC 02 00 2A */	fadds f0, f2, f0
/* 80C403B4  EF A3 00 2A */	fadds f29, f3, f0
/* 80C403B8  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 80C403BC  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80C403C0  C0 3A 00 08 */	lfs f1, 8(r26)
/* 80C403C4  C0 1A FF FC */	lfs f0, -4(r26)
/* 80C403C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C403CC  EC 02 00 2A */	fadds f0, f2, f0
/* 80C403D0  EF 83 00 2A */	fadds f28, f3, f0
/* 80C403D4  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80C403D8  EC 20 F8 2A */	fadds f1, f0, f31
/* 80C403DC  C0 18 00 00 */	lfs f0, 0(r24)
/* 80C403E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C403E4  4C 40 13 82 */	cror 2, 0, 2
/* 80C403E8  40 82 00 08 */	bne lbl_80C403F0
/* 80C403EC  FC 20 00 90 */	fmr f1, f0
lbl_80C403F0:
/* 80C403F0  C0 1A FF F8 */	lfs f0, -8(r26)
/* 80C403F4  EF 61 00 28 */	fsubs f27, f1, f0
/* 80C403F8  FC 20 D8 90 */	fmr f1, f27
/* 80C403FC  FC 40 E0 90 */	fmr f2, f28
/* 80C40400  4B 62 72 74 */	b cM_atan2s__Fff
/* 80C40404  7C 03 00 D0 */	neg r0, r3
/* 80C40408  7C 15 07 34 */	extsh r21, r0
/* 80C4040C  EC 3B 06 F2 */	fmuls f1, f27, f27
/* 80C40410  EC 1C 07 32 */	fmuls f0, f28, f28
/* 80C40414  EC 41 00 2A */	fadds f2, f1, f0
/* 80C40418  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 80C4041C  40 81 00 0C */	ble lbl_80C40428
/* 80C40420  FC 00 10 34 */	frsqrte f0, f2
/* 80C40424  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80C40428:
/* 80C40428  FC 20 E8 90 */	fmr f1, f29
/* 80C4042C  4B 62 72 48 */	b cM_atan2s__Fff
/* 80C40430  7C 74 07 34 */	extsh r20, r3
/* 80C40434  80 7B 00 00 */	lwz r3, 0(r27)
/* 80C40438  7E A4 AB 78 */	mr r4, r21
/* 80C4043C  4B 3C BF 08 */	b mDoMtx_XrotS__FPA4_fs
/* 80C40440  80 7B 00 00 */	lwz r3, 0(r27)
/* 80C40444  7E 84 A3 78 */	mr r4, r20
/* 80C40448  4B 3C BF EC */	b mDoMtx_YrotM__FPA4_fs
/* 80C4044C  38 61 00 84 */	addi r3, r1, 0x84
/* 80C40450  38 81 00 78 */	addi r4, r1, 0x78
/* 80C40454  4B 63 0A 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C40458  C0 3A FF F4 */	lfs f1, -0xc(r26)
/* 80C4045C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C40460  EC 01 00 2A */	fadds f0, f1, f0
/* 80C40464  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80C40468  C0 3A FF F8 */	lfs f1, -8(r26)
/* 80C4046C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C40470  EC 01 00 2A */	fadds f0, f1, f0
/* 80C40474  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80C40478  C0 3A FF FC */	lfs f1, -4(r26)
/* 80C4047C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C40480  EC 01 00 2A */	fadds f0, f1, f0
/* 80C40484  D0 1A 00 08 */	stfs f0, 8(r26)
/* 80C40488  B2 B9 FF FA */	sth r21, -6(r25)
/* 80C4048C  B2 99 FF FC */	sth r20, -4(r25)
/* 80C40490  80 17 00 00 */	lwz r0, 0(r23)
/* 80C40494  7C 00 E2 14 */	add r0, r0, r28
/* 80C40498  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80C4049C  40 82 00 68 */	bne lbl_80C40504
/* 80C404A0  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80C404A4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C404A8  C0 3A 00 04 */	lfs f1, 4(r26)
/* 80C404AC  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80C404B0  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80C404B4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C404B8  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80C404BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C404C0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C404C4  38 61 00 90 */	addi r3, r1, 0x90
/* 80C404C8  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C404CC  4B 62 78 40 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80C404D0  7E C3 B3 78 */	mr r3, r22
/* 80C404D4  38 81 00 90 */	addi r4, r1, 0x90
/* 80C404D8  4B 43 3F C8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80C404DC  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80C404E0  EC 00 08 2A */	fadds f0, f0, f1
/* 80C404E4  D0 18 00 00 */	stfs f0, 0(r24)
/* 80C404E8  C0 18 00 00 */	lfs f0, 0(r24)
/* 80C404EC  C0 5A 00 04 */	lfs f2, 4(r26)
/* 80C404F0  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C404F4  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80C404F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C404FC  40 81 00 08 */	ble lbl_80C40504
/* 80C40500  D0 58 00 00 */	stfs f2, 0(r24)
lbl_80C40504:
/* 80C40504  3B 9C 00 01 */	addi r28, r28, 1
/* 80C40508  2C 1C 00 03 */	cmpwi r28, 3
/* 80C4050C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80C40510  3B 39 00 06 */	addi r25, r25, 6
/* 80C40514  3B 18 00 04 */	addi r24, r24, 4
/* 80C40518  41 80 FE 60 */	blt lbl_80C40378
/* 80C4051C  A8 1E 00 08 */	lha r0, 8(r30)
/* 80C40520  2C 00 01 D5 */	cmpwi r0, 0x1d5
/* 80C40524  40 82 00 34 */	bne lbl_80C40558
/* 80C40528  88 1E 11 04 */	lbz r0, 0x1104(r30)
/* 80C4052C  28 00 00 00 */	cmplwi r0, 0
/* 80C40530  41 82 00 18 */	beq lbl_80C40548
/* 80C40534  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80C40538  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C4053C  7C 00 00 D0 */	neg r0, r0
/* 80C40540  7C 18 07 34 */	extsh r24, r0
/* 80C40544  48 00 00 24 */	b lbl_80C40568
lbl_80C40548:
/* 80C40548  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80C4054C  7C 00 00 D0 */	neg r0, r0
/* 80C40550  7C 18 07 34 */	extsh r24, r0
/* 80C40554  48 00 00 14 */	b lbl_80C40568
lbl_80C40558:
/* 80C40558  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80C4055C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C40560  7C 00 00 D0 */	neg r0, r0
/* 80C40564  7C 18 07 34 */	extsh r24, r0
lbl_80C40568:
/* 80C40568  3B 20 00 00 */	li r25, 0
/* 80C4056C  3B 40 00 00 */	li r26, 0
/* 80C40570  3B 60 00 00 */	li r27, 0
/* 80C40574  3B 80 00 00 */	li r28, 0
/* 80C40578  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C4057C  3B C3 11 48 */	addi r30, r3, l_HIO@l
/* 80C40580  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C40584  3A E3 07 68 */	addi r23, r3, calc_mtx@l
lbl_80C40588:
/* 80C40588  7C 7F E2 14 */	add r3, r31, r28
/* 80C4058C  C0 23 05 7C */	lfs f1, 0x57c(r3)
/* 80C40590  C0 43 05 80 */	lfs f2, 0x580(r3)
/* 80C40594  C0 63 05 84 */	lfs f3, 0x584(r3)
/* 80C40598  38 60 00 00 */	li r3, 0
/* 80C4059C  4B 63 08 C0 */	b MtxTrans__FfffUc
/* 80C405A0  80 77 00 00 */	lwz r3, 0(r23)
/* 80C405A4  7E DF DA 14 */	add r22, r31, r27
/* 80C405A8  A8 96 05 C4 */	lha r4, 0x5c4(r22)
/* 80C405AC  4B 3C BD F0 */	b mDoMtx_XrotM__FPA4_fs
/* 80C405B0  80 77 00 00 */	lwz r3, 0(r23)
/* 80C405B4  A8 96 05 C6 */	lha r4, 0x5c6(r22)
/* 80C405B8  4B 3C BE 7C */	b mDoMtx_YrotM__FPA4_fs
/* 80C405BC  2C 19 00 01 */	cmpwi r25, 1
/* 80C405C0  3B 18 40 00 */	addi r24, r24, 0x4000
/* 80C405C4  40 82 00 10 */	bne lbl_80C405D4
/* 80C405C8  C3 7F 04 EC */	lfs f27, 0x4ec(r31)
/* 80C405CC  C3 9D 00 10 */	lfs f28, 0x10(r29)
/* 80C405D0  48 00 00 0C */	b lbl_80C405DC
lbl_80C405D4:
/* 80C405D4  C3 7E 00 0C */	lfs f27, 0xc(r30)
/* 80C405D8  C3 9D 00 88 */	lfs f28, 0x88(r29)
lbl_80C405DC:
/* 80C405DC  80 77 00 00 */	lwz r3, 0(r23)
/* 80C405E0  7F 04 C3 78 */	mr r4, r24
/* 80C405E4  4B 3C BE E8 */	b mDoMtx_ZrotM__FPA4_fs
/* 80C405E8  FC 20 D8 90 */	fmr f1, f27
/* 80C405EC  FC 40 D8 90 */	fmr f2, f27
/* 80C405F0  FC 60 D8 90 */	fmr f3, f27
/* 80C405F4  38 60 00 01 */	li r3, 1
/* 80C405F8  4B 63 08 AC */	b MtxScale__FfffUc
/* 80C405FC  2C 19 00 01 */	cmpwi r25, 1
/* 80C40600  40 82 00 20 */	bne lbl_80C40620
/* 80C40604  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C40608  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C4060C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C40610  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80C40614  1C 00 01 F4 */	mulli r0, r0, 0x1f4
/* 80C40618  7C 04 07 34 */	extsh r4, r0
/* 80C4061C  4B 3C BD 80 */	b mDoMtx_XrotM__FPA4_fs
lbl_80C40620:
/* 80C40620  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80C40624  FC 40 08 90 */	fmr f2, f1
/* 80C40628  FC 60 E0 90 */	fmr f3, f28
/* 80C4062C  38 60 00 01 */	li r3, 1
/* 80C40630  4B 63 08 2C */	b MtxTrans__FfffUc
/* 80C40634  80 77 00 00 */	lwz r3, 0(r23)
/* 80C40638  38 80 C0 00 */	li r4, -16384
/* 80C4063C  4B 3C BD 60 */	b mDoMtx_XrotM__FPA4_fs
/* 80C40640  80 77 00 00 */	lwz r3, 0(r23)
/* 80C40644  38 1A 05 70 */	addi r0, r26, 0x570
/* 80C40648  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80C4064C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C40650  4B 70 5E 60 */	b PSMTXCopy
/* 80C40654  2C 19 00 01 */	cmpwi r25, 1
/* 80C40658  40 82 00 28 */	bne lbl_80C40680
/* 80C4065C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C40660  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C40664  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C40668  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C4066C  38 61 00 84 */	addi r3, r1, 0x84
/* 80C40670  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C40674  4B 63 08 78 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C40678  A8 1F 05 CC */	lha r0, 0x5cc(r31)
/* 80C4067C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80C40680:
/* 80C40680  3B 39 00 01 */	addi r25, r25, 1
/* 80C40684  2C 19 00 02 */	cmpwi r25, 2
/* 80C40688  3B 5A 00 04 */	addi r26, r26, 4
/* 80C4068C  3B 7B 00 06 */	addi r27, r27, 6
/* 80C40690  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80C40694  41 80 FE F4 */	blt lbl_80C40588
/* 80C40698  38 00 00 00 */	li r0, 0
/* 80C4069C  98 1F 06 1C */	stb r0, 0x61c(r31)
/* 80C406A0  38 61 00 90 */	addi r3, r1, 0x90
/* 80C406A4  38 80 FF FF */	li r4, -1
/* 80C406A8  4B 43 6F 48 */	b __dt__11dBgS_GndChkFv
lbl_80C406AC:
/* 80C406AC  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 80C406B0  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 80C406B4  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 80C406B8  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 80C406BC  E3 A1 01 48 */	psq_l f29, 328(r1), 0, 0 /* qr0 */
/* 80C406C0  CB A1 01 40 */	lfd f29, 0x140(r1)
/* 80C406C4  E3 81 01 38 */	psq_l f28, 312(r1), 0, 0 /* qr0 */
/* 80C406C8  CB 81 01 30 */	lfd f28, 0x130(r1)
/* 80C406CC  E3 61 01 28 */	psq_l f27, 296(r1), 0, 0 /* qr0 */
/* 80C406D0  CB 61 01 20 */	lfd f27, 0x120(r1)
/* 80C406D4  39 61 01 20 */	addi r11, r1, 0x120
/* 80C406D8  4B 72 1B 2C */	b _restgpr_20
/* 80C406DC  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80C406E0  7C 08 03 A6 */	mtlr r0
/* 80C406E4  38 21 01 70 */	addi r1, r1, 0x170
/* 80C406E8  4E 80 00 20 */	blr 

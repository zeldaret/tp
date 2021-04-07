lbl_805FEC58:
/* 805FEC58  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 805FEC5C  7C 08 02 A6 */	mflr r0
/* 805FEC60  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 805FEC64  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 805FEC68  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, 0 /* qr0 */
/* 805FEC6C  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 805FEC70  F3 C1 01 98 */	psq_st f30, 408(r1), 0, 0 /* qr0 */
/* 805FEC74  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 805FEC78  F3 A1 01 88 */	psq_st f29, 392(r1), 0, 0 /* qr0 */
/* 805FEC7C  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 805FEC80  F3 81 01 78 */	psq_st f28, 376(r1), 0, 0 /* qr0 */
/* 805FEC84  DB 61 01 60 */	stfd f27, 0x160(r1)
/* 805FEC88  F3 61 01 68 */	psq_st f27, 360(r1), 0, 0 /* qr0 */
/* 805FEC8C  39 61 01 60 */	addi r11, r1, 0x160
/* 805FEC90  4B D6 35 11 */	bl __save_gpr
/* 805FEC94  7C 7F 1B 78 */	mr r31, r3
/* 805FEC98  3C 60 80 60 */	lis r3, cNullVec__6Z2Calc@ha /* 0x806029D0@ha */
/* 805FEC9C  3A E3 29 D0 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x806029D0@l */
/* 805FECA0  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805FECA4  3B 03 26 64 */	addi r24, r3, lit_3815@l /* 0x80602664@l */
/* 805FECA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FECAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FECB0  80 03 5D AC */	lwz r0, 0x5dac(r3)
/* 805FECB4  90 01 01 10 */	stw r0, 0x110(r1)
/* 805FECB8  A8 1F 26 C4 */	lha r0, 0x26c4(r31)
/* 805FECBC  2C 00 00 00 */	cmpwi r0, 0
/* 805FECC0  40 82 00 3C */	bne lbl_805FECFC
/* 805FECC4  80 61 01 10 */	lwz r3, 0x110(r1)
/* 805FECC8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805FECCC  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 805FECD0  7D 89 03 A6 */	mtctr r12
/* 805FECD4  4E 80 04 21 */	bctrl 
/* 805FECD8  2C 03 00 00 */	cmpwi r3, 0
/* 805FECDC  40 82 00 20 */	bne lbl_805FECFC
/* 805FECE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FECE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FECE8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805FECEC  28 00 00 00 */	cmplwi r0, 0
/* 805FECF0  41 82 00 0C */	beq lbl_805FECFC
/* 805FECF4  38 60 00 01 */	li r3, 1
/* 805FECF8  48 00 1C C0 */	b lbl_806009B8
lbl_805FECFC:
/* 805FECFC  88 7F 27 38 */	lbz r3, 0x2738(r31)
/* 805FED00  28 03 00 00 */	cmplwi r3, 0
/* 805FED04  41 82 00 E0 */	beq lbl_805FEDE4
/* 805FED08  38 03 FF FF */	addi r0, r3, -1
/* 805FED0C  98 1F 27 38 */	stb r0, 0x2738(r31)
/* 805FED10  88 1F 27 38 */	lbz r0, 0x2738(r31)
/* 805FED14  28 00 00 00 */	cmplwi r0, 0
/* 805FED18  40 82 00 C4 */	bne lbl_805FEDDC
/* 805FED1C  38 00 00 01 */	li r0, 1
/* 805FED20  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805FED24  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805FED28  98 03 12 CC */	stb r0, 0x12cc(r3)
/* 805FED2C  38 00 00 0A */	li r0, 0xa
/* 805FED30  B0 1F 0A FE */	sth r0, 0xafe(r31)
/* 805FED34  38 00 00 00 */	li r0, 0
/* 805FED38  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 805FED3C  90 1F 1F C4 */	stw r0, 0x1fc4(r31)
/* 805FED40  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FED44  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805FED48  80 1F 1F B4 */	lwz r0, 0x1fb4(r31)
/* 805FED4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FED50  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805FED54  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805FED58  38 81 00 0C */	addi r4, r1, 0xc
/* 805FED5C  4B A1 AA 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805FED60  38 00 00 01 */	li r0, 1
/* 805FED64  98 03 39 69 */	stb r0, 0x3969(r3)
/* 805FED68  7F E3 FB 78 */	mr r3, r31
/* 805FED6C  38 80 00 05 */	li r4, 5
/* 805FED70  C0 38 00 8C */	lfs f1, 0x8c(r24)
/* 805FED74  38 A0 00 00 */	li r5, 0
/* 805FED78  C0 58 00 00 */	lfs f2, 0(r24)
/* 805FED7C  4B FF 5D CD */	bl h_anm_init__FP11b_gnd_classifUcf
/* 805FED80  38 00 00 5F */	li r0, 0x5f
/* 805FED84  B0 1F 26 C4 */	sth r0, 0x26c4(r31)
/* 805FED88  3C 60 80 60 */	lis r3, s_fkdel_sub__FPvPv@ha /* 0x805FA3E4@ha */
/* 805FED8C  38 63 A3 E4 */	addi r3, r3, s_fkdel_sub__FPvPv@l /* 0x805FA3E4@l */
/* 805FED90  7F E4 FB 78 */	mr r4, r31
/* 805FED94  4B A2 25 A5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 805FED98  38 00 00 64 */	li r0, 0x64
/* 805FED9C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805FEDA0  38 00 00 00 */	li r0, 0
/* 805FEDA4  B0 1F 1E 0A */	sth r0, 0x1e0a(r31)
/* 805FEDA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805FEDAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805FEDB0  80 63 00 00 */	lwz r3, 0(r3)
/* 805FEDB4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805FEDB8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000088@ha */
/* 805FEDBC  38 84 00 88 */	addi r4, r4, 0x0088 /* 0x01000088@l */
/* 805FEDC0  38 A0 00 00 */	li r5, 0
/* 805FEDC4  38 C0 00 00 */	li r6, 0
/* 805FEDC8  4B CB 02 49 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 805FEDCC  38 60 00 0F */	li r3, 0xf
/* 805FEDD0  38 80 FF FF */	li r4, -1
/* 805FEDD4  4B A2 EC C9 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 805FEDD8  48 00 00 0C */	b lbl_805FEDE4
lbl_805FEDDC:
/* 805FEDDC  38 60 00 01 */	li r3, 1
/* 805FEDE0  48 00 1B D8 */	b lbl_806009B8
lbl_805FEDE4:
/* 805FEDE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FEDE8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FEDEC  39 C4 0F 38 */	addi r14, r4, 0xf38
/* 805FEDF0  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 805FEDF4  28 00 00 00 */	cmplwi r0, 0
/* 805FEDF8  41 82 00 24 */	beq lbl_805FEE1C
/* 805FEDFC  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 805FEE00  81 E3 10 18 */	lwz r15, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 805FEE04  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 805FEE08  4B A1 CD 0D */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 805FEE0C  7C 03 78 40 */	cmplw r3, r15
/* 805FEE10  40 82 00 0C */	bne lbl_805FEE1C
/* 805FEE14  38 60 00 01 */	li r3, 1
/* 805FEE18  48 00 1B A0 */	b lbl_806009B8
lbl_805FEE1C:
/* 805FEE1C  A8 7F 0A FC */	lha r3, 0xafc(r31)
/* 805FEE20  38 03 00 01 */	addi r0, r3, 1
/* 805FEE24  B0 1F 0A FC */	sth r0, 0xafc(r31)
/* 805FEE28  38 60 00 00 */	li r3, 0
/* 805FEE2C  38 00 00 0A */	li r0, 0xa
/* 805FEE30  7C 09 03 A6 */	mtctr r0
lbl_805FEE34:
/* 805FEE34  38 A3 0C 44 */	addi r5, r3, 0xc44
/* 805FEE38  7C 9F 2A AE */	lhax r4, r31, r5
/* 805FEE3C  2C 04 00 00 */	cmpwi r4, 0
/* 805FEE40  41 82 00 0C */	beq lbl_805FEE4C
/* 805FEE44  38 04 FF FF */	addi r0, r4, -1
/* 805FEE48  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_805FEE4C:
/* 805FEE4C  38 63 00 02 */	addi r3, r3, 2
/* 805FEE50  42 00 FF E4 */	bdnz lbl_805FEE34
/* 805FEE54  A8 7F 0C 58 */	lha r3, 0xc58(r31)
/* 805FEE58  2C 03 00 00 */	cmpwi r3, 0
/* 805FEE5C  41 82 00 0C */	beq lbl_805FEE68
/* 805FEE60  38 03 FF FF */	addi r0, r3, -1
/* 805FEE64  B0 1F 0C 58 */	sth r0, 0xc58(r31)
lbl_805FEE68:
/* 805FEE68  A8 7F 0C 5A */	lha r3, 0xc5a(r31)
/* 805FEE6C  2C 03 00 00 */	cmpwi r3, 0
/* 805FEE70  41 82 00 0C */	beq lbl_805FEE7C
/* 805FEE74  38 03 FF FF */	addi r0, r3, -1
/* 805FEE78  B0 1F 0C 5A */	sth r0, 0xc5a(r31)
lbl_805FEE7C:
/* 805FEE7C  A8 7F 0C 72 */	lha r3, 0xc72(r31)
/* 805FEE80  2C 03 00 00 */	cmpwi r3, 0
/* 805FEE84  41 82 00 0C */	beq lbl_805FEE90
/* 805FEE88  38 03 FF FF */	addi r0, r3, -1
/* 805FEE8C  B0 1F 0C 72 */	sth r0, 0xc72(r31)
lbl_805FEE90:
/* 805FEE90  7F E3 FB 78 */	mr r3, r31
/* 805FEE94  4B FF B8 C5 */	bl action__FP11b_gnd_class
/* 805FEE98  7F E3 FB 78 */	mr r3, r31
/* 805FEE9C  4B FF C9 09 */	bl demo_camera__FP11b_gnd_class
/* 805FEEA0  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 805FEEA4  2C 00 00 00 */	cmpwi r0, 0
/* 805FEEA8  41 82 01 58 */	beq lbl_805FF000
/* 805FEEAC  7F E3 FB 78 */	mr r3, r31
/* 805FEEB0  4B FF B5 CD */	bl h_damage_check__FP11b_gnd_class
/* 805FEEB4  7F E3 FB 78 */	mr r3, r31
/* 805FEEB8  4B FF 66 BD */	bl gake_check__FP11b_gnd_class
/* 805FEEBC  98 7F 0C 76 */	stb r3, 0xc76(r31)
/* 805FEEC0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 805FEEC4  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FEEC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FEECC  4C 40 13 82 */	cror 2, 0, 2
/* 805FEED0  40 82 01 38 */	bne lbl_805FF008
/* 805FEED4  80 1F 0D 00 */	lwz r0, 0xd00(r31)
/* 805FEED8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805FEEDC  41 82 01 2C */	beq lbl_805FF008
/* 805FEEE0  38 61 00 AC */	addi r3, r1, 0xac
/* 805FEEE4  4B A7 86 99 */	bl __ct__11dBgS_GndChkFv
/* 805FEEE8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FEEEC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FEEF0  80 63 00 00 */	lwz r3, 0(r3)
/* 805FEEF4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805FEEF8  4B A0 D4 E5 */	bl mDoMtx_YrotS__FPA4_fs
/* 805FEEFC  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FEF00  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FEF04  C0 18 00 54 */	lfs f0, 0x54(r24)
/* 805FEF08  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FEF0C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FEF10  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FEF14  38 81 00 94 */	addi r4, r1, 0x94
/* 805FEF18  4B C7 1F D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FEF1C  38 61 00 94 */	addi r3, r1, 0x94
/* 805FEF20  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805FEF24  7C 65 1B 78 */	mr r5, r3
/* 805FEF28  4B D4 81 69 */	bl PSVECAdd
/* 805FEF2C  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FEF30  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FEF34  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FEF38  38 81 00 7C */	addi r4, r1, 0x7c
/* 805FEF3C  4B C7 1F B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FEF40  38 61 00 7C */	addi r3, r1, 0x7c
/* 805FEF44  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805FEF48  7C 65 1B 78 */	mr r5, r3
/* 805FEF4C  4B D4 81 45 */	bl PSVECAdd
/* 805FEF50  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 805FEF54  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805FEF58  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 805FEF5C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805FEF60  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805FEF64  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805FEF68  38 61 00 AC */	addi r3, r1, 0xac
/* 805FEF6C  38 81 00 88 */	addi r4, r1, 0x88
/* 805FEF70  4B C6 8D 9D */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 805FEF74  7D C3 73 78 */	mr r3, r14
/* 805FEF78  38 81 00 AC */	addi r4, r1, 0xac
/* 805FEF7C  4B A7 55 25 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805FEF80  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 805FEF84  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 805FEF88  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805FEF8C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805FEF90  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805FEF94  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805FEF98  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805FEF9C  38 61 00 AC */	addi r3, r1, 0xac
/* 805FEFA0  38 81 00 88 */	addi r4, r1, 0x88
/* 805FEFA4  4B C6 8D 69 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 805FEFA8  7D C3 73 78 */	mr r3, r14
/* 805FEFAC  38 81 00 AC */	addi r4, r1, 0xac
/* 805FEFB0  4B A7 54 F1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805FEFB4  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 805FEFB8  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 805FEFBC  FC 00 08 18 */	frsp f0, f1
/* 805FEFC0  EC 22 00 28 */	fsubs f1, f2, f0
/* 805FEFC4  FC 00 0A 10 */	fabs f0, f1
/* 805FEFC8  FC 00 00 18 */	frsp f0, f0
/* 805FEFCC  C0 58 00 54 */	lfs f2, 0x54(r24)
/* 805FEFD0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805FEFD4  4C 40 13 82 */	cror 2, 0, 2
/* 805FEFD8  40 82 00 10 */	bne lbl_805FEFE8
/* 805FEFDC  4B C6 86 99 */	bl cM_atan2s__Fff
/* 805FEFE0  7C 03 00 D0 */	neg r0, r3
/* 805FEFE4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_805FEFE8:
/* 805FEFE8  C0 18 02 F0 */	lfs f0, 0x2f0(r24)
/* 805FEFEC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805FEFF0  38 61 00 AC */	addi r3, r1, 0xac
/* 805FEFF4  38 80 FF FF */	li r4, -1
/* 805FEFF8  4B A7 85 F9 */	bl __dt__11dBgS_GndChkFv
/* 805FEFFC  48 00 00 0C */	b lbl_805FF008
lbl_805FF000:
/* 805FF000  7F E3 FB 78 */	mr r3, r31
/* 805FF004  4B FF A8 F5 */	bl damage_check__FP11b_gnd_class
lbl_805FF008:
/* 805FF008  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805FF00C  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 805FF010  38 A0 00 02 */	li r5, 2
/* 805FF014  38 C0 10 00 */	li r6, 0x1000
/* 805FF018  4B C7 15 F1 */	bl cLib_addCalcAngleS2__FPssss
/* 805FF01C  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 805FF020  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 805FF024  38 A0 00 02 */	li r5, 2
/* 805FF028  38 C0 10 00 */	li r6, 0x1000
/* 805FF02C  4B C7 15 DD */	bl cLib_addCalcAngleS2__FPssss
/* 805FF030  C0 18 02 9C */	lfs f0, 0x29c(r24)
/* 805FF034  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805FF038  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF03C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF040  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF044  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805FF048  4B A0 D3 95 */	bl mDoMtx_YrotS__FPA4_fs
/* 805FF04C  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FF050  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FF054  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FF058  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805FF05C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FF060  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FF064  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF068  4B C7 1E 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FF06C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 805FF070  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 805FF074  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805FF078  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 805FF07C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805FF080  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 805FF084  7C 65 1B 78 */	mr r5, r3
/* 805FF088  4B D4 80 09 */	bl PSVECAdd
/* 805FF08C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 805FF090  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 805FF094  EC 01 00 2A */	fadds f0, f1, f0
/* 805FF098  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805FF09C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 805FF0A0  C0 18 02 F4 */	lfs f0, 0x2f4(r24)
/* 805FF0A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FF0A8  40 80 00 08 */	bge lbl_805FF0B0
/* 805FF0AC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_805FF0B0:
/* 805FF0B0  C0 3F 0E B0 */	lfs f1, 0xeb0(r31)
/* 805FF0B4  C0 18 00 C4 */	lfs f0, 0xc4(r24)
/* 805FF0B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FF0BC  40 81 00 58 */	ble lbl_805FF114
/* 805FF0C0  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FF0C4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FF0C8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FF0CC  FC 00 08 50 */	fneg f0, f1
/* 805FF0D0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FF0D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF0D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF0DC  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF0E0  A8 9F 0E AC */	lha r4, 0xeac(r31)
/* 805FF0E4  4B A0 D2 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 805FF0E8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FF0EC  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF0F0  4B C7 1D FD */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FF0F4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805FF0F8  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF0FC  7C 65 1B 78 */	mr r5, r3
/* 805FF100  4B D4 7F 91 */	bl PSVECAdd
/* 805FF104  38 7F 0E B0 */	addi r3, r31, 0xeb0
/* 805FF108  C0 38 00 00 */	lfs f1, 0(r24)
/* 805FF10C  C0 58 02 F8 */	lfs f2, 0x2f8(r24)
/* 805FF110  4B C7 09 71 */	bl cLib_addCalc0__FPfff
lbl_805FF114:
/* 805FF114  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 805FF118  2C 00 00 00 */	cmpwi r0, 0
/* 805FF11C  41 82 00 A0 */	beq lbl_805FF1BC
/* 805FF120  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF124  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF128  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF12C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805FF130  4B A0 D2 AD */	bl mDoMtx_YrotS__FPA4_fs
/* 805FF134  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FF138  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FF13C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FF140  C0 18 00 78 */	lfs f0, 0x78(r24)
/* 805FF144  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FF148  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FF14C  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF150  4B C7 1D 9D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FF154  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805FF158  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF15C  7C 65 1B 78 */	mr r5, r3
/* 805FF160  4B D4 7F 31 */	bl PSVECAdd
/* 805FF164  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 805FF168  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF16C  7C 65 1B 78 */	mr r5, r3
/* 805FF170  4B D4 7F 21 */	bl PSVECAdd
/* 805FF174  38 7F 0C D4 */	addi r3, r31, 0xcd4
/* 805FF178  7D C4 73 78 */	mr r4, r14
/* 805FF17C  4B A7 79 31 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805FF180  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805FF184  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF188  7C 65 1B 78 */	mr r5, r3
/* 805FF18C  4B D4 7F 29 */	bl PSVECSubtract
/* 805FF190  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 805FF194  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF198  7C 65 1B 78 */	mr r5, r3
/* 805FF19C  4B D4 7F 19 */	bl PSVECSubtract
/* 805FF1A0  38 7F 0E B4 */	addi r3, r31, 0xeb4
/* 805FF1A4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805FF1A8  48 00 34 2D */	bl __as__4cXyzFRC4cXyz
/* 805FF1AC  38 7F 0E C0 */	addi r3, r31, 0xec0
/* 805FF1B0  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 805FF1B4  48 00 18 85 */	bl __as__5csXyzFRC5csXyz
/* 805FF1B8  48 00 00 10 */	b lbl_805FF1C8
lbl_805FF1BC:
/* 805FF1BC  38 7F 0C D4 */	addi r3, r31, 0xcd4
/* 805FF1C0  7D C4 73 78 */	mr r4, r14
/* 805FF1C4  4B A7 78 E9 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_805FF1C8:
/* 805FF1C8  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 805FF1CC  2C 00 00 00 */	cmpwi r0, 0
/* 805FF1D0  41 82 03 4C */	beq lbl_805FF51C
/* 805FF1D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805FF1D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805FF1DC  C0 3F 0E B4 */	lfs f1, 0xeb4(r31)
/* 805FF1E0  C0 5F 0E B8 */	lfs f2, 0xeb8(r31)
/* 805FF1E4  C0 7F 0E BC */	lfs f3, 0xebc(r31)
/* 805FF1E8  4B D4 77 01 */	bl PSMTXTrans
/* 805FF1EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805FF1F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805FF1F4  A8 9F 0E C2 */	lha r4, 0xec2(r31)
/* 805FF1F8  4B A0 D2 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 805FF1FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805FF200  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805FF204  A8 9F 0E C0 */	lha r4, 0xec0(r31)
/* 805FF208  4B A0 D1 95 */	bl mDoMtx_XrotM__FPA4_fs
/* 805FF20C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805FF210  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805FF214  A8 9F 0E C4 */	lha r4, 0xec4(r31)
/* 805FF218  A8 1F 0C 5C */	lha r0, 0xc5c(r31)
/* 805FF21C  7C 04 02 14 */	add r0, r4, r0
/* 805FF220  7C 04 07 34 */	extsh r4, r0
/* 805FF224  4B A0 D2 A9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805FF228  38 7F 0C 5C */	addi r3, r31, 0xc5c
/* 805FF22C  38 80 00 00 */	li r4, 0
/* 805FF230  38 A0 00 08 */	li r5, 8
/* 805FF234  38 C0 01 00 */	li r6, 0x100
/* 805FF238  4B C7 13 D1 */	bl cLib_addCalcAngleS2__FPssss
/* 805FF23C  3C 60 80 60 */	lis r3, l_HIO@ha /* 0x80602FB4@ha */
/* 805FF240  38 63 2F B4 */	addi r3, r3, l_HIO@l /* 0x80602FB4@l */
/* 805FF244  C0 23 00 08 */	lfs f1, 8(r3)
/* 805FF248  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 805FF24C  EC 21 00 32 */	fmuls f1, f1, f0
/* 805FF250  FC 40 08 90 */	fmr f2, f1
/* 805FF254  FC 60 08 90 */	fmr f3, f1
/* 805FF258  4B A0 DB E1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 805FF25C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805FF260  82 03 00 04 */	lwz r16, 4(r3)
/* 805FF264  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805FF268  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805FF26C  38 90 00 24 */	addi r4, r16, 0x24
/* 805FF270  4B D4 72 41 */	bl PSMTXCopy
/* 805FF274  C0 38 02 FC */	lfs f1, 0x2fc(r24)
/* 805FF278  C0 1F 0D 6C */	lfs f0, 0xd6c(r31)
/* 805FF27C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805FF280  41 82 00 50 */	beq lbl_805FF2D0
/* 805FF284  80 7F 0D 00 */	lwz r3, 0xd00(r31)
/* 805FF288  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 805FF28C  41 82 00 24 */	beq lbl_805FF2B0
/* 805FF290  C0 3F 0E A0 */	lfs f1, 0xea0(r31)
/* 805FF294  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805FF298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FF29C  40 81 00 14 */	ble lbl_805FF2B0
/* 805FF2A0  38 7F 0E 54 */	addi r3, r31, 0xe54
/* 805FF2A4  4B BA C2 1D */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 805FF2A8  54 6E 06 3E */	clrlwi r14, r3, 0x18
/* 805FF2AC  48 00 00 28 */	b lbl_805FF2D4
lbl_805FF2B0:
/* 805FF2B0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 805FF2B4  41 82 00 14 */	beq lbl_805FF2C8
/* 805FF2B8  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 805FF2BC  4B BA C2 05 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 805FF2C0  54 6E 06 3E */	clrlwi r14, r3, 0x18
/* 805FF2C4  48 00 00 10 */	b lbl_805FF2D4
lbl_805FF2C8:
/* 805FF2C8  39 C0 00 00 */	li r14, 0
/* 805FF2CC  48 00 00 08 */	b lbl_805FF2D4
lbl_805FF2D0:
/* 805FF2D0  39 C0 00 00 */	li r14, 0
lbl_805FF2D4:
/* 805FF2D4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805FF2D8  7C 03 07 74 */	extsb r3, r0
/* 805FF2DC  4B A2 DD 91 */	bl dComIfGp_getReverb__Fi
/* 805FF2E0  7C 65 1B 78 */	mr r5, r3
/* 805FF2E4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805FF2E8  7D C4 73 78 */	mr r4, r14
/* 805FF2EC  4B A1 1D C5 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 805FF2F0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805FF2F4  4B A1 1E F9 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 805FF2F8  80 70 00 84 */	lwz r3, 0x84(r16)
/* 805FF2FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FF300  38 63 00 60 */	addi r3, r3, 0x60
/* 805FF304  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FF308  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FF30C  80 84 00 00 */	lwz r4, 0(r4)
/* 805FF310  4B D4 71 A1 */	bl PSMTXCopy
/* 805FF314  C0 18 01 34 */	lfs f0, 0x134(r24)
/* 805FF318  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FF31C  C0 18 01 24 */	lfs f0, 0x124(r24)
/* 805FF320  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FF324  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FF328  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FF32C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FF330  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF334  4B C7 1B B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FF338  38 7F 10 28 */	addi r3, r31, 0x1028
/* 805FF33C  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF340  4B C7 03 09 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805FF344  38 7F 10 28 */	addi r3, r31, 0x1028
/* 805FF348  C0 38 00 28 */	lfs f1, 0x28(r24)
/* 805FF34C  4B C7 03 BD */	bl SetR__8cM3dGSphFf
/* 805FF350  80 70 00 84 */	lwz r3, 0x84(r16)
/* 805FF354  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FF358  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 805FF35C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FF360  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FF364  80 84 00 00 */	lwz r4, 0(r4)
/* 805FF368  4B D4 71 49 */	bl PSMTXCopy
/* 805FF36C  C0 18 00 74 */	lfs f0, 0x74(r24)
/* 805FF370  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FF374  C0 18 03 00 */	lfs f0, 0x300(r24)
/* 805FF378  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FF37C  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FF380  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FF384  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FF388  38 9F 1F B8 */	addi r4, r31, 0x1fb8
/* 805FF38C  4B C7 1B 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FF390  38 7F 11 60 */	addi r3, r31, 0x1160
/* 805FF394  38 9F 1F B8 */	addi r4, r31, 0x1fb8
/* 805FF398  4B C7 02 B1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805FF39C  38 7F 11 60 */	addi r3, r31, 0x1160
/* 805FF3A0  C0 38 02 6C */	lfs f1, 0x26c(r24)
/* 805FF3A4  4B C7 03 65 */	bl SetR__8cM3dGSphFf
/* 805FF3A8  80 1F 0F 04 */	lwz r0, 0xf04(r31)
/* 805FF3AC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805FF3B0  90 1F 0F 04 */	stw r0, 0xf04(r31)
/* 805FF3B4  80 1F 10 3C */	lwz r0, 0x103c(r31)
/* 805FF3B8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805FF3BC  90 1F 10 3C */	stw r0, 0x103c(r31)
/* 805FF3C0  88 1F 1E 08 */	lbz r0, 0x1e08(r31)
/* 805FF3C4  28 00 00 00 */	cmplwi r0, 0
/* 805FF3C8  41 82 00 20 */	beq lbl_805FF3E8
/* 805FF3CC  80 1F 0F 1C */	lwz r0, 0xf1c(r31)
/* 805FF3D0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805FF3D4  90 1F 0F 1C */	stw r0, 0xf1c(r31)
/* 805FF3D8  80 1F 10 54 */	lwz r0, 0x1054(r31)
/* 805FF3DC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805FF3E0  90 1F 10 54 */	stw r0, 0x1054(r31)
/* 805FF3E4  48 00 00 1C */	b lbl_805FF400
lbl_805FF3E8:
/* 805FF3E8  80 1F 0F 1C */	lwz r0, 0xf1c(r31)
/* 805FF3EC  60 00 00 01 */	ori r0, r0, 1
/* 805FF3F0  90 1F 0F 1C */	stw r0, 0xf1c(r31)
/* 805FF3F4  80 1F 10 54 */	lwz r0, 0x1054(r31)
/* 805FF3F8  60 00 00 01 */	ori r0, r0, 1
/* 805FF3FC  90 1F 10 54 */	stw r0, 0x1054(r31)
lbl_805FF400:
/* 805FF400  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FF404  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FF408  3A 23 23 3C */	addi r17, r3, 0x233c
/* 805FF40C  7E 23 8B 78 */	mr r3, r17
/* 805FF410  38 9F 0F 04 */	addi r4, r31, 0xf04
/* 805FF414  4B C6 57 95 */	bl Set__4cCcSFP8cCcD_Obj
/* 805FF418  7E 23 8B 78 */	mr r3, r17
/* 805FF41C  38 9F 10 3C */	addi r4, r31, 0x103c
/* 805FF420  4B C6 57 89 */	bl Set__4cCcSFP8cCcD_Obj
/* 805FF424  3A 60 00 00 */	li r19, 0
/* 805FF428  3A 80 00 00 */	li r20, 0
/* 805FF42C  3A A0 00 00 */	li r21, 0
/* 805FF430  39 F7 03 04 */	addi r15, r23, 0x304
/* 805FF434  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF438  39 C3 07 68 */	addi r14, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF43C  C3 98 00 14 */	lfs f28, 0x14(r24)
lbl_805FF440:
/* 805FF440  80 70 00 84 */	lwz r3, 0x84(r16)
/* 805FF444  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FF448  7C 0F A8 2E */	lwzx r0, r15, r21
/* 805FF44C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805FF450  7C 63 02 14 */	add r3, r3, r0
/* 805FF454  80 8E 00 00 */	lwz r4, 0(r14)
/* 805FF458  4B D4 70 59 */	bl PSMTXCopy
/* 805FF45C  D3 81 00 A0 */	stfs f28, 0xa0(r1)
/* 805FF460  D3 81 00 A4 */	stfs f28, 0xa4(r1)
/* 805FF464  D3 81 00 A8 */	stfs f28, 0xa8(r1)
/* 805FF468  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FF46C  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF470  4B C7 1A 7D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FF474  7E 5F A2 14 */	add r18, r31, r20
/* 805FF478  3A D2 12 98 */	addi r22, r18, 0x1298
/* 805FF47C  7E C3 B3 78 */	mr r3, r22
/* 805FF480  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF484  4B C7 01 C5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805FF488  7E C3 B3 78 */	mr r3, r22
/* 805FF48C  C0 38 00 10 */	lfs f1, 0x10(r24)
/* 805FF490  4B C7 02 79 */	bl SetR__8cM3dGSphFf
/* 805FF494  88 1F 1E 08 */	lbz r0, 0x1e08(r31)
/* 805FF498  28 00 00 00 */	cmplwi r0, 0
/* 805FF49C  40 82 00 2C */	bne lbl_805FF4C8
/* 805FF4A0  2C 13 00 02 */	cmpwi r19, 2
/* 805FF4A4  40 80 00 24 */	bge lbl_805FF4C8
/* 805FF4A8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 805FF4AC  C0 18 00 74 */	lfs f0, 0x74(r24)
/* 805FF4B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FF4B4  40 81 00 14 */	ble lbl_805FF4C8
/* 805FF4B8  80 12 11 74 */	lwz r0, 0x1174(r18)
/* 805FF4BC  60 00 00 01 */	ori r0, r0, 1
/* 805FF4C0  90 12 11 74 */	stw r0, 0x1174(r18)
/* 805FF4C4  48 00 00 10 */	b lbl_805FF4D4
lbl_805FF4C8:
/* 805FF4C8  80 12 11 74 */	lwz r0, 0x1174(r18)
/* 805FF4CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805FF4D0  90 12 11 74 */	stw r0, 0x1174(r18)
lbl_805FF4D4:
/* 805FF4D4  88 1F 1E 08 */	lbz r0, 0x1e08(r31)
/* 805FF4D8  28 00 00 00 */	cmplwi r0, 0
/* 805FF4DC  41 82 00 14 */	beq lbl_805FF4F0
/* 805FF4E0  80 12 11 8C */	lwz r0, 0x118c(r18)
/* 805FF4E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805FF4E8  90 12 11 8C */	stw r0, 0x118c(r18)
/* 805FF4EC  48 00 00 10 */	b lbl_805FF4FC
lbl_805FF4F0:
/* 805FF4F0  80 12 11 8C */	lwz r0, 0x118c(r18)
/* 805FF4F4  60 00 00 01 */	ori r0, r0, 1
/* 805FF4F8  90 12 11 8C */	stw r0, 0x118c(r18)
lbl_805FF4FC:
/* 805FF4FC  7E 23 8B 78 */	mr r3, r17
/* 805FF500  38 92 11 74 */	addi r4, r18, 0x1174
/* 805FF504  4B C6 56 A5 */	bl Set__4cCcSFP8cCcD_Obj
/* 805FF508  3A 73 00 01 */	addi r19, r19, 1
/* 805FF50C  2C 13 00 04 */	cmpwi r19, 4
/* 805FF510  3A 94 01 38 */	addi r20, r20, 0x138
/* 805FF514  3A B5 00 04 */	addi r21, r21, 4
/* 805FF518  41 80 FF 28 */	blt lbl_805FF440
lbl_805FF51C:
/* 805FF51C  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 805FF520  2C 00 00 00 */	cmpwi r0, 0
/* 805FF524  40 82 00 58 */	bne lbl_805FF57C
/* 805FF528  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805FF52C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805FF530  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805FF534  38 60 00 00 */	li r3, 0
/* 805FF538  4B C7 19 25 */	bl MtxTrans__FfffUc
/* 805FF53C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF540  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF544  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF548  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805FF54C  4B A0 CE E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 805FF550  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF554  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF558  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF55C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 805FF560  4B A0 CE 3D */	bl mDoMtx_XrotM__FPA4_fs
/* 805FF564  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF568  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF56C  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF570  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 805FF574  4B A0 CF 59 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805FF578  48 00 00 48 */	b lbl_805FF5C0
lbl_805FF57C:
/* 805FF57C  80 70 00 84 */	lwz r3, 0x84(r16)
/* 805FF580  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FF584  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 805FF588  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FF58C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FF590  80 84 00 00 */	lwz r4, 0(r4)
/* 805FF594  4B D4 6F 1D */	bl PSMTXCopy
/* 805FF598  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF59C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF5A0  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF5A4  38 80 C0 00 */	li r4, -16384
/* 805FF5A8  4B A0 CF 25 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805FF5AC  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 805FF5B0  C0 58 00 E8 */	lfs f2, 0xe8(r24)
/* 805FF5B4  C0 78 03 00 */	lfs f3, 0x300(r24)
/* 805FF5B8  38 60 00 01 */	li r3, 1
/* 805FF5BC  4B C7 18 A1 */	bl MtxTrans__FfffUc
lbl_805FF5C0:
/* 805FF5C0  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805FF5C4  82 C3 00 04 */	lwz r22, 4(r3)
/* 805FF5C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF5CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF5D0  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF5D4  38 96 00 24 */	addi r4, r22, 0x24
/* 805FF5D8  4B D4 6E D9 */	bl PSMTXCopy
/* 805FF5DC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805FF5E0  7C 03 07 74 */	extsb r3, r0
/* 805FF5E4  4B A2 DA 89 */	bl dComIfGp_getReverb__Fi
/* 805FF5E8  7C 65 1B 78 */	mr r5, r3
/* 805FF5EC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805FF5F0  38 80 00 00 */	li r4, 0
/* 805FF5F4  4B A1 1A BD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 805FF5F8  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 805FF5FC  2C 00 00 25 */	cmpwi r0, 0x25
/* 805FF600  41 82 00 0C */	beq lbl_805FF60C
/* 805FF604  2C 00 00 26 */	cmpwi r0, 0x26
/* 805FF608  40 82 00 B4 */	bne lbl_805FF6BC
lbl_805FF60C:
/* 805FF60C  A8 1F 0A FC */	lha r0, 0xafc(r31)
/* 805FF610  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 805FF614  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805FF618  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805FF61C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805FF620  7C 43 04 2E */	lfsx f2, r3, r0
/* 805FF624  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 805FF628  C0 38 03 04 */	lfs f1, 0x304(r24)
/* 805FF62C  C0 18 00 B4 */	lfs f0, 0xb4(r24)
/* 805FF630  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805FF634  EC 01 00 2A */	fadds f0, f1, f0
/* 805FF638  FC 00 00 1E */	fctiwz f0, f0
/* 805FF63C  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 805FF640  80 81 01 04 */	lwz r4, 0x104(r1)
/* 805FF644  38 A0 00 01 */	li r5, 1
/* 805FF648  38 C0 01 F4 */	li r6, 0x1f4
/* 805FF64C  4B C7 0F BD */	bl cLib_addCalcAngleS2__FPssss
/* 805FF650  A8 7F 1F C8 */	lha r3, 0x1fc8(r31)
/* 805FF654  2C 03 00 00 */	cmpwi r3, 0
/* 805FF658  41 82 00 84 */	beq lbl_805FF6DC
/* 805FF65C  38 03 FF FF */	addi r0, r3, -1
/* 805FF660  B0 1F 1F C8 */	sth r0, 0x1fc8(r31)
/* 805FF664  A8 1F 0A FC */	lha r0, 0xafc(r31)
/* 805FF668  1C 00 55 00 */	mulli r0, r0, 0x5500
/* 805FF66C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805FF670  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805FF674  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805FF678  7C 63 04 2E */	lfsx f3, r3, r0
/* 805FF67C  C0 58 02 6C */	lfs f2, 0x26c(r24)
/* 805FF680  A8 1F 1F C8 */	lha r0, 0x1fc8(r31)
/* 805FF684  C8 38 00 20 */	lfd f1, 0x20(r24)
/* 805FF688  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805FF68C  90 01 01 04 */	stw r0, 0x104(r1)
/* 805FF690  3C 00 43 30 */	lis r0, 0x4330
/* 805FF694  90 01 01 00 */	stw r0, 0x100(r1)
/* 805FF698  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 805FF69C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805FF6A0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805FF6A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805FF6A8  FC 00 00 1E */	fctiwz f0, f0
/* 805FF6AC  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 805FF6B0  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 805FF6B4  B0 1F 1F CA */	sth r0, 0x1fca(r31)
/* 805FF6B8  48 00 00 24 */	b lbl_805FF6DC
lbl_805FF6BC:
/* 805FF6BC  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 805FF6C0  38 80 00 00 */	li r4, 0
/* 805FF6C4  38 A0 00 01 */	li r5, 1
/* 805FF6C8  38 C0 00 64 */	li r6, 0x64
/* 805FF6CC  4B C7 0F 3D */	bl cLib_addCalcAngleS2__FPssss
/* 805FF6D0  38 00 00 00 */	li r0, 0
/* 805FF6D4  B0 1F 1F CA */	sth r0, 0x1fca(r31)
/* 805FF6D8  B0 1F 1F C8 */	sth r0, 0x1fc8(r31)
lbl_805FF6DC:
/* 805FF6DC  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 805FF6E0  4B A0 DD 49 */	bl play__14mDoExt_baseAnmFv
/* 805FF6E4  80 1F 07 48 */	lwz r0, 0x748(r31)
/* 805FF6E8  2C 00 00 00 */	cmpwi r0, 0
/* 805FF6EC  40 82 00 1C */	bne lbl_805FF708
/* 805FF6F0  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FF6F4  54 00 10 3A */	slwi r0, r0, 2
/* 805FF6F8  7C 7F 02 14 */	add r3, r31, r0
/* 805FF6FC  80 63 07 28 */	lwz r3, 0x728(r3)
/* 805FF700  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805FF704  48 00 00 14 */	b lbl_805FF718
lbl_805FF708:
/* 805FF708  54 00 10 3A */	slwi r0, r0, 2
/* 805FF70C  7C 7F 02 14 */	add r3, r31, r0
/* 805FF710  80 63 07 28 */	lwz r3, 0x728(r3)
/* 805FF714  4B A0 DD 15 */	bl play__14mDoExt_baseAnmFv
lbl_805FF718:
/* 805FF718  C0 1F 0C 6C */	lfs f0, 0xc6c(r31)
/* 805FF71C  80 7F 07 44 */	lwz r3, 0x744(r31)
/* 805FF720  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805FF724  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805FF728  4B A1 1A C5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 805FF72C  88 1F 07 71 */	lbz r0, 0x771(r31)
/* 805FF730  28 00 00 00 */	cmplwi r0, 0
/* 805FF734  40 82 00 CC */	bne lbl_805FF800
/* 805FF738  A8 7F 07 72 */	lha r3, 0x772(r31)
/* 805FF73C  2C 03 00 00 */	cmpwi r3, 0
/* 805FF740  41 82 00 8C */	beq lbl_805FF7CC
/* 805FF744  38 03 00 01 */	addi r0, r3, 1
/* 805FF748  B0 1F 07 72 */	sth r0, 0x772(r31)
/* 805FF74C  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 805FF750  38 63 00 24 */	addi r3, r3, 0x24
/* 805FF754  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FF758  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FF75C  80 84 00 00 */	lwz r4, 0(r4)
/* 805FF760  4B D4 6D 51 */	bl PSMTXCopy
/* 805FF764  C0 38 00 74 */	lfs f1, 0x74(r24)
/* 805FF768  C0 58 00 14 */	lfs f2, 0x14(r24)
/* 805FF76C  C0 78 02 9C */	lfs f3, 0x29c(r24)
/* 805FF770  38 60 00 01 */	li r3, 1
/* 805FF774  4B C7 16 E9 */	bl MtxTrans__FfffUc
/* 805FF778  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF77C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF780  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF784  38 80 03 20 */	li r4, 0x320
/* 805FF788  4B A0 CC AD */	bl mDoMtx_YrotM__FPA4_fs
/* 805FF78C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF790  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF794  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF798  38 80 00 00 */	li r4, 0
/* 805FF79C  4B A0 CC 01 */	bl mDoMtx_XrotM__FPA4_fs
/* 805FF7A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF7A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF7A8  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF7AC  38 80 00 00 */	li r4, 0
/* 805FF7B0  4B A0 CD 1D */	bl mDoMtx_ZrotM__FPA4_fs
/* 805FF7B4  A8 1F 07 72 */	lha r0, 0x772(r31)
/* 805FF7B8  2C 00 00 14 */	cmpwi r0, 0x14
/* 805FF7BC  40 81 00 2C */	ble lbl_805FF7E8
/* 805FF7C0  38 00 00 01 */	li r0, 1
/* 805FF7C4  98 1F 07 71 */	stb r0, 0x771(r31)
/* 805FF7C8  48 00 00 20 */	b lbl_805FF7E8
lbl_805FF7CC:
/* 805FF7CC  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FF7D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FF7D4  38 63 04 80 */	addi r3, r3, 0x480
/* 805FF7D8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FF7DC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FF7E0  80 84 00 00 */	lwz r4, 0(r4)
/* 805FF7E4  4B D4 6C CD */	bl PSMTXCopy
lbl_805FF7E8:
/* 805FF7E8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF7EC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF7F0  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF7F4  80 9F 07 6C */	lwz r4, 0x76c(r31)
/* 805FF7F8  38 84 00 24 */	addi r4, r4, 0x24
/* 805FF7FC  4B D4 6C B5 */	bl PSMTXCopy
lbl_805FF800:
/* 805FF800  88 1F 07 70 */	lbz r0, 0x770(r31)
/* 805FF804  28 00 00 01 */	cmplwi r0, 1
/* 805FF808  40 82 00 70 */	bne lbl_805FF878
/* 805FF80C  C0 38 03 08 */	lfs f1, 0x308(r24)
/* 805FF810  C0 58 03 0C */	lfs f2, 0x30c(r24)
/* 805FF814  C0 78 03 10 */	lfs f3, 0x310(r24)
/* 805FF818  38 60 00 01 */	li r3, 1
/* 805FF81C  4B C7 16 41 */	bl MtxTrans__FfffUc
/* 805FF820  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF824  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF828  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF82C  38 80 2A 30 */	li r4, 0x2a30
/* 805FF830  4B A0 CB 6D */	bl mDoMtx_XrotM__FPA4_fs
/* 805FF834  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF838  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF83C  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF840  38 80 02 26 */	li r4, 0x226
/* 805FF844  4B A0 CB F1 */	bl mDoMtx_YrotM__FPA4_fs
/* 805FF848  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF84C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF850  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF854  38 80 4E 3E */	li r4, 0x4e3e
/* 805FF858  4B A0 CC 75 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805FF85C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF860  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF864  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF868  80 9F 07 68 */	lwz r4, 0x768(r31)
/* 805FF86C  38 84 00 24 */	addi r4, r4, 0x24
/* 805FF870  4B D4 6C 41 */	bl PSMTXCopy
/* 805FF874  48 00 00 38 */	b lbl_805FF8AC
lbl_805FF878:
/* 805FF878  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FF87C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FF880  38 63 06 30 */	addi r3, r3, 0x630
/* 805FF884  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FF888  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FF88C  80 84 00 00 */	lwz r4, 0(r4)
/* 805FF890  4B D4 6C 21 */	bl PSMTXCopy
/* 805FF894  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF898  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF89C  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF8A0  80 9F 07 68 */	lwz r4, 0x768(r31)
/* 805FF8A4  38 84 00 24 */	addi r4, r4, 0x24
/* 805FF8A8  4B D4 6C 09 */	bl PSMTXCopy
lbl_805FF8AC:
/* 805FF8AC  A8 1F 0C 24 */	lha r0, 0xc24(r31)
/* 805FF8B0  2C 00 00 50 */	cmpwi r0, 0x50
/* 805FF8B4  41 80 00 C8 */	blt lbl_805FF97C
/* 805FF8B8  A8 7F 0C 26 */	lha r3, 0xc26(r31)
/* 805FF8BC  38 03 00 01 */	addi r0, r3, 1
/* 805FF8C0  B0 1F 0C 26 */	sth r0, 0xc26(r31)
/* 805FF8C4  A8 1F 0C 26 */	lha r0, 0xc26(r31)
/* 805FF8C8  2C 00 00 01 */	cmpwi r0, 1
/* 805FF8CC  40 81 00 0C */	ble lbl_805FF8D8
/* 805FF8D0  38 00 00 01 */	li r0, 1
/* 805FF8D4  B0 1F 0C 26 */	sth r0, 0xc26(r31)
lbl_805FF8D8:
/* 805FF8D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF8DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF8E0  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF8E4  38 80 BF B8 */	li r4, -16456
/* 805FF8E8  4B A0 CB 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 805FF8EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF8F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF8F4  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF8F8  38 80 32 DD */	li r4, 0x32dd
/* 805FF8FC  4B A0 CA A1 */	bl mDoMtx_XrotM__FPA4_fs
/* 805FF900  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF904  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF908  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF90C  A8 9F 0C 28 */	lha r4, 0xc28(r31)
/* 805FF910  38 04 4E CF */	addi r0, r4, 0x4ecf
/* 805FF914  7C 04 07 34 */	extsh r4, r0
/* 805FF918  4B A0 CB B5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805FF91C  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 805FF920  FC 40 08 90 */	fmr f2, f1
/* 805FF924  C0 78 03 14 */	lfs f3, 0x314(r24)
/* 805FF928  38 60 00 01 */	li r3, 1
/* 805FF92C  4B C7 15 31 */	bl MtxTrans__FfffUc
/* 805FF930  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FF934  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FF938  80 63 00 00 */	lwz r3, 0(r3)
/* 805FF93C  A8 1F 0C 26 */	lha r0, 0xc26(r31)
/* 805FF940  54 00 10 3A */	slwi r0, r0, 2
/* 805FF944  7C 9F 02 14 */	add r4, r31, r0
/* 805FF948  80 84 0C 2C */	lwz r4, 0xc2c(r4)
/* 805FF94C  38 84 00 24 */	addi r4, r4, 0x24
/* 805FF950  4B D4 6B 61 */	bl PSMTXCopy
/* 805FF954  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FF958  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FF95C  38 63 06 30 */	addi r3, r3, 0x630
/* 805FF960  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FF964  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FF968  80 84 00 00 */	lwz r4, 0(r4)
/* 805FF96C  4B D4 6B 45 */	bl PSMTXCopy
/* 805FF970  38 00 00 00 */	li r0, 0
/* 805FF974  B0 1F 0C 28 */	sth r0, 0xc28(r31)
/* 805FF978  48 00 00 28 */	b lbl_805FF9A0
lbl_805FF97C:
/* 805FF97C  2C 00 00 0A */	cmpwi r0, 0xa
/* 805FF980  40 81 00 10 */	ble lbl_805FF990
/* 805FF984  38 00 00 01 */	li r0, 1
/* 805FF988  B0 1F 0C 26 */	sth r0, 0xc26(r31)
/* 805FF98C  48 00 00 14 */	b lbl_805FF9A0
lbl_805FF990:
/* 805FF990  38 00 FF FF */	li r0, -1
/* 805FF994  B0 1F 0C 26 */	sth r0, 0xc26(r31)
/* 805FF998  38 00 00 00 */	li r0, 0
/* 805FF99C  B0 1F 0C 24 */	sth r0, 0xc24(r31)
lbl_805FF9A0:
/* 805FF9A0  38 7F 0C 24 */	addi r3, r31, 0xc24
/* 805FF9A4  38 80 00 00 */	li r4, 0
/* 805FF9A8  38 A0 00 01 */	li r5, 1
/* 805FF9AC  38 C0 00 14 */	li r6, 0x14
/* 805FF9B0  4B C7 0C 59 */	bl cLib_addCalcAngleS2__FPssss
/* 805FF9B4  88 1F 0C 78 */	lbz r0, 0xc78(r31)
/* 805FF9B8  28 00 00 00 */	cmplwi r0, 0
/* 805FF9BC  40 82 00 98 */	bne lbl_805FFA54
/* 805FF9C0  C0 18 00 10 */	lfs f0, 0x10(r24)
/* 805FF9C4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FF9C8  C0 18 01 B8 */	lfs f0, 0x1b8(r24)
/* 805FF9CC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FF9D0  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FF9D4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FF9D8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FF9DC  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF9E0  4B C7 15 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FF9E4  38 7F 26 9C */	addi r3, r31, 0x269c
/* 805FF9E8  38 81 00 94 */	addi r4, r1, 0x94
/* 805FF9EC  48 00 2B E9 */	bl __as__4cXyzFRC4cXyz
/* 805FF9F0  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 805FF9F4  2C 00 00 00 */	cmpwi r0, 0
/* 805FF9F8  41 82 00 44 */	beq lbl_805FFA3C
/* 805FF9FC  38 7F 1B 5C */	addi r3, r31, 0x1b5c
/* 805FFA00  C0 38 02 B0 */	lfs f1, 0x2b0(r24)
/* 805FFA04  4B C6 FD 05 */	bl SetR__8cM3dGSphFf
/* 805FFA08  80 61 01 10 */	lwz r3, 0x110(r1)
/* 805FFA0C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805FFA10  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 805FFA14  7D 89 03 A6 */	mtctr r12
/* 805FFA18  4E 80 04 21 */	bctrl 
/* 805FFA1C  28 03 00 00 */	cmplwi r3, 0
/* 805FFA20  41 82 00 10 */	beq lbl_805FFA30
/* 805FFA24  38 00 00 0D */	li r0, 0xd
/* 805FFA28  98 1F 1A AF */	stb r0, 0x1aaf(r31)
/* 805FFA2C  48 00 00 FC */	b lbl_805FFB28
lbl_805FFA30:
/* 805FFA30  38 00 00 00 */	li r0, 0
/* 805FFA34  98 1F 1A AF */	stb r0, 0x1aaf(r31)
/* 805FFA38  48 00 00 F0 */	b lbl_805FFB28
lbl_805FFA3C:
/* 805FFA3C  38 7F 1B 5C */	addi r3, r31, 0x1b5c
/* 805FFA40  C0 38 00 28 */	lfs f1, 0x28(r24)
/* 805FFA44  4B C6 FC C5 */	bl SetR__8cM3dGSphFf
/* 805FFA48  38 00 00 0A */	li r0, 0xa
/* 805FFA4C  98 1F 1A AF */	stb r0, 0x1aaf(r31)
/* 805FFA50  48 00 00 D8 */	b lbl_805FFB28
lbl_805FFA54:
/* 805FFA54  28 00 00 01 */	cmplwi r0, 1
/* 805FFA58  40 82 00 54 */	bne lbl_805FFAAC
/* 805FFA5C  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FFA60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FFA64  38 63 07 B0 */	addi r3, r3, 0x7b0
/* 805FFA68  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FFA6C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FFA70  80 84 00 00 */	lwz r4, 0(r4)
/* 805FFA74  4B D4 6A 3D */	bl PSMTXCopy
/* 805FFA78  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FFA7C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FFA80  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FFA84  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FFA88  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFA8C  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFA90  4B C7 14 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FFA94  38 7F 1B 5C */	addi r3, r31, 0x1b5c
/* 805FFA98  C0 38 01 34 */	lfs f1, 0x134(r24)
/* 805FFA9C  4B C6 FC 6D */	bl SetR__8cM3dGSphFf
/* 805FFAA0  38 00 00 0A */	li r0, 0xa
/* 805FFAA4  98 1F 1A AF */	stb r0, 0x1aaf(r31)
/* 805FFAA8  48 00 00 80 */	b lbl_805FFB28
lbl_805FFAAC:
/* 805FFAAC  28 00 00 02 */	cmplwi r0, 2
/* 805FFAB0  40 82 00 54 */	bne lbl_805FFB04
/* 805FFAB4  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FFAB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FFABC  38 63 03 90 */	addi r3, r3, 0x390
/* 805FFAC0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FFAC4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FFAC8  80 84 00 00 */	lwz r4, 0(r4)
/* 805FFACC  4B D4 69 E5 */	bl PSMTXCopy
/* 805FFAD0  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FFAD4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FFAD8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FFADC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FFAE0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFAE4  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFAE8  4B C7 14 05 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FFAEC  38 7F 1B 5C */	addi r3, r31, 0x1b5c
/* 805FFAF0  C0 38 01 34 */	lfs f1, 0x134(r24)
/* 805FFAF4  4B C6 FC 15 */	bl SetR__8cM3dGSphFf
/* 805FFAF8  38 00 00 0A */	li r0, 0xa
/* 805FFAFC  98 1F 1A AF */	stb r0, 0x1aaf(r31)
/* 805FFB00  48 00 00 28 */	b lbl_805FFB28
lbl_805FFB04:
/* 805FFB04  C0 18 00 10 */	lfs f0, 0x10(r24)
/* 805FFB08  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FFB0C  C0 18 03 18 */	lfs f0, 0x318(r24)
/* 805FFB10  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FFB14  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FFB18  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FFB1C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFB20  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFB24  4B C7 13 C9 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_805FFB28:
/* 805FFB28  88 1F 0C 77 */	lbz r0, 0xc77(r31)
/* 805FFB2C  28 00 00 00 */	cmplwi r0, 0
/* 805FFB30  40 82 00 18 */	bne lbl_805FFB48
/* 805FFB34  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 805FFB38  C0 18 03 1C */	lfs f0, 0x31c(r24)
/* 805FFB3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FFB40  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805FFB44  48 00 00 34 */	b lbl_805FFB78
lbl_805FFB48:
/* 805FFB48  28 00 00 02 */	cmplwi r0, 2
/* 805FFB4C  40 82 00 18 */	bne lbl_805FFB64
/* 805FFB50  38 00 00 0B */	li r0, 0xb
/* 805FFB54  98 1F 1A AF */	stb r0, 0x1aaf(r31)
/* 805FFB58  38 00 00 04 */	li r0, 4
/* 805FFB5C  98 1F 1A 4C */	stb r0, 0x1a4c(r31)
/* 805FFB60  48 00 00 0C */	b lbl_805FFB6C
lbl_805FFB64:
/* 805FFB64  38 00 00 02 */	li r0, 2
/* 805FFB68  98 1F 1A 4C */	stb r0, 0x1a4c(r31)
lbl_805FFB6C:
/* 805FFB6C  38 00 00 00 */	li r0, 0
/* 805FFB70  98 1F 0C 78 */	stb r0, 0xc78(r31)
/* 805FFB74  98 1F 0C 77 */	stb r0, 0xc77(r31)
lbl_805FFB78:
/* 805FFB78  38 7F 1B 5C */	addi r3, r31, 0x1b5c
/* 805FFB7C  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFB80  4B C6 FA C9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805FFB84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FFB88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FFB8C  39 C3 23 3C */	addi r14, r3, 0x233c
/* 805FFB90  7D C3 73 78 */	mr r3, r14
/* 805FFB94  38 9F 1A 38 */	addi r4, r31, 0x1a38
/* 805FFB98  4B C6 50 11 */	bl Set__4cCcSFP8cCcD_Obj
/* 805FFB9C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FFBA0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FFBA4  80 63 00 00 */	lwz r3, 0(r3)
/* 805FFBA8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805FFBAC  4B A0 C8 31 */	bl mDoMtx_YrotS__FPA4_fs
/* 805FFBB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805FFBB4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805FFBB8  80 63 00 00 */	lwz r3, 0(r3)
/* 805FFBBC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 805FFBC0  4B A0 C7 DD */	bl mDoMtx_XrotM__FPA4_fs
/* 805FFBC4  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 805FFBC8  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 805FFBCC  C0 18 03 18 */	lfs f0, 0x318(r24)
/* 805FFBD0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FFBD4  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 805FFBD8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFBDC  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFBE0  4B C7 13 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FFBE4  38 61 00 94 */	addi r3, r1, 0x94
/* 805FFBE8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805FFBEC  7C 65 1B 78 */	mr r5, r3
/* 805FFBF0  4B D4 74 A1 */	bl PSVECAdd
/* 805FFBF4  88 1F 0C 79 */	lbz r0, 0xc79(r31)
/* 805FFBF8  28 00 00 00 */	cmplwi r0, 0
/* 805FFBFC  41 82 00 34 */	beq lbl_805FFC30
/* 805FFC00  38 7F 1C 94 */	addi r3, r31, 0x1c94
/* 805FFC04  C0 38 00 F0 */	lfs f1, 0xf0(r24)
/* 805FFC08  4B C6 FB 01 */	bl SetR__8cM3dGSphFf
/* 805FFC0C  38 7F 1C 94 */	addi r3, r31, 0x1c94
/* 805FFC10  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFC14  4B C6 FA 35 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805FFC18  7D C3 73 78 */	mr r3, r14
/* 805FFC1C  38 9F 1B 70 */	addi r4, r31, 0x1b70
/* 805FFC20  4B C6 4F 89 */	bl Set__4cCcSFP8cCcD_Obj
/* 805FFC24  38 00 00 00 */	li r0, 0
/* 805FFC28  98 1F 0C 79 */	stb r0, 0xc79(r31)
/* 805FFC2C  48 00 00 14 */	b lbl_805FFC40
lbl_805FFC30:
/* 805FFC30  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 805FFC34  C0 18 03 20 */	lfs f0, 0x320(r24)
/* 805FFC38  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FFC3C  D0 01 00 98 */	stfs f0, 0x98(r1)
lbl_805FFC40:
/* 805FFC40  38 7F 1C 94 */	addi r3, r31, 0x1c94
/* 805FFC44  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFC48  4B C6 FA 01 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805FFC4C  7D C3 73 78 */	mr r3, r14
/* 805FFC50  38 9F 1B 70 */	addi r4, r31, 0x1b70
/* 805FFC54  4B C6 4F 55 */	bl Set__4cCcSFP8cCcD_Obj
/* 805FFC58  38 7F 1B 70 */	addi r3, r31, 0x1b70
/* 805FFC5C  4B A8 48 05 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 805FFC60  28 03 00 00 */	cmplwi r3, 0
/* 805FFC64  41 82 00 28 */	beq lbl_805FFC8C
/* 805FFC68  38 7F 1B 70 */	addi r3, r31, 0x1b70
/* 805FFC6C  4B A8 48 8D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 805FFC70  7C 64 1B 78 */	mr r4, r3
/* 805FFC74  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805FFC78  38 A0 00 28 */	li r5, 0x28
/* 805FFC7C  38 C0 00 00 */	li r6, 0
/* 805FFC80  4B A8 78 95 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805FFC84  38 00 00 07 */	li r0, 7
/* 805FFC88  B0 1F 1F C8 */	sth r0, 0x1fc8(r31)
lbl_805FFC8C:
/* 805FFC8C  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FFC90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FFC94  38 63 00 C0 */	addi r3, r3, 0xc0
/* 805FFC98  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FFC9C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FFCA0  80 84 00 00 */	lwz r4, 0(r4)
/* 805FFCA4  4B D4 68 0D */	bl PSMTXCopy
/* 805FFCA8  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FFCAC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FFCB0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FFCB4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FFCB8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFCBC  38 9F 05 38 */	addi r4, r31, 0x538
/* 805FFCC0  4B C7 12 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FFCC4  38 7F 05 50 */	addi r3, r31, 0x550
/* 805FFCC8  38 9F 05 38 */	addi r4, r31, 0x538
/* 805FFCCC  48 00 29 09 */	bl __as__4cXyzFRC4cXyz
/* 805FFCD0  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 805FFCD4  C0 38 00 F0 */	lfs f1, 0xf0(r24)
/* 805FFCD8  EC 00 08 2A */	fadds f0, f0, f1
/* 805FFCDC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805FFCE0  FF 80 08 90 */	fmr f28, f1
/* 805FFCE4  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 805FFCE8  2C 00 00 00 */	cmpwi r0, 0
/* 805FFCEC  41 82 00 08 */	beq lbl_805FFCF4
/* 805FFCF0  C3 98 00 28 */	lfs f28, 0x28(r24)
lbl_805FFCF4:
/* 805FFCF4  A8 1F 0C 58 */	lha r0, 0xc58(r31)
/* 805FFCF8  2C 00 00 00 */	cmpwi r0, 0
/* 805FFCFC  41 82 00 20 */	beq lbl_805FFD1C
/* 805FFD00  C0 18 03 24 */	lfs f0, 0x324(r24)
/* 805FFD04  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805FFD08  C0 18 03 28 */	lfs f0, 0x328(r24)
/* 805FFD0C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805FFD10  C0 18 03 2C */	lfs f0, 0x32c(r24)
/* 805FFD14  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805FFD18  48 00 00 14 */	b lbl_805FFD2C
lbl_805FFD1C:
/* 805FFD1C  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FFD20  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805FFD24  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805FFD28  D0 01 00 78 */	stfs f0, 0x78(r1)
lbl_805FFD2C:
/* 805FFD2C  38 61 00 58 */	addi r3, r1, 0x58
/* 805FFD30  38 9F 05 38 */	addi r4, r31, 0x538
/* 805FFD34  38 A1 00 70 */	addi r5, r1, 0x70
/* 805FFD38  4B C6 6D AD */	bl __pl__4cXyzCFRC3Vec
/* 805FFD3C  38 7F 17 B4 */	addi r3, r31, 0x17b4
/* 805FFD40  38 81 00 58 */	addi r4, r1, 0x58
/* 805FFD44  4B C6 F9 05 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805FFD48  38 7F 17 B4 */	addi r3, r31, 0x17b4
/* 805FFD4C  C0 38 00 10 */	lfs f1, 0x10(r24)
/* 805FFD50  4B C6 F9 B9 */	bl SetR__8cM3dGSphFf
/* 805FFD54  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FFD58  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FFD5C  38 63 00 60 */	addi r3, r3, 0x60
/* 805FFD60  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FFD64  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FFD68  80 84 00 00 */	lwz r4, 0(r4)
/* 805FFD6C  4B D4 67 45 */	bl PSMTXCopy
/* 805FFD70  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFD74  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFD78  4B C7 11 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FFD7C  7F E3 FB 78 */	mr r3, r31
/* 805FFD80  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFD84  48 00 0C 99 */	bl setDownPos__13fopEn_enemy_cFPC4cXyz
/* 805FFD88  38 61 00 4C */	addi r3, r1, 0x4c
/* 805FFD8C  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFD90  38 A1 00 70 */	addi r5, r1, 0x70
/* 805FFD94  4B C6 6D 51 */	bl __pl__4cXyzCFRC3Vec
/* 805FFD98  38 7F 18 EC */	addi r3, r31, 0x18ec
/* 805FFD9C  38 81 00 4C */	addi r4, r1, 0x4c
/* 805FFDA0  4B C6 F8 A9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805FFDA4  38 7F 18 EC */	addi r3, r31, 0x18ec
/* 805FFDA8  FC 20 E0 90 */	fmr f1, f28
/* 805FFDAC  4B C6 F9 5D */	bl SetR__8cM3dGSphFf
/* 805FFDB0  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FFDB4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FFDB8  38 63 00 30 */	addi r3, r3, 0x30
/* 805FFDBC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FFDC0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FFDC4  80 84 00 00 */	lwz r4, 0(r4)
/* 805FFDC8  4B D4 66 E9 */	bl PSMTXCopy
/* 805FFDCC  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FFDD0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FFDD4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FFDD8  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FFDDC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFDE0  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFDE4  4B C7 11 09 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FFDE8  38 61 00 40 */	addi r3, r1, 0x40
/* 805FFDEC  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFDF0  38 A1 00 70 */	addi r5, r1, 0x70
/* 805FFDF4  4B C6 6C F1 */	bl __pl__4cXyzCFRC3Vec
/* 805FFDF8  38 7F 1A 24 */	addi r3, r31, 0x1a24
/* 805FFDFC  38 81 00 40 */	addi r4, r1, 0x40
/* 805FFE00  4B C6 F8 49 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805FFE04  38 7F 1A 24 */	addi r3, r31, 0x1a24
/* 805FFE08  FC 20 E0 90 */	fmr f1, f28
/* 805FFE0C  4B C6 F8 FD */	bl SetR__8cM3dGSphFf
/* 805FFE10  3A 00 00 00 */	li r16, 0
/* 805FFE14  39 E0 00 00 */	li r15, 0
lbl_805FFE18:
/* 805FFE18  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 805FFE1C  2C 00 00 00 */	cmpwi r0, 0
/* 805FFE20  41 82 00 30 */	beq lbl_805FFE50
/* 805FFE24  88 1F 1E 08 */	lbz r0, 0x1e08(r31)
/* 805FFE28  28 00 00 00 */	cmplwi r0, 0
/* 805FFE2C  41 82 00 14 */	beq lbl_805FFE40
/* 805FFE30  38 60 00 02 */	li r3, 2
/* 805FFE34  38 0F 16 B8 */	addi r0, r15, 0x16b8
/* 805FFE38  7C 7F 01 2E */	stwx r3, r31, r0
/* 805FFE3C  48 00 00 24 */	b lbl_805FFE60
lbl_805FFE40:
/* 805FFE40  38 60 20 00 */	li r3, 0x2000
/* 805FFE44  38 0F 16 B8 */	addi r0, r15, 0x16b8
/* 805FFE48  7C 7F 01 2E */	stwx r3, r31, r0
/* 805FFE4C  48 00 00 14 */	b lbl_805FFE60
lbl_805FFE50:
/* 805FFE50  3C 60 00 01 */	lis r3, 0x0001 /* 0x00012002@ha */
/* 805FFE54  38 63 20 02 */	addi r3, r3, 0x2002 /* 0x00012002@l */
/* 805FFE58  38 0F 16 B8 */	addi r0, r15, 0x16b8
/* 805FFE5C  7C 7F 01 2E */	stwx r3, r31, r0
lbl_805FFE60:
/* 805FFE60  7D C3 73 78 */	mr r3, r14
/* 805FFE64  38 8F 16 90 */	addi r4, r15, 0x1690
/* 805FFE68  7C 9F 22 14 */	add r4, r31, r4
/* 805FFE6C  4B C6 4D 3D */	bl Set__4cCcSFP8cCcD_Obj
/* 805FFE70  3A 10 00 01 */	addi r16, r16, 1
/* 805FFE74  2C 10 00 03 */	cmpwi r16, 3
/* 805FFE78  39 EF 01 38 */	addi r15, r15, 0x138
/* 805FFE7C  41 80 FF 9C */	blt lbl_805FFE18
/* 805FFE80  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FFE84  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FFE88  38 63 06 F0 */	addi r3, r3, 0x6f0
/* 805FFE8C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805FFE90  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805FFE94  4B D4 66 1D */	bl PSMTXCopy
/* 805FFE98  38 7F 26 A8 */	addi r3, r31, 0x26a8
/* 805FFE9C  48 00 0B 5D */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805FFEA0  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FFEA4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FFEA8  38 63 07 E0 */	addi r3, r3, 0x7e0
/* 805FFEAC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805FFEB0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805FFEB4  4B D4 65 FD */	bl PSMTXCopy
/* 805FFEB8  38 7F 26 B4 */	addi r3, r31, 0x26b4
/* 805FFEBC  48 00 0B 3D */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805FFEC0  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FFEC4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FFEC8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FFECC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FFED0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFED4  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFED8  4B C7 10 15 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FFEDC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805FFEE0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805FFEE4  38 7F 1D CC */	addi r3, r31, 0x1dcc
/* 805FFEE8  38 81 00 94 */	addi r4, r1, 0x94
/* 805FFEEC  4B C6 F2 F1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 805FFEF0  38 7F 1D CC */	addi r3, r31, 0x1dcc
/* 805FFEF4  C0 38 00 F0 */	lfs f1, 0xf0(r24)
/* 805FFEF8  4B C6 F3 09 */	bl SetR__8cM3dGCylFf
/* 805FFEFC  38 7F 1D CC */	addi r3, r31, 0x1dcc
/* 805FFF00  C0 38 00 54 */	lfs f1, 0x54(r24)
/* 805FFF04  4B C6 F2 F5 */	bl SetH__8cM3dGCylFf
/* 805FFF08  7D C3 73 78 */	mr r3, r14
/* 805FFF0C  38 9F 1C A8 */	addi r4, r31, 0x1ca8
/* 805FFF10  4B C6 4C 99 */	bl Set__4cCcSFP8cCcD_Obj
/* 805FFF14  88 7F 1E 0F */	lbz r3, 0x1e0f(r31)
/* 805FFF18  7C 60 07 75 */	extsb. r0, r3
/* 805FFF1C  40 81 02 E0 */	ble lbl_806001FC
/* 805FFF20  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070510@ha */
/* 805FFF24  38 03 05 10 */	addi r0, r3, 0x0510 /* 0x00070510@l */
/* 805FFF28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805FFF2C  38 7F 1E 2C */	addi r3, r31, 0x1e2c
/* 805FFF30  38 81 00 1C */	addi r4, r1, 0x1c
/* 805FFF34  38 A0 00 00 */	li r5, 0
/* 805FFF38  38 C0 FF FF */	li r6, -1
/* 805FFF3C  81 9F 1E 3C */	lwz r12, 0x1e3c(r31)
/* 805FFF40  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FFF44  7D 89 03 A6 */	mtctr r12
/* 805FFF48  4E 80 04 21 */	bctrl 
/* 805FFF4C  88 1F 1E 0F */	lbz r0, 0x1e0f(r31)
/* 805FFF50  2C 00 00 01 */	cmpwi r0, 1
/* 805FFF54  40 82 00 54 */	bne lbl_805FFFA8
/* 805FFF58  80 76 00 84 */	lwz r3, 0x84(r22)
/* 805FFF5C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FFF60  38 63 04 80 */	addi r3, r3, 0x480
/* 805FFF64  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FFF68  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FFF6C  80 84 00 00 */	lwz r4, 0(r4)
/* 805FFF70  4B D4 65 41 */	bl PSMTXCopy
/* 805FFF74  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 805FFF78  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805FFF7C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FFF80  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805FFF84  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFF88  38 9F 1E 20 */	addi r4, r31, 0x1e20
/* 805FFF8C  4B C7 0F 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FFF90  38 7F 1E 10 */	addi r3, r31, 0x1e10
/* 805FFF94  C0 38 00 00 */	lfs f1, 0(r24)
/* 805FFF98  FC 40 08 90 */	fmr f2, f1
/* 805FFF9C  C0 78 02 40 */	lfs f3, 0x240(r24)
/* 805FFFA0  4B C6 FA 9D */	bl cLib_addCalc2__FPffff
/* 805FFFA4  48 00 02 10 */	b lbl_806001B4
lbl_805FFFA8:
/* 805FFFA8  88 7F 1E 0E */	lbz r3, 0x1e0e(r31)
/* 805FFFAC  38 03 00 01 */	addi r0, r3, 1
/* 805FFFB0  98 1F 1E 0E */	stb r0, 0x1e0e(r31)
/* 805FFFB4  38 7F 1E 14 */	addi r3, r31, 0x1e14
/* 805FFFB8  38 9F 1E 20 */	addi r4, r31, 0x1e20
/* 805FFFBC  48 00 26 19 */	bl __as__4cXyzFRC4cXyz
/* 805FFFC0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFFC4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805FFFC8  48 00 26 0D */	bl __as__4cXyzFRC4cXyz
/* 805FFFCC  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 805FFFD0  C0 18 00 A8 */	lfs f0, 0xa8(r24)
/* 805FFFD4  EC 01 00 2A */	fadds f0, f1, f0
/* 805FFFD8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805FFFDC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805FFFE0  38 9F 1E 20 */	addi r4, r31, 0x1e20
/* 805FFFE4  7C 65 1B 78 */	mr r5, r3
/* 805FFFE8  4B D4 70 CD */	bl PSVECSubtract
/* 805FFFEC  88 1F 1E 0E */	lbz r0, 0x1e0e(r31)
/* 805FFFF0  28 00 00 0A */	cmplwi r0, 0xa
/* 805FFFF4  40 81 00 6C */	ble lbl_80600060
/* 805FFFF8  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 805FFFFC  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 80600000  4B C6 76 75 */	bl cM_atan2s__Fff
/* 80600004  7C 64 1B 78 */	mr r4, r3
/* 80600008  38 7F 1E 52 */	addi r3, r31, 0x1e52
/* 8060000C  38 A0 00 04 */	li r5, 4
/* 80600010  38 C0 08 00 */	li r6, 0x800
/* 80600014  4B C7 05 F5 */	bl cLib_addCalcAngleS2__FPssss
/* 80600018  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8060001C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80600020  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80600024  EC 00 00 32 */	fmuls f0, f0, f0
/* 80600028  EC 41 00 2A */	fadds f2, f1, f0
/* 8060002C  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 80600030  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80600034  40 81 00 0C */	ble lbl_80600040
/* 80600038  FC 00 10 34 */	frsqrte f0, f2
/* 8060003C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80600040:
/* 80600040  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 80600044  4B C6 76 31 */	bl cM_atan2s__Fff
/* 80600048  7C 03 00 D0 */	neg r0, r3
/* 8060004C  7C 04 07 34 */	extsh r4, r0
/* 80600050  38 7F 1E 50 */	addi r3, r31, 0x1e50
/* 80600054  38 A0 00 04 */	li r5, 4
/* 80600058  38 C0 08 00 */	li r6, 0x800
/* 8060005C  4B C7 05 AD */	bl cLib_addCalcAngleS2__FPssss
lbl_80600060:
/* 80600060  38 7F 1E 4C */	addi r3, r31, 0x1e4c
/* 80600064  C0 38 00 28 */	lfs f1, 0x28(r24)
/* 80600068  C0 58 00 00 */	lfs f2, 0(r24)
/* 8060006C  C0 78 00 84 */	lfs f3, 0x84(r24)
/* 80600070  4B C6 F9 CD */	bl cLib_addCalc2__FPffff
/* 80600074  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80600078  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8060007C  80 63 00 00 */	lwz r3, 0(r3)
/* 80600080  A8 9F 1E 52 */	lha r4, 0x1e52(r31)
/* 80600084  4B A0 C3 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 80600088  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8060008C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80600090  80 63 00 00 */	lwz r3, 0(r3)
/* 80600094  A8 9F 1E 50 */	lha r4, 0x1e50(r31)
/* 80600098  4B A0 C3 05 */	bl mDoMtx_XrotM__FPA4_fs
/* 8060009C  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 806000A0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806000A4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 806000A8  C0 1F 1E 4C */	lfs f0, 0x1e4c(r31)
/* 806000AC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 806000B0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 806000B4  38 81 00 94 */	addi r4, r1, 0x94
/* 806000B8  4B C7 0E 35 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806000BC  38 7F 1E 20 */	addi r3, r31, 0x1e20
/* 806000C0  38 81 00 94 */	addi r4, r1, 0x94
/* 806000C4  7C 65 1B 78 */	mr r5, r3
/* 806000C8  4B D4 6F C9 */	bl PSVECAdd
/* 806000CC  38 7F 1E 20 */	addi r3, r31, 0x1e20
/* 806000D0  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 806000D4  7C 65 1B 78 */	mr r5, r3
/* 806000D8  4B D4 6F B9 */	bl PSVECAdd
/* 806000DC  88 1F 1E 0E */	lbz r0, 0x1e0e(r31)
/* 806000E0  28 00 00 32 */	cmplwi r0, 0x32
/* 806000E4  40 82 00 D0 */	bne lbl_806001B4
/* 806000E8  38 00 FF FF */	li r0, -1
/* 806000EC  98 1F 1E 0F */	stb r0, 0x1e0f(r31)
/* 806000F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070511@ha */
/* 806000F4  38 03 05 11 */	addi r0, r3, 0x0511 /* 0x00070511@l */
/* 806000F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 806000FC  38 7F 1E 2C */	addi r3, r31, 0x1e2c
/* 80600100  38 81 00 18 */	addi r4, r1, 0x18
/* 80600104  38 A0 00 00 */	li r5, 0
/* 80600108  38 C0 FF FF */	li r6, -1
/* 8060010C  81 9F 1E 3C */	lwz r12, 0x1e3c(r31)
/* 80600110  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80600114  7D 89 03 A6 */	mtctr r12
/* 80600118  4E 80 04 21 */	bctrl 
/* 8060011C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80600120  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80600124  80 63 00 00 */	lwz r3, 0(r3)
/* 80600128  A8 9F 0C 3C */	lha r4, 0xc3c(r31)
/* 8060012C  4B A0 C2 B1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80600130  C0 38 00 74 */	lfs f1, 0x74(r24)
/* 80600134  4B C6 78 21 */	bl cM_rndF__Ff
/* 80600138  C0 18 01 B0 */	lfs f0, 0x1b0(r24)
/* 8060013C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80600140  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80600144  C0 38 01 28 */	lfs f1, 0x128(r24)
/* 80600148  4B C6 78 0D */	bl cM_rndF__Ff
/* 8060014C  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80600150  3A 80 00 00 */	li r20, 0
/* 80600154  39 C0 00 00 */	li r14, 0
/* 80600158  39 E0 00 00 */	li r15, 0
/* 8060015C  3A 20 00 01 */	li r17, 1
/* 80600160  3A 17 03 2C */	addi r16, r23, 0x32c
lbl_80600164:
/* 80600164  38 14 1E 56 */	addi r0, r20, 0x1e56
/* 80600168  7E 3F 01 AE */	stbx r17, r31, r0
/* 8060016C  7C 10 7C 2E */	lfsx f0, r16, r15
/* 80600170  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80600174  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80600178  7E 5F 72 14 */	add r18, r31, r14
/* 8060017C  38 92 1E D4 */	addi r4, r18, 0x1ed4
/* 80600180  4B C7 0D 6D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80600184  3A 72 1E 5C */	addi r19, r18, 0x1e5c
/* 80600188  7E 63 9B 78 */	mr r3, r19
/* 8060018C  38 9F 1E 20 */	addi r4, r31, 0x1e20
/* 80600190  48 00 24 45 */	bl __as__4cXyzFRC4cXyz
/* 80600194  38 72 1E 98 */	addi r3, r18, 0x1e98
/* 80600198  7E 64 9B 78 */	mr r4, r19
/* 8060019C  48 00 24 39 */	bl __as__4cXyzFRC4cXyz
/* 806001A0  3A 94 00 01 */	addi r20, r20, 1
/* 806001A4  2C 14 00 05 */	cmpwi r20, 5
/* 806001A8  39 CE 00 0C */	addi r14, r14, 0xc
/* 806001AC  39 EF 00 04 */	addi r15, r15, 4
/* 806001B0  41 80 FF B4 */	blt lbl_80600164
lbl_806001B4:
/* 806001B4  3A 40 00 00 */	li r18, 0
/* 806001B8  39 C0 00 00 */	li r14, 0
/* 806001BC  39 E0 00 00 */	li r15, 0
/* 806001C0  3A 17 03 14 */	addi r16, r23, 0x314
lbl_806001C4:
/* 806001C4  3A 2F 25 F0 */	addi r17, r15, 0x25f0
/* 806001C8  7C 7F 88 2E */	lwzx r3, r31, r17
/* 806001CC  7C 90 72 2E */	lhzx r4, r16, r14
/* 806001D0  38 BF 1E 20 */	addi r5, r31, 0x1e20
/* 806001D4  38 C0 00 00 */	li r6, 0
/* 806001D8  38 E0 00 00 */	li r7, 0
/* 806001DC  48 00 21 A9 */	bl dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz
/* 806001E0  7C 7F 89 2E */	stwx r3, r31, r17
/* 806001E4  3A 52 00 01 */	addi r18, r18, 1
/* 806001E8  2C 12 00 06 */	cmpwi r18, 6
/* 806001EC  39 CE 00 02 */	addi r14, r14, 2
/* 806001F0  39 EF 00 04 */	addi r15, r15, 4
/* 806001F4  41 80 FF D0 */	blt lbl_806001C4
/* 806001F8  48 00 00 94 */	b lbl_8060028C
lbl_806001FC:
/* 806001FC  7C 60 07 75 */	extsb. r0, r3
/* 80600200  40 80 00 8C */	bge lbl_8060028C
/* 80600204  3A 20 00 00 */	li r17, 0
/* 80600208  39 C0 00 00 */	li r14, 0
/* 8060020C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80600210  39 E3 61 C0 */	addi r15, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80600214:
/* 80600214  80 6F 5D 3C */	lwz r3, 0x5d3c(r15)
/* 80600218  38 63 02 10 */	addi r3, r3, 0x210
/* 8060021C  3A 0E 25 F0 */	addi r16, r14, 0x25f0
/* 80600220  7C 9F 80 2E */	lwzx r4, r31, r16
/* 80600224  4B A4 B6 F5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80600228  28 03 00 00 */	cmplwi r3, 0
/* 8060022C  41 82 00 18 */	beq lbl_80600244
/* 80600230  4B C7 EA 31 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 80600234  80 6F 5D 3C */	lwz r3, 0x5d3c(r15)
/* 80600238  38 63 02 10 */	addi r3, r3, 0x210
/* 8060023C  7C 9F 80 2E */	lwzx r4, r31, r16
/* 80600240  4B A4 B6 75 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_80600244:
/* 80600244  3A 31 00 01 */	addi r17, r17, 1
/* 80600248  2C 11 00 06 */	cmpwi r17, 6
/* 8060024C  39 CE 00 04 */	addi r14, r14, 4
/* 80600250  41 80 FF C4 */	blt lbl_80600214
/* 80600254  3A 00 00 00 */	li r16, 0
/* 80600258  39 C0 00 00 */	li r14, 0
/* 8060025C  39 F7 03 20 */	addi r15, r23, 0x320
lbl_80600260:
/* 80600260  7C 6F 72 2E */	lhzx r3, r15, r14
/* 80600264  38 9F 1E 20 */	addi r4, r31, 0x1e20
/* 80600268  38 A0 00 00 */	li r5, 0
/* 8060026C  38 C0 00 00 */	li r6, 0
/* 80600270  48 00 22 AD */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 80600274  3A 10 00 01 */	addi r16, r16, 1
/* 80600278  2C 10 00 05 */	cmpwi r16, 5
/* 8060027C  39 CE 00 02 */	addi r14, r14, 2
/* 80600280  41 80 FF E0 */	blt lbl_80600260
/* 80600284  38 00 00 00 */	li r0, 0
/* 80600288  98 1F 1E 0F */	stb r0, 0x1e0f(r31)
lbl_8060028C:
/* 8060028C  C0 18 00 00 */	lfs f0, 0(r24)
/* 80600290  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80600294  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80600298  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8060029C  38 61 00 20 */	addi r3, r1, 0x20
/* 806002A0  38 80 00 00 */	li r4, 0
/* 806002A4  38 A0 00 00 */	li r5, 0
/* 806002A8  38 C0 00 00 */	li r6, 0
/* 806002AC  4B C6 71 49 */	bl __ct__5csXyzFsss
/* 806002B0  3A 00 00 00 */	li r16, 0
/* 806002B4  3B C0 00 00 */	li r30, 0
/* 806002B8  3B A0 00 00 */	li r29, 0
/* 806002BC  3B 80 00 00 */	li r28, 0
/* 806002C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806002C4  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_806002C8:
/* 806002C8  3A 50 1E 56 */	addi r18, r16, 0x1e56
/* 806002CC  7C 1F 90 AE */	lbzx r0, r31, r18
/* 806002D0  7C 00 07 74 */	extsb r0, r0
/* 806002D4  2C 00 00 01 */	cmpwi r0, 1
/* 806002D8  40 82 01 78 */	bne lbl_80600450
/* 806002DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070512@ha */
/* 806002E0  38 03 05 12 */	addi r0, r3, 0x0512 /* 0x00070512@l */
/* 806002E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806002E8  3A 3C 1F 10 */	addi r17, r28, 0x1f10
/* 806002EC  7E 3F 8A 14 */	add r17, r31, r17
/* 806002F0  7E 23 8B 78 */	mr r3, r17
/* 806002F4  38 81 00 14 */	addi r4, r1, 0x14
/* 806002F8  38 A0 00 00 */	li r5, 0
/* 806002FC  38 C0 FF FF */	li r6, -1
/* 80600300  81 91 00 10 */	lwz r12, 0x10(r17)
/* 80600304  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80600308  7D 89 03 A6 */	mtctr r12
/* 8060030C  4E 80 04 21 */	bctrl 
/* 80600310  7D DF EA 14 */	add r14, r31, r29
/* 80600314  38 6E 1E 98 */	addi r3, r14, 0x1e98
/* 80600318  3A 8E 1E 5C */	addi r20, r14, 0x1e5c
/* 8060031C  7E 84 A3 78 */	mr r4, r20
/* 80600320  48 00 22 B5 */	bl __as__4cXyzFRC4cXyz
/* 80600324  7E 83 A3 78 */	mr r3, r20
/* 80600328  38 8E 1E D4 */	addi r4, r14, 0x1ed4
/* 8060032C  7E 85 A3 78 */	mr r5, r20
/* 80600330  4B D4 6D 61 */	bl PSVECAdd
/* 80600334  39 E0 00 00 */	li r15, 0
/* 80600338  3B 60 00 00 */	li r27, 0
/* 8060033C  3B 40 00 00 */	li r26, 0
/* 80600340  7E BF F2 14 */	add r21, r31, r30
/* 80600344  39 D7 03 14 */	addi r14, r23, 0x314
lbl_80600348:
/* 80600348  3A 7A 26 08 */	addi r19, r26, 0x2608
/* 8060034C  7C 75 98 2E */	lwzx r3, r21, r19
/* 80600350  7C 8E DA 2E */	lhzx r4, r14, r27
/* 80600354  7E 85 A3 78 */	mr r5, r20
/* 80600358  38 C0 00 00 */	li r6, 0
/* 8060035C  38 E1 00 64 */	addi r7, r1, 0x64
/* 80600360  48 00 20 25 */	bl dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz
/* 80600364  7C 75 99 2E */	stwx r3, r21, r19
/* 80600368  39 EF 00 01 */	addi r15, r15, 1
/* 8060036C  2C 0F 00 06 */	cmpwi r15, 6
/* 80600370  3B 7B 00 02 */	addi r27, r27, 2
/* 80600374  3B 5A 00 04 */	addi r26, r26, 4
/* 80600378  41 80 FF D0 */	blt lbl_80600348
/* 8060037C  7F E3 FB 78 */	mr r3, r31
/* 80600380  7E 04 83 78 */	mr r4, r16
/* 80600384  4B FF AC 6D */	bl ball_bg_check__FP11b_gnd_classi
/* 80600388  2C 03 00 00 */	cmpwi r3, 0
/* 8060038C  41 82 01 20 */	beq lbl_806004AC
/* 80600390  38 00 00 02 */	li r0, 2
/* 80600394  7C 1F 91 AE */	stbx r0, r31, r18
/* 80600398  3A 40 00 00 */	li r18, 0
/* 8060039C  39 C0 00 00 */	li r14, 0
/* 806003A0  39 F7 03 20 */	addi r15, r23, 0x320
lbl_806003A4:
/* 806003A4  7C 6F 72 2E */	lhzx r3, r15, r14
/* 806003A8  7E 84 A3 78 */	mr r4, r20
/* 806003AC  38 A0 00 00 */	li r5, 0
/* 806003B0  38 C1 00 64 */	addi r6, r1, 0x64
/* 806003B4  48 00 21 69 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 806003B8  3A 52 00 01 */	addi r18, r18, 1
/* 806003BC  2C 12 00 05 */	cmpwi r18, 5
/* 806003C0  39 CE 00 02 */	addi r14, r14, 2
/* 806003C4  41 80 FF E0 */	blt lbl_806003A4
/* 806003C8  38 61 00 34 */	addi r3, r1, 0x34
/* 806003CC  80 81 01 10 */	lwz r4, 0x110(r1)
/* 806003D0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 806003D4  7E 85 A3 78 */	mr r5, r20
/* 806003D8  4B C6 67 5D */	bl __mi__4cXyzCFRC3Vec
/* 806003DC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 806003E0  38 81 00 34 */	addi r4, r1, 0x34
/* 806003E4  48 00 21 F1 */	bl __as__4cXyzFRC4cXyz
/* 806003E8  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 806003EC  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 806003F0  4B C6 72 85 */	bl cM_atan2s__Fff
/* 806003F4  B0 61 00 22 */	sth r3, 0x22(r1)
/* 806003F8  38 60 01 E6 */	li r3, 0x1e6
/* 806003FC  38 00 FF 00 */	li r0, -256
/* 80600400  7E 04 03 78 */	or r4, r16, r0
/* 80600404  7E 85 A3 78 */	mr r5, r20
/* 80600408  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8060040C  7C 06 07 74 */	extsb r6, r0
/* 80600410  38 E1 00 20 */	addi r7, r1, 0x20
/* 80600414  39 00 00 00 */	li r8, 0
/* 80600418  39 20 FF FF */	li r9, -1
/* 8060041C  4B A1 99 7D */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80600420  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070513@ha */
/* 80600424  38 03 05 13 */	addi r0, r3, 0x0513 /* 0x00070513@l */
/* 80600428  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060042C  7E 23 8B 78 */	mr r3, r17
/* 80600430  38 81 00 10 */	addi r4, r1, 0x10
/* 80600434  38 A0 00 00 */	li r5, 0
/* 80600438  38 C0 FF FF */	li r6, -1
/* 8060043C  81 91 00 10 */	lwz r12, 0x10(r17)
/* 80600440  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80600444  7D 89 03 A6 */	mtctr r12
/* 80600448  4E 80 04 21 */	bctrl 
/* 8060044C  48 00 00 60 */	b lbl_806004AC
lbl_80600450:
/* 80600450  2C 00 00 02 */	cmpwi r0, 2
/* 80600454  40 82 00 58 */	bne lbl_806004AC
/* 80600458  38 00 00 00 */	li r0, 0
/* 8060045C  7C 1F 91 AE */	stbx r0, r31, r18
/* 80600460  3A 40 00 00 */	li r18, 0
/* 80600464  39 C0 00 00 */	li r14, 0
/* 80600468  7D FF F2 14 */	add r15, r31, r30
lbl_8060046C:
/* 8060046C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80600470  38 63 02 10 */	addi r3, r3, 0x210
/* 80600474  3A 2E 26 08 */	addi r17, r14, 0x2608
/* 80600478  7C 8F 88 2E */	lwzx r4, r15, r17
/* 8060047C  4B A4 B4 9D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80600480  28 03 00 00 */	cmplwi r3, 0
/* 80600484  41 82 00 18 */	beq lbl_8060049C
/* 80600488  4B C7 E7 D9 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 8060048C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80600490  38 63 02 10 */	addi r3, r3, 0x210
/* 80600494  7C 8F 88 2E */	lwzx r4, r15, r17
/* 80600498  4B A4 B4 1D */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_8060049C:
/* 8060049C  3A 52 00 01 */	addi r18, r18, 1
/* 806004A0  2C 12 00 06 */	cmpwi r18, 6
/* 806004A4  39 CE 00 04 */	addi r14, r14, 4
/* 806004A8  41 80 FF C4 */	blt lbl_8060046C
lbl_806004AC:
/* 806004AC  3A 10 00 01 */	addi r16, r16, 1
/* 806004B0  2C 10 00 05 */	cmpwi r16, 5
/* 806004B4  3B DE 00 18 */	addi r30, r30, 0x18
/* 806004B8  3B BD 00 0C */	addi r29, r29, 0xc
/* 806004BC  3B 9C 00 20 */	addi r28, r28, 0x20
/* 806004C0  41 80 FE 08 */	blt lbl_806002C8
/* 806004C4  80 1F 1F B4 */	lwz r0, 0x1fb4(r31)
/* 806004C8  90 01 00 08 */	stw r0, 8(r1)
/* 806004CC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 806004D0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 806004D4  38 81 00 08 */	addi r4, r1, 8
/* 806004D8  4B A1 93 21 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806004DC  7C 71 1B 79 */	or. r17, r3, r3
/* 806004E0  41 82 01 DC */	beq lbl_806006BC
/* 806004E4  38 71 04 D0 */	addi r3, r17, 0x4d0
/* 806004E8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806004EC  48 00 20 E9 */	bl __as__4cXyzFRC4cXyz
/* 806004F0  80 76 00 84 */	lwz r3, 0x84(r22)
/* 806004F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806004F8  38 63 06 60 */	addi r3, r3, 0x660
/* 806004FC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80600500  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80600504  80 84 00 00 */	lwz r4, 0(r4)
/* 80600508  4B D4 5F A9 */	bl PSMTXCopy
/* 8060050C  C0 18 00 74 */	lfs f0, 0x74(r24)
/* 80600510  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80600514  C0 18 00 9C */	lfs f0, 0x9c(r24)
/* 80600518  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8060051C  C0 18 03 30 */	lfs f0, 0x330(r24)
/* 80600520  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80600524  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80600528  38 91 39 28 */	addi r4, r17, 0x3928
/* 8060052C  4B C7 09 C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80600530  80 76 00 84 */	lwz r3, 0x84(r22)
/* 80600534  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80600538  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 8060053C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80600540  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80600544  80 84 00 00 */	lwz r4, 0(r4)
/* 80600548  4B D4 5F 69 */	bl PSMTXCopy
/* 8060054C  C0 18 00 74 */	lfs f0, 0x74(r24)
/* 80600550  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80600554  C0 18 00 9C */	lfs f0, 0x9c(r24)
/* 80600558  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8060055C  C0 18 02 BC */	lfs f0, 0x2bc(r24)
/* 80600560  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80600564  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80600568  38 91 39 34 */	addi r4, r17, 0x3934
/* 8060056C  4B C7 09 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80600570  3A 60 00 00 */	li r19, 0
/* 80600574  3A A0 00 00 */	li r21, 0
/* 80600578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060057C  3A 03 D4 70 */	addi r16, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80600580  C3 98 00 BC */	lfs f28, 0xbc(r24)
/* 80600584  C3 B8 03 34 */	lfs f29, 0x334(r24)
/* 80600588  CB D8 00 20 */	lfd f30, 0x20(r24)
/* 8060058C  3D E0 43 30 */	lis r15, 0x4330
/* 80600590  C3 F8 00 14 */	lfs f31, 0x14(r24)
/* 80600594  7E 0E 83 78 */	mr r14, r16
lbl_80600598:
/* 80600598  3A 80 00 00 */	li r20, 0
/* 8060059C  3A C0 00 00 */	li r22, 0
/* 806005A0  3A E0 00 00 */	li r23, 0
/* 806005A4  3B 20 00 00 */	li r25, 0
/* 806005A8  38 15 00 01 */	addi r0, r21, 1
/* 806005AC  1C 00 01 80 */	mulli r0, r0, 0x180
/* 806005B0  7E 51 02 14 */	add r18, r17, r0
lbl_806005B4:
/* 806005B4  3B 59 25 A8 */	addi r26, r25, 0x25a8
/* 806005B8  7F 52 D2 14 */	add r26, r18, r26
/* 806005BC  7E 03 83 78 */	mr r3, r16
/* 806005C0  C0 3A 00 00 */	lfs f1, 0(r26)
/* 806005C4  C0 5A 00 04 */	lfs f2, 4(r26)
/* 806005C8  C0 7A 00 08 */	lfs f3, 8(r26)
/* 806005CC  4B D4 63 1D */	bl PSMTXTrans
/* 806005D0  38 61 00 28 */	addi r3, r1, 0x28
/* 806005D4  38 17 00 01 */	addi r0, r23, 1
/* 806005D8  1C 80 00 0C */	mulli r4, r0, 0xc
/* 806005DC  38 84 25 A8 */	addi r4, r4, 0x25a8
/* 806005E0  7C 92 22 14 */	add r4, r18, r4
/* 806005E4  7F 45 D3 78 */	mr r5, r26
/* 806005E8  4B C6 65 4D */	bl __mi__4cXyzCFRC3Vec
/* 806005EC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 806005F0  38 81 00 28 */	addi r4, r1, 0x28
/* 806005F4  48 00 1F E1 */	bl __as__4cXyzFRC4cXyz
/* 806005F8  6E 80 80 00 */	xoris r0, r20, 0x8000
/* 806005FC  90 01 01 0C */	stw r0, 0x10c(r1)
/* 80600600  91 E1 01 08 */	stw r15, 0x108(r1)
/* 80600604  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 80600608  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8060060C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80600610  EF 7C 00 2A */	fadds f27, f28, f0
/* 80600614  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80600618  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 8060061C  4B C6 70 59 */	bl cM_atan2s__Fff
/* 80600620  7C 64 1B 78 */	mr r4, r3
/* 80600624  7E 03 83 78 */	mr r3, r16
/* 80600628  4B A0 BE 0D */	bl mDoMtx_YrotM__FPA4_fs
/* 8060062C  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80600630  EC 20 00 32 */	fmuls f1, f0, f0
/* 80600634  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80600638  EC 00 00 32 */	fmuls f0, f0, f0
/* 8060063C  EC 41 00 2A */	fadds f2, f1, f0
/* 80600640  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 80600644  40 81 00 0C */	ble lbl_80600650
/* 80600648  FC 00 10 34 */	frsqrte f0, f2
/* 8060064C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80600650:
/* 80600650  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 80600654  4B C6 70 21 */	bl cM_atan2s__Fff
/* 80600658  7C 03 00 D0 */	neg r0, r3
/* 8060065C  7C 04 07 34 */	extsh r4, r0
/* 80600660  7E 03 83 78 */	mr r3, r16
/* 80600664  4B A0 BD 39 */	bl mDoMtx_XrotM__FPA4_fs
/* 80600668  FC 20 D8 90 */	fmr f1, f27
/* 8060066C  FC 40 D8 90 */	fmr f2, f27
/* 80600670  FC 60 D8 90 */	fmr f3, f27
/* 80600674  4B A0 C7 C5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80600678  7D C3 73 78 */	mr r3, r14
/* 8060067C  7C 13 B2 14 */	add r0, r19, r22
/* 80600680  54 04 10 3A */	slwi r4, r0, 2
/* 80600684  38 04 0B 94 */	addi r0, r4, 0xb94
/* 80600688  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8060068C  38 84 00 24 */	addi r4, r4, 0x24
/* 80600690  4B D4 5E 21 */	bl PSMTXCopy
/* 80600694  3A 94 00 01 */	addi r20, r20, 1
/* 80600698  2C 14 00 06 */	cmpwi r20, 6
/* 8060069C  3A D6 00 06 */	addi r22, r22, 6
/* 806006A0  3A F7 00 02 */	addi r23, r23, 2
/* 806006A4  3B 39 00 18 */	addi r25, r25, 0x18
/* 806006A8  41 80 FF 0C */	blt lbl_806005B4
/* 806006AC  3A 73 00 01 */	addi r19, r19, 1
/* 806006B0  2C 13 00 06 */	cmpwi r19, 6
/* 806006B4  3A B5 00 02 */	addi r21, r21, 2
/* 806006B8  41 80 FE E0 */	blt lbl_80600598
lbl_806006BC:
/* 806006BC  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 806006C0  2C 00 00 00 */	cmpwi r0, 0
/* 806006C4  41 82 01 70 */	beq lbl_80600834
/* 806006C8  A8 7F 1F D4 */	lha r3, 0x1fd4(r31)
/* 806006CC  A8 1F 1F D6 */	lha r0, 0x1fd6(r31)
/* 806006D0  7C 03 02 14 */	add r0, r3, r0
/* 806006D4  B0 1F 1F D4 */	sth r0, 0x1fd4(r31)
/* 806006D8  38 7F 1F D6 */	addi r3, r31, 0x1fd6
/* 806006DC  C0 58 03 38 */	lfs f2, 0x338(r24)
/* 806006E0  C0 38 00 F0 */	lfs f1, 0xf0(r24)
/* 806006E4  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 806006E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 806006EC  EC 02 00 2A */	fadds f0, f2, f0
/* 806006F0  FC 00 00 1E */	fctiwz f0, f0
/* 806006F4  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 806006F8  80 81 01 0C */	lwz r4, 0x10c(r1)
/* 806006FC  38 A0 00 01 */	li r5, 1
/* 80600700  38 C0 00 3C */	li r6, 0x3c
/* 80600704  4B C6 FF 05 */	bl cLib_addCalcAngleS2__FPssss
/* 80600708  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8060070C  C0 38 00 EC */	lfs f1, 0xec(r24)
/* 80600710  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80600714  EC 21 00 32 */	fmuls f1, f1, f0
/* 80600718  C0 58 00 00 */	lfs f2, 0(r24)
/* 8060071C  C0 78 01 D0 */	lfs f3, 0x1d0(r24)
/* 80600720  4B C6 F3 1D */	bl cLib_addCalc2__FPffff
/* 80600724  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80600728  81 C3 00 04 */	lwz r14, 4(r3)
/* 8060072C  80 6E 00 84 */	lwz r3, 0x84(r14)
/* 80600730  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80600734  38 63 03 90 */	addi r3, r3, 0x390
/* 80600738  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8060073C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80600740  80 84 00 00 */	lwz r4, 0(r4)
/* 80600744  4B D4 5D 6D */	bl PSMTXCopy
/* 80600748  4B C7 07 D5 */	bl MtxPush__Fv
/* 8060074C  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 80600750  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80600754  C0 18 01 4C */	lfs f0, 0x14c(r24)
/* 80600758  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8060075C  C0 18 03 3C */	lfs f0, 0x33c(r24)
/* 80600760  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80600764  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80600768  38 81 00 94 */	addi r4, r1, 0x94
/* 8060076C  4B C7 07 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80600770  7F E3 FB 78 */	mr r3, r31
/* 80600774  38 81 00 94 */	addi r4, r1, 0x94
/* 80600778  38 A0 00 00 */	li r5, 0
/* 8060077C  38 C0 00 00 */	li r6, 0
/* 80600780  4B FF A9 71 */	bl himo_control1__FP11b_gnd_classP4cXyziSc
/* 80600784  4B C7 07 D5 */	bl MtxPull__Fv
/* 80600788  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 8060078C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80600790  C0 18 01 4C */	lfs f0, 0x14c(r24)
/* 80600794  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80600798  C0 18 00 A4 */	lfs f0, 0xa4(r24)
/* 8060079C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 806007A0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 806007A4  38 81 00 94 */	addi r4, r1, 0x94
/* 806007A8  4B C7 07 45 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806007AC  7F E3 FB 78 */	mr r3, r31
/* 806007B0  38 81 00 94 */	addi r4, r1, 0x94
/* 806007B4  38 A0 00 01 */	li r5, 1
/* 806007B8  38 C0 00 00 */	li r6, 0
/* 806007BC  4B FF A9 35 */	bl himo_control1__FP11b_gnd_classP4cXyziSc
/* 806007C0  80 6E 00 84 */	lwz r3, 0x84(r14)
/* 806007C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806007C8  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 806007CC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806007D0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806007D4  80 84 00 00 */	lwz r4, 0(r4)
/* 806007D8  4B D4 5C D9 */	bl PSMTXCopy
/* 806007DC  C0 18 01 24 */	lfs f0, 0x124(r24)
/* 806007E0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806007E4  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 806007E8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 806007EC  C0 18 00 F0 */	lfs f0, 0xf0(r24)
/* 806007F0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 806007F4  38 61 00 A0 */	addi r3, r1, 0xa0
/* 806007F8  38 9F 1F D8 */	addi r4, r31, 0x1fd8
/* 806007FC  4B C7 06 F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80600800  38 7F 1F E4 */	addi r3, r31, 0x1fe4
/* 80600804  38 9F 1F D8 */	addi r4, r31, 0x1fd8
/* 80600808  48 00 1D CD */	bl __as__4cXyzFRC4cXyz
/* 8060080C  7F E3 FB 78 */	mr r3, r31
/* 80600810  38 9F 1F D8 */	addi r4, r31, 0x1fd8
/* 80600814  38 A0 00 00 */	li r5, 0
/* 80600818  38 C0 00 00 */	li r6, 0
/* 8060081C  4B FF AB F9 */	bl himo_control2__FP11b_gnd_classP4cXyziSc
/* 80600820  7F E3 FB 78 */	mr r3, r31
/* 80600824  38 9F 1F E4 */	addi r4, r31, 0x1fe4
/* 80600828  38 A0 00 01 */	li r5, 1
/* 8060082C  38 C0 00 00 */	li r6, 0
/* 80600830  4B FF AB E5 */	bl himo_control2__FP11b_gnd_classP4cXyziSc
lbl_80600834:
/* 80600834  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 80600838  2C 00 00 00 */	cmpwi r0, 0
/* 8060083C  41 82 00 7C */	beq lbl_806008B8
/* 80600840  7F E3 FB 78 */	mr r3, r31
/* 80600844  4B FF 93 A1 */	bl eff_set_h__FP11b_gnd_class
/* 80600848  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8060084C  7C 03 07 74 */	extsb r3, r0
/* 80600850  4B A2 C8 1D */	bl dComIfGp_getReverb__Fi
/* 80600854  7C 65 1B 78 */	mr r5, r3
/* 80600858  38 7F 1E 2C */	addi r3, r31, 0x1e2c
/* 8060085C  38 80 00 00 */	li r4, 0
/* 80600860  81 9F 1E 3C */	lwz r12, 0x1e3c(r31)
/* 80600864  81 8C 00 08 */	lwz r12, 8(r12)
/* 80600868  7D 89 03 A6 */	mtctr r12
/* 8060086C  4E 80 04 21 */	bctrl 
/* 80600870  39 E0 00 00 */	li r15, 0
/* 80600874  39 C0 00 00 */	li r14, 0
lbl_80600878:
/* 80600878  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8060087C  7C 03 07 74 */	extsb r3, r0
/* 80600880  4B A2 C7 ED */	bl dComIfGp_getReverb__Fi
/* 80600884  7C 65 1B 78 */	mr r5, r3
/* 80600888  38 6E 1F 10 */	addi r3, r14, 0x1f10
/* 8060088C  7C 7F 1A 14 */	add r3, r31, r3
/* 80600890  38 80 00 00 */	li r4, 0
/* 80600894  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80600898  81 8C 00 08 */	lwz r12, 8(r12)
/* 8060089C  7D 89 03 A6 */	mtctr r12
/* 806008A0  4E 80 04 21 */	bctrl 
/* 806008A4  39 EF 00 01 */	addi r15, r15, 1
/* 806008A8  2C 0F 00 05 */	cmpwi r15, 5
/* 806008AC  39 CE 00 20 */	addi r14, r14, 0x20
/* 806008B0  41 80 FF C8 */	blt lbl_80600878
/* 806008B4  48 00 00 0C */	b lbl_806008C0
lbl_806008B8:
/* 806008B8  7F E3 FB 78 */	mr r3, r31
/* 806008BC  4B FF 9A 41 */	bl eff_set__FP11b_gnd_class
lbl_806008C0:
/* 806008C0  7F E3 FB 78 */	mr r3, r31
/* 806008C4  4B FF D2 1D */	bl anm_se_set__FP11b_gnd_class
/* 806008C8  C3 78 00 00 */	lfs f27, 0(r24)
/* 806008CC  C3 98 00 C4 */	lfs f28, 0xc4(r24)
/* 806008D0  88 1F 27 39 */	lbz r0, 0x2739(r31)
/* 806008D4  28 00 00 00 */	cmplwi r0, 0
/* 806008D8  40 82 00 1C */	bne lbl_806008F4
/* 806008DC  C3 78 00 14 */	lfs f27, 0x14(r24)
/* 806008E0  38 60 00 00 */	li r3, 0
/* 806008E4  38 80 00 00 */	li r4, 0
/* 806008E8  C0 3F 27 3C */	lfs f1, 0x273c(r31)
/* 806008EC  4B BA 7F 21 */	bl dKy_custom_colset__FUcUcf
/* 806008F0  48 00 00 A0 */	b lbl_80600990
lbl_806008F4:
/* 806008F4  28 00 00 01 */	cmplwi r0, 1
/* 806008F8  40 82 00 1C */	bne lbl_80600914
/* 806008FC  C3 98 02 A0 */	lfs f28, 0x2a0(r24)
/* 80600900  38 60 00 00 */	li r3, 0
/* 80600904  38 80 00 05 */	li r4, 5
/* 80600908  C0 3F 27 3C */	lfs f1, 0x273c(r31)
/* 8060090C  4B BA 7F 01 */	bl dKy_custom_colset__FUcUcf
/* 80600910  48 00 00 80 */	b lbl_80600990
lbl_80600914:
/* 80600914  28 00 00 02 */	cmplwi r0, 2
/* 80600918  40 82 00 1C */	bne lbl_80600934
/* 8060091C  C3 78 00 14 */	lfs f27, 0x14(r24)
/* 80600920  38 60 00 01 */	li r3, 1
/* 80600924  38 80 00 01 */	li r4, 1
/* 80600928  C0 3F 27 3C */	lfs f1, 0x273c(r31)
/* 8060092C  4B BA 7E E1 */	bl dKy_custom_colset__FUcUcf
/* 80600930  48 00 00 60 */	b lbl_80600990
lbl_80600934:
/* 80600934  28 00 00 03 */	cmplwi r0, 3
/* 80600938  40 82 00 1C */	bne lbl_80600954
/* 8060093C  C3 78 00 14 */	lfs f27, 0x14(r24)
/* 80600940  38 60 00 02 */	li r3, 2
/* 80600944  38 80 00 02 */	li r4, 2
/* 80600948  C0 3F 27 3C */	lfs f1, 0x273c(r31)
/* 8060094C  4B BA 7E C1 */	bl dKy_custom_colset__FUcUcf
/* 80600950  48 00 00 40 */	b lbl_80600990
lbl_80600954:
/* 80600954  28 00 00 04 */	cmplwi r0, 4
/* 80600958  40 82 00 1C */	bne lbl_80600974
/* 8060095C  C3 78 00 14 */	lfs f27, 0x14(r24)
/* 80600960  38 60 00 03 */	li r3, 3
/* 80600964  38 80 00 03 */	li r4, 3
/* 80600968  C0 3F 27 3C */	lfs f1, 0x273c(r31)
/* 8060096C  4B BA 7E A1 */	bl dKy_custom_colset__FUcUcf
/* 80600970  48 00 00 20 */	b lbl_80600990
lbl_80600974:
/* 80600974  28 00 00 05 */	cmplwi r0, 5
/* 80600978  40 82 00 18 */	bne lbl_80600990
/* 8060097C  C3 78 00 14 */	lfs f27, 0x14(r24)
/* 80600980  38 60 00 04 */	li r3, 4
/* 80600984  38 80 00 04 */	li r4, 4
/* 80600988  C0 3F 27 3C */	lfs f1, 0x273c(r31)
/* 8060098C  4B BA 7E 81 */	bl dKy_custom_colset__FUcUcf
lbl_80600990:
/* 80600990  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 80600994  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80600998  4C 41 13 82 */	cror 2, 1, 2
/* 8060099C  40 82 00 18 */	bne lbl_806009B4
/* 806009A0  38 7F 27 3C */	addi r3, r31, 0x273c
/* 806009A4  FC 20 D8 90 */	fmr f1, f27
/* 806009A8  C0 58 00 00 */	lfs f2, 0(r24)
/* 806009AC  FC 60 E0 90 */	fmr f3, f28
/* 806009B0  4B C6 F0 8D */	bl cLib_addCalc2__FPffff
lbl_806009B4:
/* 806009B4  38 60 00 01 */	li r3, 1
lbl_806009B8:
/* 806009B8  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, 0 /* qr0 */
/* 806009BC  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 806009C0  E3 C1 01 98 */	psq_l f30, 408(r1), 0, 0 /* qr0 */
/* 806009C4  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 806009C8  E3 A1 01 88 */	psq_l f29, 392(r1), 0, 0 /* qr0 */
/* 806009CC  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 806009D0  E3 81 01 78 */	psq_l f28, 376(r1), 0, 0 /* qr0 */
/* 806009D4  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 806009D8  E3 61 01 68 */	psq_l f27, 360(r1), 0, 0 /* qr0 */
/* 806009DC  CB 61 01 60 */	lfd f27, 0x160(r1)
/* 806009E0  39 61 01 60 */	addi r11, r1, 0x160
/* 806009E4  4B D6 18 09 */	bl __restore_gpr
/* 806009E8  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 806009EC  7C 08 03 A6 */	mtlr r0
/* 806009F0  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 806009F4  4E 80 00 20 */	blr 

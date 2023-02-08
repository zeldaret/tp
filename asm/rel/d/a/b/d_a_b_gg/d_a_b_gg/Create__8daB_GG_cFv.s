lbl_805EBBE4:
/* 805EBBE4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805EBBE8  7C 08 02 A6 */	mflr r0
/* 805EBBEC  90 01 00 74 */	stw r0, 0x74(r1)
/* 805EBBF0  39 61 00 70 */	addi r11, r1, 0x70
/* 805EBBF4  4B D7 65 E5 */	bl _savegpr_28
/* 805EBBF8  7C 7F 1B 78 */	mr r31, r3
/* 805EBBFC  3C 80 80 5F */	lis r4, lit_1109@ha /* 0x805ED6C0@ha */
/* 805EBC00  3B A4 D6 C0 */	addi r29, r4, lit_1109@l /* 0x805ED6C0@l */
/* 805EBC04  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805EBC08  3B C4 D0 60 */	addi r30, r4, lit_3911@l /* 0x805ED060@l */
/* 805EBC0C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805EBC10  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805EBC14  40 82 00 1C */	bne lbl_805EBC30
/* 805EBC18  28 1F 00 00 */	cmplwi r31, 0
/* 805EBC1C  41 82 00 08 */	beq lbl_805EBC24
/* 805EBC20  48 00 08 05 */	bl __ct__8daB_GG_cFv
lbl_805EBC24:
/* 805EBC24  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805EBC28  60 00 00 08 */	ori r0, r0, 8
/* 805EBC2C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805EBC30:
/* 805EBC30  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 805EBC34  3C 80 80 5F */	lis r4, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805EBC38  38 84 D3 D4 */	addi r4, r4, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805EBC3C  4B A4 12 81 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805EBC40  7C 7C 1B 78 */	mr r28, r3
/* 805EBC44  2C 1C 00 04 */	cmpwi r28, 4
/* 805EBC48  40 82 07 C0 */	bne lbl_805EC408
/* 805EBC4C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805EBC50  98 1F 06 90 */	stb r0, 0x690(r31)
/* 805EBC54  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805EBC58  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 805EBC5C  98 1F 05 CF */	stb r0, 0x5cf(r31)
/* 805EBC60  88 1F 06 90 */	lbz r0, 0x690(r31)
/* 805EBC64  28 00 00 00 */	cmplwi r0, 0
/* 805EBC68  41 82 00 0C */	beq lbl_805EBC74
/* 805EBC6C  28 00 00 FF */	cmplwi r0, 0xff
/* 805EBC70  40 82 00 64 */	bne lbl_805EBCD4
lbl_805EBC74:
/* 805EBC74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EBC78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EBC7C  38 63 09 58 */	addi r3, r3, 0x958
/* 805EBC80  38 80 00 07 */	li r4, 7
/* 805EBC84  4B A4 8C B1 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 805EBC88  2C 03 00 00 */	cmpwi r3, 0
/* 805EBC8C  41 82 00 48 */	beq lbl_805EBCD4
/* 805EBC90  3C 60 80 5F */	lis r3, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805EBC94  38 63 D3 D4 */	addi r3, r3, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805EBC98  38 63 00 0C */	addi r3, r3, 0xc
/* 805EBC9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EBCA0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EBCA4  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 805EBCA8  4B D7 CC ED */	bl strcmp
/* 805EBCAC  2C 03 00 00 */	cmpwi r3, 0
/* 805EBCB0  40 82 00 24 */	bne lbl_805EBCD4
/* 805EBCB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EBCB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EBCBC  88 9F 05 CF */	lbz r4, 0x5cf(r31)
/* 805EBCC0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805EBCC4  7C 05 07 74 */	extsb r5, r0
/* 805EBCC8  4B A4 95 39 */	bl onSwitch__10dSv_info_cFii
/* 805EBCCC  38 60 00 05 */	li r3, 5
/* 805EBCD0  48 00 07 3C */	b lbl_805EC40C
lbl_805EBCD4:
/* 805EBCD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EBCD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EBCDC  88 9F 05 CF */	lbz r4, 0x5cf(r31)
/* 805EBCE0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805EBCE4  7C 05 07 74 */	extsb r5, r0
/* 805EBCE8  4B A4 96 79 */	bl isSwitch__10dSv_info_cCFii
/* 805EBCEC  2C 03 00 00 */	cmpwi r3, 0
/* 805EBCF0  41 82 00 0C */	beq lbl_805EBCFC
/* 805EBCF4  38 60 00 05 */	li r3, 5
/* 805EBCF8  48 00 07 14 */	b lbl_805EC40C
lbl_805EBCFC:
/* 805EBCFC  7F E3 FB 78 */	mr r3, r31
/* 805EBD00  3C 80 80 5E */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x805DE630@ha */
/* 805EBD04  38 84 E6 30 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x805DE630@l */
/* 805EBD08  38 A0 4A 20 */	li r5, 0x4a20
/* 805EBD0C  4B A2 E7 A5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805EBD10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805EBD14  40 82 00 0C */	bne lbl_805EBD20
/* 805EBD18  38 60 00 05 */	li r3, 5
/* 805EBD1C  48 00 06 F0 */	b lbl_805EC40C
lbl_805EBD20:
/* 805EBD20  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 805EBD24  28 00 00 00 */	cmplwi r0, 0
/* 805EBD28  40 82 00 1C */	bne lbl_805EBD44
/* 805EBD2C  38 00 00 01 */	li r0, 1
/* 805EBD30  98 1D 00 3D */	stb r0, 0x3d(r29)
/* 805EBD34  98 1F 11 68 */	stb r0, 0x1168(r31)
/* 805EBD38  38 00 FF FF */	li r0, -1
/* 805EBD3C  38 7D 00 4C */	addi r3, r29, 0x4c
/* 805EBD40  98 03 00 04 */	stb r0, 4(r3)
lbl_805EBD44:
/* 805EBD44  38 00 00 7C */	li r0, 0x7c
/* 805EBD48  98 1F 05 CE */	stb r0, 0x5ce(r31)
/* 805EBD4C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805EBD50  54 00 46 3E */	srwi r0, r0, 0x18
/* 805EBD54  98 1F 05 D0 */	stb r0, 0x5d0(r31)
/* 805EBD58  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805EBD5C  D0 5F 05 30 */	stfs f2, 0x530(r31)
/* 805EBD60  38 00 00 04 */	li r0, 4
/* 805EBD64  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805EBD68  38 00 00 52 */	li r0, 0x52
/* 805EBD6C  98 1F 05 46 */	stb r0, 0x546(r31)
/* 805EBD70  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805EBD74  80 63 00 04 */	lwz r3, 4(r3)
/* 805EBD78  38 03 00 24 */	addi r0, r3, 0x24
/* 805EBD7C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 805EBD80  7F E3 FB 78 */	mr r3, r31
/* 805EBD84  C0 3E 03 38 */	lfs f1, 0x338(r30)
/* 805EBD88  FC 60 08 90 */	fmr f3, f1
/* 805EBD8C  4B A2 E7 9D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 805EBD90  7F E3 FB 78 */	mr r3, r31
/* 805EBD94  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 805EBD98  FC 40 08 90 */	fmr f2, f1
/* 805EBD9C  FC 60 08 90 */	fmr f3, f1
/* 805EBDA0  4B A2 E7 99 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 805EBDA4  38 7F 0E F0 */	addi r3, r31, 0xef0
/* 805EBDA8  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 805EBDAC  C0 5E 01 50 */	lfs f2, 0x150(r30)
/* 805EBDB0  4B A8 A1 A9 */	bl SetWall__12dBgS_AcchCirFff
/* 805EBDB4  88 1F 06 90 */	lbz r0, 0x690(r31)
/* 805EBDB8  28 00 00 00 */	cmplwi r0, 0
/* 805EBDBC  41 82 00 20 */	beq lbl_805EBDDC
/* 805EBDC0  28 00 00 FF */	cmplwi r0, 0xff
/* 805EBDC4  41 82 00 18 */	beq lbl_805EBDDC
/* 805EBDC8  80 1F 0F 5C */	lwz r0, 0xf5c(r31)
/* 805EBDCC  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 805EBDD0  90 1F 0F 5C */	stw r0, 0xf5c(r31)
/* 805EBDD4  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 805EBDD8  D0 1F 0F F8 */	stfs f0, 0xff8(r31)
lbl_805EBDDC:
/* 805EBDDC  38 00 00 00 */	li r0, 0
/* 805EBDE0  90 01 00 08 */	stw r0, 8(r1)
/* 805EBDE4  38 7F 0F 30 */	addi r3, r31, 0xf30
/* 805EBDE8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805EBDEC  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 805EBDF0  7F E6 FB 78 */	mr r6, r31
/* 805EBDF4  38 E0 00 01 */	li r7, 1
/* 805EBDF8  39 1F 0E F0 */	addi r8, r31, 0xef0
/* 805EBDFC  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 805EBE00  39 40 00 00 */	li r10, 0
/* 805EBE04  4B A8 A4 45 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805EBE08  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805EBE0C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805EBE10  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805EBE14  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 805EBE18  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805EBE1C  38 00 00 00 */	li r0, 0
/* 805EBE20  B0 1F 06 BC */	sth r0, 0x6bc(r31)
/* 805EBE24  B0 1F 05 E0 */	sth r0, 0x5e0(r31)
/* 805EBE28  88 7F 06 90 */	lbz r3, 0x690(r31)
/* 805EBE2C  28 03 00 00 */	cmplwi r3, 0
/* 805EBE30  41 82 00 0C */	beq lbl_805EBE3C
/* 805EBE34  28 03 00 FF */	cmplwi r3, 0xff
/* 805EBE38  40 82 02 00 */	bne lbl_805EC038
lbl_805EBE3C:
/* 805EBE3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EBE40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EBE44  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 805EBE48  2C 00 00 02 */	cmpwi r0, 2
/* 805EBE4C  41 82 00 10 */	beq lbl_805EBE5C
/* 805EBE50  7C 00 07 34 */	extsh r0, r0
/* 805EBE54  2C 00 FF FF */	cmpwi r0, -1
/* 805EBE58  40 82 01 78 */	bne lbl_805EBFD0
lbl_805EBE5C:
/* 805EBE5C  38 80 00 00 */	li r4, 0
/* 805EBE60  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 805EBE64  98 83 0C 98 */	stb r4, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 805EBE68  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805EBE6C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805EBE70  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805EBE74  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 805EBE78  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805EBE7C  98 9F 05 C5 */	stb r4, 0x5c5(r31)
/* 805EBE80  98 9F 05 C6 */	stb r4, 0x5c6(r31)
/* 805EBE84  38 00 00 01 */	li r0, 1
/* 805EBE88  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 805EBE8C  98 9F 05 CB */	stb r4, 0x5cb(r31)
/* 805EBE90  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805EBE94  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805EBE98  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805EBE9C  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 805EBEA0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805EBEA4  38 61 00 1C */	addi r3, r1, 0x1c
/* 805EBEA8  38 81 00 28 */	addi r4, r1, 0x28
/* 805EBEAC  4B C8 4D 59 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805EBEB0  7C 65 1B 78 */	mr r5, r3
/* 805EBEB4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805EBEB8  38 81 00 28 */	addi r4, r1, 0x28
/* 805EBEBC  38 C1 00 10 */	addi r6, r1, 0x10
/* 805EBEC0  4B C8 4F 01 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805EBEC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805EBEC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805EBECC  80 63 00 00 */	lwz r3, 0(r3)
/* 805EBED0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805EBED4  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006F@ha */
/* 805EBED8  38 84 00 6F */	addi r4, r4, 0x006F /* 0x0100006F@l */
/* 805EBEDC  4B CC 35 C1 */	bl subBgmStart__8Z2SeqMgrFUl
/* 805EBEE0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805EBEE4  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 805EBEE8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805EBEEC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 805EBEF0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805EBEF4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 805EBEF8  7F E3 FB 78 */	mr r3, r31
/* 805EBEFC  38 80 00 0E */	li r4, 0xe
/* 805EBF00  38 A0 00 02 */	li r5, 2
/* 805EBF04  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805EBF08  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805EBF0C  4B FF 30 59 */	bl SetAnm__8daB_GG_cFiiff
/* 805EBF10  80 1F 07 74 */	lwz r0, 0x774(r31)
/* 805EBF14  60 00 00 01 */	ori r0, r0, 1
/* 805EBF18  90 1F 07 74 */	stw r0, 0x774(r31)
/* 805EBF1C  80 1F 0D 94 */	lwz r0, 0xd94(r31)
/* 805EBF20  60 00 00 01 */	ori r0, r0, 1
/* 805EBF24  90 1F 0D 94 */	stw r0, 0xd94(r31)
/* 805EBF28  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805EBF2C  38 81 00 28 */	addi r4, r1, 0x28
/* 805EBF30  4B C8 4C D5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805EBF34  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 805EBF38  38 60 00 00 */	li r3, 0
/* 805EBF3C  B0 7F 06 BE */	sth r3, 0x6be(r31)
/* 805EBF40  38 00 00 1E */	li r0, 0x1e
/* 805EBF44  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 805EBF48  B0 7F 05 DA */	sth r3, 0x5da(r31)
/* 805EBF4C  88 1F 05 CE */	lbz r0, 0x5ce(r31)
/* 805EBF50  28 00 00 FF */	cmplwi r0, 0xff
/* 805EBF54  41 82 00 3C */	beq lbl_805EBF90
/* 805EBF58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EBF5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EBF60  38 80 00 8E */	li r4, 0x8e
/* 805EBF64  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805EBF68  7C 05 07 74 */	extsb r5, r0
/* 805EBF6C  4B A4 93 F5 */	bl isSwitch__10dSv_info_cCFii
/* 805EBF70  2C 03 00 00 */	cmpwi r3, 0
/* 805EBF74  40 82 00 1C */	bne lbl_805EBF90
/* 805EBF78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EBF7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EBF80  38 80 00 8E */	li r4, 0x8e
/* 805EBF84  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805EBF88  7C 05 07 74 */	extsb r5, r0
/* 805EBF8C  4B A4 92 75 */	bl onSwitch__10dSv_info_cFii
lbl_805EBF90:
/* 805EBF90  38 7D 00 4C */	addi r3, r29, 0x4c
/* 805EBF94  A8 03 00 16 */	lha r0, 0x16(r3)
/* 805EBF98  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 805EBF9C  A8 03 00 16 */	lha r0, 0x16(r3)
/* 805EBFA0  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805EBFA4  7F E3 FB 78 */	mr r3, r31
/* 805EBFA8  4B FF F9 69 */	bl setBaseMtx__8daB_GG_cFv
/* 805EBFAC  38 00 00 00 */	li r0, 0
/* 805EBFB0  98 1F 06 90 */	stb r0, 0x690(r31)
/* 805EBFB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EBFB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EBFBC  38 80 00 E2 */	li r4, 0xe2
/* 805EBFC0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805EBFC4  7C 05 07 74 */	extsb r5, r0
/* 805EBFC8  4B A4 92 39 */	bl onSwitch__10dSv_info_cFii
/* 805EBFCC  48 00 03 50 */	b lbl_805EC31C
lbl_805EBFD0:
/* 805EBFD0  38 00 00 03 */	li r0, 3
/* 805EBFD4  98 1F 05 C5 */	stb r0, 0x5c5(r31)
/* 805EBFD8  38 80 00 00 */	li r4, 0
/* 805EBFDC  98 9F 05 C6 */	stb r4, 0x5c6(r31)
/* 805EBFE0  38 00 00 0A */	li r0, 0xa
/* 805EBFE4  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 805EBFE8  98 9F 05 CB */	stb r4, 0x5cb(r31)
/* 805EBFEC  38 7D 00 FC */	addi r3, r29, 0xfc
/* 805EBFF0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805EBFF4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805EBFF8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805EBFFC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805EC000  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805EC004  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805EC008  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805EC00C  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 805EC010  EC 01 00 2A */	fadds f0, f1, f0
/* 805EC014  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805EC018  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805EC01C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 805EC020  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805EC024  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 805EC028  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805EC02C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 805EC030  98 9F 06 90 */	stb r4, 0x690(r31)
/* 805EC034  48 00 02 E8 */	b lbl_805EC31C
lbl_805EC038:
/* 805EC038  28 03 00 01 */	cmplwi r3, 1
/* 805EC03C  40 82 00 84 */	bne lbl_805EC0C0
/* 805EC040  38 60 00 01 */	li r3, 1
/* 805EC044  98 7F 06 90 */	stb r3, 0x690(r31)
/* 805EC048  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805EC04C  38 BD 00 4C */	addi r5, r29, 0x4c
/* 805EC050  A8 65 00 16 */	lha r3, 0x16(r5)
/* 805EC054  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 805EC058  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EC05C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 805EC060  3C 80 43 30 */	lis r4, 0x4330
/* 805EC064  90 81 00 38 */	stw r4, 0x38(r1)
/* 805EC068  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805EC06C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EC070  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EC074  FC 00 00 1E */	fctiwz f0, f0
/* 805EC078  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805EC07C  80 61 00 44 */	lwz r3, 0x44(r1)
/* 805EC080  B0 7F 05 60 */	sth r3, 0x560(r31)
/* 805EC084  A8 65 00 16 */	lha r3, 0x16(r5)
/* 805EC088  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EC08C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 805EC090  90 81 00 48 */	stw r4, 0x48(r1)
/* 805EC094  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 805EC098  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EC09C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EC0A0  FC 00 00 1E */	fctiwz f0, f0
/* 805EC0A4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 805EC0A8  80 61 00 54 */	lwz r3, 0x54(r1)
/* 805EC0AC  B0 7F 05 62 */	sth r3, 0x562(r31)
/* 805EC0B0  98 1F 05 C5 */	stb r0, 0x5c5(r31)
/* 805EC0B4  98 1F 05 C6 */	stb r0, 0x5c6(r31)
/* 805EC0B8  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 805EC0BC  48 00 02 60 */	b lbl_805EC31C
lbl_805EC0C0:
/* 805EC0C0  28 03 00 02 */	cmplwi r3, 2
/* 805EC0C4  40 82 00 84 */	bne lbl_805EC148
/* 805EC0C8  38 60 00 02 */	li r3, 2
/* 805EC0CC  98 7F 06 90 */	stb r3, 0x690(r31)
/* 805EC0D0  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805EC0D4  38 BD 00 4C */	addi r5, r29, 0x4c
/* 805EC0D8  A8 65 00 16 */	lha r3, 0x16(r5)
/* 805EC0DC  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 805EC0E0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EC0E4  90 61 00 54 */	stw r3, 0x54(r1)
/* 805EC0E8  3C 80 43 30 */	lis r4, 0x4330
/* 805EC0EC  90 81 00 50 */	stw r4, 0x50(r1)
/* 805EC0F0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805EC0F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EC0F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EC0FC  FC 00 00 1E */	fctiwz f0, f0
/* 805EC100  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 805EC104  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 805EC108  B0 7F 05 60 */	sth r3, 0x560(r31)
/* 805EC10C  A8 65 00 16 */	lha r3, 0x16(r5)
/* 805EC110  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EC114  90 61 00 44 */	stw r3, 0x44(r1)
/* 805EC118  90 81 00 40 */	stw r4, 0x40(r1)
/* 805EC11C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805EC120  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EC124  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EC128  FC 00 00 1E */	fctiwz f0, f0
/* 805EC12C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805EC130  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 805EC134  B0 7F 05 62 */	sth r3, 0x562(r31)
/* 805EC138  98 1F 05 C5 */	stb r0, 0x5c5(r31)
/* 805EC13C  98 1F 05 C6 */	stb r0, 0x5c6(r31)
/* 805EC140  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 805EC144  48 00 01 D8 */	b lbl_805EC31C
lbl_805EC148:
/* 805EC148  28 03 00 03 */	cmplwi r3, 3
/* 805EC14C  40 82 01 08 */	bne lbl_805EC254
/* 805EC150  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805EC154  38 BD 00 4C */	addi r5, r29, 0x4c
/* 805EC158  A8 65 00 16 */	lha r3, 0x16(r5)
/* 805EC15C  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 805EC160  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EC164  90 61 00 54 */	stw r3, 0x54(r1)
/* 805EC168  3C 80 43 30 */	lis r4, 0x4330 /* 0x43300000@ha */
/* 805EC16C  90 81 00 50 */	stw r4, 0x50(r1)
/* 805EC170  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805EC174  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EC178  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EC17C  FC 00 00 1E */	fctiwz f0, f0
/* 805EC180  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 805EC184  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 805EC188  B0 7F 05 60 */	sth r3, 0x560(r31)
/* 805EC18C  A8 65 00 16 */	lha r3, 0x16(r5)
/* 805EC190  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EC194  90 61 00 44 */	stw r3, 0x44(r1)
/* 805EC198  90 81 00 40 */	stw r4, 0x40(r1)
/* 805EC19C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805EC1A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EC1A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EC1A8  FC 00 00 1E */	fctiwz f0, f0
/* 805EC1AC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805EC1B0  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 805EC1B4  B0 7F 05 62 */	sth r3, 0x562(r31)
/* 805EC1B8  38 60 00 03 */	li r3, 3
/* 805EC1BC  98 7F 05 C5 */	stb r3, 0x5c5(r31)
/* 805EC1C0  38 60 00 02 */	li r3, 2
/* 805EC1C4  98 7F 05 C6 */	stb r3, 0x5c6(r31)
/* 805EC1C8  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 805EC1CC  C0 1E 02 40 */	lfs f0, 0x240(r30)
/* 805EC1D0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805EC1D4  C0 1E 03 3C */	lfs f0, 0x33c(r30)
/* 805EC1D8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805EC1DC  C0 1E 02 48 */	lfs f0, 0x248(r30)
/* 805EC1E0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805EC1E4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805EC1E8  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 805EC1EC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805EC1F0  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 805EC1F4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805EC1F8  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 805EC1FC  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 805EC200  38 83 0C 98 */	addi r4, r3, struct_80450C98+0x0@l /* 0x80450C98@l */
/* 805EC204  88 64 00 00 */	lbz r3, 0x0000(r4)  /* 0x43300000@l */
/* 805EC208  28 03 00 00 */	cmplwi r3, 0
/* 805EC20C  41 82 01 10 */	beq lbl_805EC31C
/* 805EC210  98 04 00 00 */	stb r0, 0(r4)
/* 805EC214  98 1F 05 C5 */	stb r0, 0x5c5(r31)
/* 805EC218  98 1F 05 C6 */	stb r0, 0x5c6(r31)
/* 805EC21C  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 805EC220  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 805EC224  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805EC228  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 805EC22C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805EC230  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 805EC234  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805EC238  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805EC23C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 805EC240  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805EC244  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 805EC248  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805EC24C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 805EC250  48 00 00 CC */	b lbl_805EC31C
lbl_805EC254:
/* 805EC254  28 03 00 04 */	cmplwi r3, 4
/* 805EC258  40 82 00 C4 */	bne lbl_805EC31C
/* 805EC25C  38 60 00 02 */	li r3, 2
/* 805EC260  98 7F 06 90 */	stb r3, 0x690(r31)
/* 805EC264  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805EC268  38 BD 00 4C */	addi r5, r29, 0x4c
/* 805EC26C  A8 65 00 16 */	lha r3, 0x16(r5)
/* 805EC270  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 805EC274  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EC278  90 61 00 54 */	stw r3, 0x54(r1)
/* 805EC27C  3C 80 43 30 */	lis r4, 0x4330
/* 805EC280  90 81 00 50 */	stw r4, 0x50(r1)
/* 805EC284  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805EC288  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EC28C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EC290  FC 00 00 1E */	fctiwz f0, f0
/* 805EC294  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 805EC298  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 805EC29C  B0 7F 05 60 */	sth r3, 0x560(r31)
/* 805EC2A0  A8 65 00 16 */	lha r3, 0x16(r5)
/* 805EC2A4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EC2A8  90 61 00 44 */	stw r3, 0x44(r1)
/* 805EC2AC  90 81 00 40 */	stw r4, 0x40(r1)
/* 805EC2B0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805EC2B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EC2B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EC2BC  FC 00 00 1E */	fctiwz f0, f0
/* 805EC2C0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805EC2C4  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 805EC2C8  B0 7F 05 62 */	sth r3, 0x562(r31)
/* 805EC2CC  38 60 00 04 */	li r3, 4
/* 805EC2D0  98 7F 05 C5 */	stb r3, 0x5c5(r31)
/* 805EC2D4  98 1F 05 C6 */	stb r0, 0x5c6(r31)
/* 805EC2D8  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 805EC2DC  7F E3 FB 78 */	mr r3, r31
/* 805EC2E0  38 80 00 20 */	li r4, 0x20
/* 805EC2E4  38 A0 00 02 */	li r5, 2
/* 805EC2E8  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805EC2EC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805EC2F0  4B FF 2C 75 */	bl SetAnm__8daB_GG_cFiiff
/* 805EC2F4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805EC2F8  64 00 00 20 */	oris r0, r0, 0x20
/* 805EC2FC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 805EC300  C0 1E 03 40 */	lfs f0, 0x340(r30)
/* 805EC304  C0 3F 0F C8 */	lfs f1, 0xfc8(r31)
/* 805EC308  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805EC30C  41 82 00 10 */	beq lbl_805EC31C
/* 805EC310  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 805EC314  C0 1F 0F C8 */	lfs f0, 0xfc8(r31)
/* 805EC318  D0 1F 06 48 */	stfs f0, 0x648(r31)
lbl_805EC31C:
/* 805EC31C  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 805EC320  3C 80 80 5F */	lis r4, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805EC324  38 84 D3 D4 */	addi r4, r4, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805EC328  38 84 00 14 */	addi r4, r4, 0x14
/* 805EC32C  4B CD 58 65 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 805EC330  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 805EC334  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805EC338  38 BF 05 38 */	addi r5, r31, 0x538
/* 805EC33C  38 C0 00 03 */	li r6, 3
/* 805EC340  38 E0 00 01 */	li r7, 1
/* 805EC344  4B CD 4D 51 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 805EC348  38 1F 0E 4C */	addi r0, r31, 0xe4c
/* 805EC34C  90 1F 11 4C */	stw r0, 0x114c(r31)
/* 805EC350  38 00 00 01 */	li r0, 1
/* 805EC354  98 1F 11 62 */	stb r0, 0x1162(r31)
/* 805EC358  7F E3 FB 78 */	mr r3, r31
/* 805EC35C  4B FF 22 F5 */	bl initCc__8daB_GG_cFv
/* 805EC360  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805EC364  D0 1F 05 20 */	stfs f0, 0x520(r31)
/* 805EC368  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805EC36C  80 A3 00 04 */	lwz r5, 4(r3)
/* 805EC370  93 E5 00 14 */	stw r31, 0x14(r5)
/* 805EC374  38 E0 00 00 */	li r7, 0
/* 805EC378  3C 60 80 5E */	lis r3, JointCallBack__FP8J3DJointi@ha /* 0x805DED0C@ha */
/* 805EC37C  38 83 ED 0C */	addi r4, r3, JointCallBack__FP8J3DJointi@l /* 0x805DED0C@l */
/* 805EC380  48 00 00 20 */	b lbl_805EC3A0
lbl_805EC384:
/* 805EC384  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 805EC388  41 82 00 14 */	beq lbl_805EC39C
/* 805EC38C  80 66 00 28 */	lwz r3, 0x28(r6)
/* 805EC390  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 805EC394  7C 63 00 2E */	lwzx r3, r3, r0
/* 805EC398  90 83 00 04 */	stw r4, 4(r3)
lbl_805EC39C:
/* 805EC39C  38 E7 00 01 */	addi r7, r7, 1
lbl_805EC3A0:
/* 805EC3A0  80 C5 00 04 */	lwz r6, 4(r5)
/* 805EC3A4  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 805EC3A8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 805EC3AC  7C 00 18 40 */	cmplw r0, r3
/* 805EC3B0  41 80 FF D4 */	blt lbl_805EC384
/* 805EC3B4  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 805EC3B8  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 805EC3BC  88 1F 06 90 */	lbz r0, 0x690(r31)
/* 805EC3C0  28 00 00 00 */	cmplwi r0, 0
/* 805EC3C4  40 82 00 3C */	bne lbl_805EC400
/* 805EC3C8  80 7F 0E 3C */	lwz r3, 0xe3c(r31)
/* 805EC3CC  93 E3 00 14 */	stw r31, 0x14(r3)
/* 805EC3D0  80 7F 0E 3C */	lwz r3, 0xe3c(r31)
/* 805EC3D4  80 63 00 04 */	lwz r3, 4(r3)
/* 805EC3D8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 805EC3DC  80 83 00 04 */	lwz r4, 4(r3)
/* 805EC3E0  3C 60 80 5E */	lis r3, HeadJointCallBack__FP8J3DJointi@ha /* 0x805DEF18@ha */
/* 805EC3E4  38 03 EF 18 */	addi r0, r3, HeadJointCallBack__FP8J3DJointi@l /* 0x805DEF18@l */
/* 805EC3E8  90 04 00 04 */	stw r0, 4(r4)
/* 805EC3EC  80 7F 0E 3C */	lwz r3, 0xe3c(r31)
/* 805EC3F0  80 63 00 04 */	lwz r3, 4(r3)
/* 805EC3F4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 805EC3F8  80 63 00 08 */	lwz r3, 8(r3)
/* 805EC3FC  90 03 00 04 */	stw r0, 4(r3)
lbl_805EC400:
/* 805EC400  7F E3 FB 78 */	mr r3, r31
/* 805EC404  4B FF F7 99 */	bl daB_GG_Execute__FP8daB_GG_c
lbl_805EC408:
/* 805EC408  7F 83 E3 78 */	mr r3, r28
lbl_805EC40C:
/* 805EC40C  39 61 00 70 */	addi r11, r1, 0x70
/* 805EC410  4B D7 5E 15 */	bl _restgpr_28
/* 805EC414  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805EC418  7C 08 03 A6 */	mtlr r0
/* 805EC41C  38 21 00 70 */	addi r1, r1, 0x70
/* 805EC420  4E 80 00 20 */	blr 

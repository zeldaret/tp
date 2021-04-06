lbl_8072218C:
/* 8072218C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80722190  7C 08 02 A6 */	mflr r0
/* 80722194  90 01 00 34 */	stw r0, 0x34(r1)
/* 80722198  39 61 00 30 */	addi r11, r1, 0x30
/* 8072219C  4B C4 00 35 */	bl _savegpr_26
/* 807221A0  7C 7F 1B 78 */	mr r31, r3
/* 807221A4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807221A8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807221AC  40 82 01 3C */	bne lbl_807222E8
/* 807221B0  7F E0 FB 79 */	or. r0, r31, r31
/* 807221B4  41 82 01 28 */	beq lbl_807222DC
/* 807221B8  7C 1E 03 78 */	mr r30, r0
/* 807221BC  4B 8F 69 A9 */	bl __ct__10fopAc_ac_cFv
/* 807221C0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807221C4  4B B9 ED A1 */	bl __ct__15Z2CreatureEnemyFv
/* 807221C8  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 807221CC  4B 95 3C E1 */	bl __ct__12dBgS_AcchCirFv
/* 807221D0  3B 7E 06 F0 */	addi r27, r30, 0x6f0
/* 807221D4  7F 63 DB 78 */	mr r3, r27
/* 807221D8  4B 95 3E C9 */	bl __ct__9dBgS_AcchFv
/* 807221DC  3C 60 80 72 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80722E78@ha */
/* 807221E0  38 63 2E 78 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80722E78@l */
/* 807221E4  90 7B 00 10 */	stw r3, 0x10(r27)
/* 807221E8  38 03 00 0C */	addi r0, r3, 0xc
/* 807221EC  90 1B 00 14 */	stw r0, 0x14(r27)
/* 807221F0  38 03 00 18 */	addi r0, r3, 0x18
/* 807221F4  90 1B 00 24 */	stw r0, 0x24(r27)
/* 807221F8  38 7B 00 14 */	addi r3, r27, 0x14
/* 807221FC  4B 95 6C 6D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80722200  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80722204  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80722208  90 1E 08 E0 */	stw r0, 0x8e0(r30)
/* 8072220C  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80722210  4B 96 15 51 */	bl __ct__10dCcD_GSttsFv
/* 80722214  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80722218  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8072221C  90 7E 08 E0 */	stw r3, 0x8e0(r30)
/* 80722220  38 03 00 20 */	addi r0, r3, 0x20
/* 80722224  90 1E 08 E4 */	stw r0, 0x8e4(r30)
/* 80722228  3B 5E 09 04 */	addi r26, r30, 0x904
/* 8072222C  7F 43 D3 78 */	mr r3, r26
/* 80722230  4B 96 17 F9 */	bl __ct__12dCcD_GObjInfFv
/* 80722234  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80722238  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8072223C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80722240  3C 60 80 72 */	lis r3, __vt__8cM3dGAab@ha /* 0x80722E6C@ha */
/* 80722244  38 03 2E 6C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80722E6C@l */
/* 80722248  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 8072224C  3C 60 80 72 */	lis r3, __vt__8cM3dGSph@ha /* 0x80722E60@ha */
/* 80722250  38 03 2E 60 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80722E60@l */
/* 80722254  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80722258  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8072225C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80722260  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80722264  3B A3 00 58 */	addi r29, r3, 0x58
/* 80722268  93 BA 01 34 */	stw r29, 0x134(r26)
/* 8072226C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80722270  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80722274  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80722278  3B 83 00 2C */	addi r28, r3, 0x2c
/* 8072227C  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80722280  3B 63 00 84 */	addi r27, r3, 0x84
/* 80722284  93 7A 01 34 */	stw r27, 0x134(r26)
/* 80722288  3B 5E 0A 3C */	addi r26, r30, 0xa3c
/* 8072228C  7F 43 D3 78 */	mr r3, r26
/* 80722290  4B 96 17 99 */	bl __ct__12dCcD_GObjInfFv
/* 80722294  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80722298  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8072229C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 807222A0  3C 60 80 72 */	lis r3, __vt__8cM3dGAab@ha /* 0x80722E6C@ha */
/* 807222A4  38 03 2E 6C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80722E6C@l */
/* 807222A8  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 807222AC  3C 60 80 72 */	lis r3, __vt__8cM3dGSph@ha /* 0x80722E60@ha */
/* 807222B0  38 03 2E 60 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80722E60@l */
/* 807222B4  90 1A 01 34 */	stw r0, 0x134(r26)
/* 807222B8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807222BC  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807222C0  90 1A 01 20 */	stw r0, 0x120(r26)
/* 807222C4  93 BA 01 34 */	stw r29, 0x134(r26)
/* 807222C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807222CC  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807222D0  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 807222D4  93 9A 01 20 */	stw r28, 0x120(r26)
/* 807222D8  93 7A 01 34 */	stw r27, 0x134(r26)
lbl_807222DC:
/* 807222DC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 807222E0  60 00 00 08 */	ori r0, r0, 8
/* 807222E4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_807222E8:
/* 807222E8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807222EC  3C 80 80 72 */	lis r4, d_a_e_mm__stringBase0@ha /* 0x80722CE8@ha */
/* 807222F0  38 84 2C E8 */	addi r4, r4, d_a_e_mm__stringBase0@l /* 0x80722CE8@l */
/* 807222F4  4B 90 AB C9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807222F8  7C 7E 1B 78 */	mr r30, r3
/* 807222FC  2C 1E 00 04 */	cmpwi r30, 4
/* 80722300  40 82 02 50 */	bne lbl_80722550
/* 80722304  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80722308  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 8072230C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80722310  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80722314  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 80722318  88 9F 05 B6 */	lbz r4, 0x5b6(r31)
/* 8072231C  28 04 00 FF */	cmplwi r4, 0xff
/* 80722320  41 82 00 28 */	beq lbl_80722348
/* 80722324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80722328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072232C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80722330  7C 05 07 74 */	extsb r5, r0
/* 80722334  4B 91 30 2D */	bl isSwitch__10dSv_info_cCFii
/* 80722338  2C 03 00 00 */	cmpwi r3, 0
/* 8072233C  41 82 00 0C */	beq lbl_80722348
/* 80722340  38 60 00 05 */	li r3, 5
/* 80722344  48 00 02 10 */	b lbl_80722554
lbl_80722348:
/* 80722348  38 A0 1A F0 */	li r5, 0x1af0
/* 8072234C  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80722350  2C 00 00 01 */	cmpwi r0, 1
/* 80722354  40 82 00 08 */	bne lbl_8072235C
/* 80722358  38 A0 1B B0 */	li r5, 0x1bb0
lbl_8072235C:
/* 8072235C  7F E3 FB 78 */	mr r3, r31
/* 80722360  3C 80 80 72 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80722080@ha */
/* 80722364  38 84 20 80 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80722080@l */
/* 80722368  4B 8F 81 49 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8072236C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80722370  40 82 00 0C */	bne lbl_8072237C
/* 80722374  38 60 00 05 */	li r3, 5
/* 80722378  48 00 01 DC */	b lbl_80722554
lbl_8072237C:
/* 8072237C  3C 60 80 72 */	lis r3, data_80722EB0@ha /* 0x80722EB0@ha */
/* 80722380  8C 03 2E B0 */	lbzu r0, data_80722EB0@l(r3)  /* 0x80722EB0@l */
/* 80722384  28 00 00 00 */	cmplwi r0, 0
/* 80722388  40 82 00 20 */	bne lbl_807223A8
/* 8072238C  38 00 00 01 */	li r0, 1
/* 80722390  98 1F 0C 00 */	stb r0, 0xc00(r31)
/* 80722394  98 03 00 00 */	stb r0, 0(r3)
/* 80722398  38 00 FF FF */	li r0, -1
/* 8072239C  3C 60 80 72 */	lis r3, l_HIO@ha /* 0x80722EC0@ha */
/* 807223A0  38 63 2E C0 */	addi r3, r3, l_HIO@l /* 0x80722EC0@l */
/* 807223A4  98 03 00 04 */	stb r0, 4(r3)
lbl_807223A8:
/* 807223A8  38 00 00 04 */	li r0, 4
/* 807223AC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 807223B0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807223B4  80 63 00 04 */	lwz r3, 4(r3)
/* 807223B8  38 03 00 24 */	addi r0, r3, 0x24
/* 807223BC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 807223C0  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 807223C4  38 80 00 64 */	li r4, 0x64
/* 807223C8  38 A0 00 00 */	li r5, 0
/* 807223CC  7F E6 FB 78 */	mr r6, r31
/* 807223D0  4B 96 14 91 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807223D4  38 00 00 14 */	li r0, 0x14
/* 807223D8  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807223DC  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 807223E0  38 7F 09 04 */	addi r3, r31, 0x904
/* 807223E4  3C 80 80 72 */	lis r4, cc_sph_src@ha /* 0x80722D6C@ha */
/* 807223E8  38 84 2D 6C */	addi r4, r4, cc_sph_src@l /* 0x80722D6C@l */
/* 807223EC  4B 96 26 49 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807223F0  38 1F 08 C8 */	addi r0, r31, 0x8c8
/* 807223F4  90 1F 09 48 */	stw r0, 0x948(r31)
/* 807223F8  38 7F 0A 3C */	addi r3, r31, 0xa3c
/* 807223FC  3C 80 80 72 */	lis r4, cc_wind_sph_src@ha /* 0x80722DAC@ha */
/* 80722400  38 84 2D AC */	addi r4, r4, cc_wind_sph_src@l /* 0x80722DAC@l */
/* 80722404  4B 96 26 31 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80722408  38 1F 08 C8 */	addi r0, r31, 0x8c8
/* 8072240C  90 1F 0A 80 */	stw r0, 0xa80(r31)
/* 80722410  38 00 00 00 */	li r0, 0
/* 80722414  90 01 00 08 */	stw r0, 8(r1)
/* 80722418  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 8072241C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80722420  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80722424  7F E6 FB 78 */	mr r6, r31
/* 80722428  38 E0 00 01 */	li r7, 1
/* 8072242C  39 1F 06 B0 */	addi r8, r31, 0x6b0
/* 80722430  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80722434  39 40 00 00 */	li r10, 0
/* 80722438  4B 95 3E 11 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8072243C  38 7F 06 B0 */	addi r3, r31, 0x6b0
/* 80722440  3C 80 80 72 */	lis r4, lit_4229@ha /* 0x80722CB8@ha */
/* 80722444  C0 24 2C B8 */	lfs f1, lit_4229@l(r4)  /* 0x80722CB8@l */
/* 80722448  3C 80 80 72 */	lis r4, lit_4886@ha /* 0x80722CE4@ha */
/* 8072244C  C0 44 2C E4 */	lfs f2, lit_4886@l(r4)  /* 0x80722CE4@l */
/* 80722450  4B 95 3B 09 */	bl SetWall__12dBgS_AcchCirFff
/* 80722454  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80722458  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 8072245C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80722460  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80722464  38 BF 05 38 */	addi r5, r31, 0x538
/* 80722468  38 C0 00 03 */	li r6, 3
/* 8072246C  38 E0 00 01 */	li r7, 1
/* 80722470  4B B9 EC 25 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80722474  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80722478  3C 80 80 72 */	lis r4, d_a_e_mm__stringBase0@ha /* 0x80722CE8@ha */
/* 8072247C  38 84 2C E8 */	addi r4, r4, d_a_e_mm__stringBase0@l /* 0x80722CE8@l */
/* 80722480  38 84 00 05 */	addi r4, r4, 5
/* 80722484  4B B9 F7 0D */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80722488  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 8072248C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80722490  38 00 00 09 */	li r0, 9
/* 80722494  98 1F 0B 92 */	stb r0, 0xb92(r31)
/* 80722498  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 8072249C  2C 00 00 01 */	cmpwi r0, 1
/* 807224A0  40 82 00 3C */	bne lbl_807224DC
/* 807224A4  38 00 00 FE */	li r0, 0xfe
/* 807224A8  98 1F 08 DC */	stb r0, 0x8dc(r31)
/* 807224AC  38 00 00 02 */	li r0, 2
/* 807224B0  98 1F 09 18 */	stb r0, 0x918(r31)
/* 807224B4  3C 60 80 72 */	lis r3, l_HIO@ha /* 0x80722EC0@ha */
/* 807224B8  38 63 2E C0 */	addi r3, r3, l_HIO@l /* 0x80722EC0@l */
/* 807224BC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807224C0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 807224C4  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 807224C8  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 807224CC  38 00 00 28 */	li r0, 0x28
/* 807224D0  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807224D4  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 807224D8  48 00 00 24 */	b lbl_807224FC
lbl_807224DC:
/* 807224DC  38 00 00 C8 */	li r0, 0xc8
/* 807224E0  98 1F 08 DC */	stb r0, 0x8dc(r31)
/* 807224E4  3C 60 80 72 */	lis r3, l_HIO@ha /* 0x80722EC0@ha */
/* 807224E8  38 63 2E C0 */	addi r3, r3, l_HIO@l /* 0x80722EC0@l */
/* 807224EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 807224F0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 807224F4  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 807224F8  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
lbl_807224FC:
/* 807224FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80722500  7C 07 07 74 */	extsb r7, r0
/* 80722504  38 00 00 00 */	li r0, 0
/* 80722508  90 01 00 08 */	stw r0, 8(r1)
/* 8072250C  38 60 02 EE */	li r3, 0x2ee
/* 80722510  28 1F 00 00 */	cmplwi r31, 0
/* 80722514  41 82 00 0C */	beq lbl_80722520
/* 80722518  80 9F 00 04 */	lwz r4, 4(r31)
/* 8072251C  48 00 00 08 */	b lbl_80722524
lbl_80722520:
/* 80722520  38 80 FF FF */	li r4, -1
lbl_80722524:
/* 80722524  38 A0 00 00 */	li r5, 0
/* 80722528  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8072252C  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80722530  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80722534  89 5F 04 99 */	lbz r10, 0x499(r31)
/* 80722538  4B 8F 79 B9 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8072253C  90 7F 06 68 */	stw r3, 0x668(r31)
/* 80722540  38 00 00 01 */	li r0, 1
/* 80722544  98 1F 06 72 */	stb r0, 0x672(r31)
/* 80722548  7F E3 FB 78 */	mr r3, r31
/* 8072254C  4B FF F7 F9 */	bl daE_MM_Execute__FP10e_mm_class
lbl_80722550:
/* 80722550  7F C3 F3 78 */	mr r3, r30
lbl_80722554:
/* 80722554  39 61 00 30 */	addi r11, r1, 0x30
/* 80722558  4B C3 FC C5 */	bl _restgpr_26
/* 8072255C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80722560  7C 08 03 A6 */	mtlr r0
/* 80722564  38 21 00 30 */	addi r1, r1, 0x30
/* 80722568  4E 80 00 20 */	blr 

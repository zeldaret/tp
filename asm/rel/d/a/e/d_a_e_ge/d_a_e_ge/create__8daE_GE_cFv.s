lbl_806CC390:
/* 806CC390  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806CC394  7C 08 02 A6 */	mflr r0
/* 806CC398  90 01 00 94 */	stw r0, 0x94(r1)
/* 806CC39C  39 61 00 90 */	addi r11, r1, 0x90
/* 806CC3A0  4B C9 5E 2C */	b _savegpr_25
/* 806CC3A4  7C 7D 1B 78 */	mr r29, r3
/* 806CC3A8  3C 80 80 6D */	lis r4, lit_3904@ha
/* 806CC3AC  3B E4 D0 00 */	addi r31, r4, lit_3904@l
/* 806CC3B0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806CC3B4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806CC3B8  40 82 01 3C */	bne lbl_806CC4F4
/* 806CC3BC  7F A0 EB 79 */	or. r0, r29, r29
/* 806CC3C0  41 82 01 28 */	beq lbl_806CC4E8
/* 806CC3C4  7C 1E 03 78 */	mr r30, r0
/* 806CC3C8  4B 94 C7 9C */	b __ct__10fopAc_ac_cFv
/* 806CC3CC  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806CC3D0  4B BF 4B 94 */	b __ct__15Z2CreatureEnemyFv
/* 806CC3D4  38 7E 06 5C */	addi r3, r30, 0x65c
/* 806CC3D8  4B 9A 9A D4 */	b __ct__12dBgS_AcchCirFv
/* 806CC3DC  3B 5E 06 9C */	addi r26, r30, 0x69c
/* 806CC3E0  7F 43 D3 78 */	mr r3, r26
/* 806CC3E4  4B 9A 9C BC */	b __ct__9dBgS_AcchFv
/* 806CC3E8  3C 60 80 6D */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 806CC3EC  38 63 D3 20 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 806CC3F0  90 7A 00 10 */	stw r3, 0x10(r26)
/* 806CC3F4  38 03 00 0C */	addi r0, r3, 0xc
/* 806CC3F8  90 1A 00 14 */	stw r0, 0x14(r26)
/* 806CC3FC  38 03 00 18 */	addi r0, r3, 0x18
/* 806CC400  90 1A 00 24 */	stw r0, 0x24(r26)
/* 806CC404  38 7A 00 14 */	addi r3, r26, 0x14
/* 806CC408  4B 9A CA 60 */	b SetObj__16dBgS_PolyPassChkFv
/* 806CC40C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 806CC410  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 806CC414  90 1E 08 8C */	stw r0, 0x88c(r30)
/* 806CC418  38 7E 08 90 */	addi r3, r30, 0x890
/* 806CC41C  4B 9B 73 44 */	b __ct__10dCcD_GSttsFv
/* 806CC420  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 806CC424  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 806CC428  90 7E 08 8C */	stw r3, 0x88c(r30)
/* 806CC42C  38 03 00 20 */	addi r0, r3, 0x20
/* 806CC430  90 1E 08 90 */	stw r0, 0x890(r30)
/* 806CC434  3B 3E 08 B0 */	addi r25, r30, 0x8b0
/* 806CC438  7F 23 CB 78 */	mr r3, r25
/* 806CC43C  4B 9B 75 EC */	b __ct__12dCcD_GObjInfFv
/* 806CC440  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806CC444  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806CC448  90 19 01 20 */	stw r0, 0x120(r25)
/* 806CC44C  3C 60 80 6D */	lis r3, __vt__8cM3dGAab@ha
/* 806CC450  38 03 D3 14 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806CC454  90 19 01 1C */	stw r0, 0x11c(r25)
/* 806CC458  3C 60 80 6D */	lis r3, __vt__8cM3dGSph@ha
/* 806CC45C  38 03 D3 08 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806CC460  90 19 01 34 */	stw r0, 0x134(r25)
/* 806CC464  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806CC468  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806CC46C  90 79 01 20 */	stw r3, 0x120(r25)
/* 806CC470  3B 83 00 58 */	addi r28, r3, 0x58
/* 806CC474  93 99 01 34 */	stw r28, 0x134(r25)
/* 806CC478  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806CC47C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806CC480  90 79 00 3C */	stw r3, 0x3c(r25)
/* 806CC484  3B 63 00 2C */	addi r27, r3, 0x2c
/* 806CC488  93 79 01 20 */	stw r27, 0x120(r25)
/* 806CC48C  3B 43 00 84 */	addi r26, r3, 0x84
/* 806CC490  93 59 01 34 */	stw r26, 0x134(r25)
/* 806CC494  3B 3E 09 E8 */	addi r25, r30, 0x9e8
/* 806CC498  7F 23 CB 78 */	mr r3, r25
/* 806CC49C  4B 9B 75 8C */	b __ct__12dCcD_GObjInfFv
/* 806CC4A0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806CC4A4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806CC4A8  90 19 01 20 */	stw r0, 0x120(r25)
/* 806CC4AC  3C 60 80 6D */	lis r3, __vt__8cM3dGAab@ha
/* 806CC4B0  38 03 D3 14 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806CC4B4  90 19 01 1C */	stw r0, 0x11c(r25)
/* 806CC4B8  3C 60 80 6D */	lis r3, __vt__8cM3dGSph@ha
/* 806CC4BC  38 03 D3 08 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806CC4C0  90 19 01 34 */	stw r0, 0x134(r25)
/* 806CC4C4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806CC4C8  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806CC4CC  90 19 01 20 */	stw r0, 0x120(r25)
/* 806CC4D0  93 99 01 34 */	stw r28, 0x134(r25)
/* 806CC4D4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806CC4D8  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806CC4DC  90 19 00 3C */	stw r0, 0x3c(r25)
/* 806CC4E0  93 79 01 20 */	stw r27, 0x120(r25)
/* 806CC4E4  93 59 01 34 */	stw r26, 0x134(r25)
lbl_806CC4E8:
/* 806CC4E8  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 806CC4EC  60 00 00 08 */	ori r0, r0, 8
/* 806CC4F0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_806CC4F4:
/* 806CC4F4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806CC4F8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806CC4FC  98 1D 0B 9C */	stb r0, 0xb9c(r29)
/* 806CC500  88 9D 0B 9C */	lbz r4, 0xb9c(r29)
/* 806CC504  28 04 00 FF */	cmplwi r4, 0xff
/* 806CC508  41 82 00 28 */	beq lbl_806CC530
/* 806CC50C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CC510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CC514  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806CC518  7C 05 07 74 */	extsb r5, r0
/* 806CC51C  4B 96 8E 44 */	b isSwitch__10dSv_info_cCFii
/* 806CC520  2C 03 00 00 */	cmpwi r3, 0
/* 806CC524  41 82 00 0C */	beq lbl_806CC530
/* 806CC528  38 60 00 05 */	li r3, 5
/* 806CC52C  48 00 02 E0 */	b lbl_806CC80C
lbl_806CC530:
/* 806CC530  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806CC534  98 1D 0B 9A */	stb r0, 0xb9a(r29)
/* 806CC538  88 1D 0B 9A */	lbz r0, 0xb9a(r29)
/* 806CC53C  28 00 00 FF */	cmplwi r0, 0xff
/* 806CC540  40 82 00 0C */	bne lbl_806CC54C
/* 806CC544  38 00 00 00 */	li r0, 0
/* 806CC548  98 1D 0B 9A */	stb r0, 0xb9a(r29)
lbl_806CC54C:
/* 806CC54C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806CC550  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 806CC554  98 1D 0B 9B */	stb r0, 0xb9b(r29)
/* 806CC558  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 806CC55C  3C 80 80 6D */	lis r4, stringBase0@ha
/* 806CC560  38 84 D1 0C */	addi r4, r4, stringBase0@l
/* 806CC564  4B 96 09 58 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806CC568  7C 7E 1B 78 */	mr r30, r3
/* 806CC56C  2C 1E 00 04 */	cmpwi r30, 4
/* 806CC570  40 82 02 98 */	bne lbl_806CC808
/* 806CC574  7F A3 EB 78 */	mr r3, r29
/* 806CC578  3C 80 80 6D */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 806CC57C  38 84 C3 70 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 806CC580  38 A0 13 40 */	li r5, 0x1340
/* 806CC584  4B 94 DF 2C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806CC588  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806CC58C  40 82 00 0C */	bne lbl_806CC598
/* 806CC590  38 60 00 05 */	li r3, 5
/* 806CC594  48 00 02 78 */	b lbl_806CC80C
lbl_806CC598:
/* 806CC598  3C 60 80 6D */	lis r3, data_806CD358@ha
/* 806CC59C  8C 03 D3 58 */	lbzu r0, data_806CD358@l(r3)
/* 806CC5A0  28 00 00 00 */	cmplwi r0, 0
/* 806CC5A4  40 82 00 20 */	bne lbl_806CC5C4
/* 806CC5A8  38 00 00 01 */	li r0, 1
/* 806CC5AC  98 1D 0B 9F */	stb r0, 0xb9f(r29)
/* 806CC5B0  98 03 00 00 */	stb r0, 0(r3)
/* 806CC5B4  38 00 FF FF */	li r0, -1
/* 806CC5B8  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CC5BC  38 63 D3 68 */	addi r3, r3, l_HIO@l
/* 806CC5C0  98 03 00 04 */	stb r0, 4(r3)
lbl_806CC5C4:
/* 806CC5C4  38 00 00 04 */	li r0, 4
/* 806CC5C8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806CC5CC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806CC5D0  80 63 00 04 */	lwz r3, 4(r3)
/* 806CC5D4  38 03 00 24 */	addi r0, r3, 0x24
/* 806CC5D8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 806CC5DC  7F A3 EB 78 */	mr r3, r29
/* 806CC5E0  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 806CC5E4  FC 40 08 90 */	fmr f2, f1
/* 806CC5E8  FC 60 08 90 */	fmr f3, f1
/* 806CC5EC  4B 94 DF 3C */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806CC5F0  7F A3 EB 78 */	mr r3, r29
/* 806CC5F4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806CC5F8  FC 40 08 90 */	fmr f2, f1
/* 806CC5FC  FC 60 08 90 */	fmr f3, f1
/* 806CC600  4B 94 DF 38 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806CC604  38 00 00 00 */	li r0, 0
/* 806CC608  90 01 00 08 */	stw r0, 8(r1)
/* 806CC60C  38 7D 06 9C */	addi r3, r29, 0x69c
/* 806CC610  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806CC614  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 806CC618  7F A6 EB 78 */	mr r6, r29
/* 806CC61C  38 E0 00 01 */	li r7, 1
/* 806CC620  39 1D 06 5C */	addi r8, r29, 0x65c
/* 806CC624  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 806CC628  39 40 00 00 */	li r10, 0
/* 806CC62C  4B 9A 9C 1C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806CC630  38 7D 06 5C */	addi r3, r29, 0x65c
/* 806CC634  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CC638  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 806CC63C  4B 9A 99 1C */	b SetWall__12dBgS_AcchCirFff
/* 806CC640  38 7D 06 9C */	addi r3, r29, 0x69c
/* 806CC644  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806CC648  4B 9A AA CC */	b SetGroundUpY__9dBgS_AcchFf
/* 806CC64C  38 00 00 0A */	li r0, 0xa
/* 806CC650  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806CC654  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 806CC658  38 7D 08 74 */	addi r3, r29, 0x874
/* 806CC65C  38 80 00 64 */	li r4, 0x64
/* 806CC660  38 A0 00 00 */	li r5, 0
/* 806CC664  7F A6 EB 78 */	mr r6, r29
/* 806CC668  4B 9B 71 F8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806CC66C  38 7D 08 B0 */	addi r3, r29, 0x8b0
/* 806CC670  3C 80 80 6D */	lis r4, cc_sph_src@ha
/* 806CC674  38 84 D2 54 */	addi r4, r4, cc_sph_src@l
/* 806CC678  4B 9B 83 BC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806CC67C  38 1D 08 74 */	addi r0, r29, 0x874
/* 806CC680  90 1D 08 F4 */	stw r0, 0x8f4(r29)
/* 806CC684  88 1D 0B 9A */	lbz r0, 0xb9a(r29)
/* 806CC688  28 00 00 02 */	cmplwi r0, 2
/* 806CC68C  41 82 00 14 */	beq lbl_806CC6A0
/* 806CC690  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBDDDF@ha */
/* 806CC694  38 03 DD DF */	addi r0, r3, 0xDDDF /* 0xD8FBDDDF@l */
/* 806CC698  90 1D 08 D8 */	stw r0, 0x8d8(r29)
/* 806CC69C  48 00 00 10 */	b lbl_806CC6AC
lbl_806CC6A0:
/* 806CC6A0  3C 60 D8 FB */	lis r3, 0xD8FB /* 0xD8FADDDF@ha */
/* 806CC6A4  38 03 DD DF */	addi r0, r3, 0xDDDF /* 0xD8FADDDF@l */
/* 806CC6A8  90 1D 08 D8 */	stw r0, 0x8d8(r29)
lbl_806CC6AC:
/* 806CC6AC  80 1D 09 4C */	lwz r0, 0x94c(r29)
/* 806CC6B0  60 00 00 04 */	ori r0, r0, 4
/* 806CC6B4  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 806CC6B8  38 7D 09 E8 */	addi r3, r29, 0x9e8
/* 806CC6BC  3C 80 80 6D */	lis r4, cc_sph_src@ha
/* 806CC6C0  38 84 D2 54 */	addi r4, r4, cc_sph_src@l
/* 806CC6C4  4B 9B 83 70 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806CC6C8  38 1D 08 74 */	addi r0, r29, 0x874
/* 806CC6CC  90 1D 0A 2C */	stw r0, 0xa2c(r29)
/* 806CC6D0  38 00 20 20 */	li r0, 0x2020
/* 806CC6D4  90 1D 0A 10 */	stw r0, 0xa10(r29)
/* 806CC6D8  80 1D 0A 84 */	lwz r0, 0xa84(r29)
/* 806CC6DC  60 00 00 04 */	ori r0, r0, 4
/* 806CC6E0  90 1D 0A 84 */	stw r0, 0xa84(r29)
/* 806CC6E4  80 1D 0A 14 */	lwz r0, 0xa14(r29)
/* 806CC6E8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CC6EC  90 1D 0A 14 */	stw r0, 0xa14(r29)
/* 806CC6F0  80 1D 09 E8 */	lwz r0, 0x9e8(r29)
/* 806CC6F4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CC6F8  90 1D 09 E8 */	stw r0, 0x9e8(r29)
/* 806CC6FC  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 806CC700  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806CC704  38 BD 05 38 */	addi r5, r29, 0x538
/* 806CC708  38 C0 00 03 */	li r6, 3
/* 806CC70C  38 E0 00 01 */	li r7, 1
/* 806CC710  4B BF 49 84 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806CC714  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 806CC718  3C 80 80 6D */	lis r4, stringBase0@ha
/* 806CC71C  38 84 D1 0C */	addi r4, r4, stringBase0@l
/* 806CC720  38 84 00 05 */	addi r4, r4, 5
/* 806CC724  4B BF 54 6C */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 806CC728  38 1D 05 B8 */	addi r0, r29, 0x5b8
/* 806CC72C  90 1D 0B 28 */	stw r0, 0xb28(r29)
/* 806CC730  38 00 00 01 */	li r0, 1
/* 806CC734  98 1D 0B 3E */	stb r0, 0xb3e(r29)
/* 806CC738  88 1D 0B 9A */	lbz r0, 0xb9a(r29)
/* 806CC73C  2C 00 00 00 */	cmpwi r0, 0
/* 806CC740  41 82 00 20 */	beq lbl_806CC760
/* 806CC744  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806CC748  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 806CC74C  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 806CC750  7F A3 EB 78 */	mr r3, r29
/* 806CC754  38 80 00 01 */	li r4, 1
/* 806CC758  4B FF B9 A1 */	bl setActionMode__8daE_GE_cFi
/* 806CC75C  48 00 00 A4 */	b lbl_806CC800
lbl_806CC760:
/* 806CC760  38 61 00 1C */	addi r3, r1, 0x1c
/* 806CC764  4B 9A AE 18 */	b __ct__11dBgS_GndChkFv
/* 806CC768  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 806CC76C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806CC770  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 806CC774  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806CC778  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 806CC77C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806CC780  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806CC784  EC 01 00 2A */	fadds f0, f1, f0
/* 806CC788  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806CC78C  38 61 00 1C */	addi r3, r1, 0x1c
/* 806CC790  38 81 00 10 */	addi r4, r1, 0x10
/* 806CC794  4B B9 B5 94 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806CC798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CC79C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CC7A0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806CC7A4  38 81 00 1C */	addi r4, r1, 0x1c
/* 806CC7A8  4B 9A 7C F8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806CC7AC  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 806CC7B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806CC7B4  41 82 00 34 */	beq lbl_806CC7E8
/* 806CC7B8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806CC7BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 806CC7C0  FC 00 02 10 */	fabs f0, f0
/* 806CC7C4  FC 40 00 18 */	frsp f2, f0
/* 806CC7C8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806CC7CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806CC7D0  40 80 00 18 */	bge lbl_806CC7E8
/* 806CC7D4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806CC7D8  EC 00 08 2A */	fadds f0, f0, f1
/* 806CC7DC  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 806CC7E0  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 806CC7E4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_806CC7E8:
/* 806CC7E8  7F A3 EB 78 */	mr r3, r29
/* 806CC7EC  38 80 00 00 */	li r4, 0
/* 806CC7F0  4B FF B9 09 */	bl setActionMode__8daE_GE_cFi
/* 806CC7F4  38 61 00 1C */	addi r3, r1, 0x1c
/* 806CC7F8  38 80 FF FF */	li r4, -1
/* 806CC7FC  4B 9A AD F4 */	b __dt__11dBgS_GndChkFv
lbl_806CC800:
/* 806CC800  7F A3 EB 78 */	mr r3, r29
/* 806CC804  4B FF F6 95 */	bl mtx_set__8daE_GE_cFv
lbl_806CC808:
/* 806CC808  7F C3 F3 78 */	mr r3, r30
lbl_806CC80C:
/* 806CC80C  39 61 00 90 */	addi r11, r1, 0x90
/* 806CC810  4B C9 5A 08 */	b _restgpr_25
/* 806CC814  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806CC818  7C 08 03 A6 */	mtlr r0
/* 806CC81C  38 21 00 90 */	addi r1, r1, 0x90
/* 806CC820  4E 80 00 20 */	blr 

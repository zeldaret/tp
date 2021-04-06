lbl_807CD668:
/* 807CD668  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807CD66C  7C 08 02 A6 */	mflr r0
/* 807CD670  90 01 00 44 */	stw r0, 0x44(r1)
/* 807CD674  39 61 00 40 */	addi r11, r1, 0x40
/* 807CD678  4B B9 4B 49 */	bl _savegpr_22
/* 807CD67C  7C 7C 1B 78 */	mr r28, r3
/* 807CD680  3C 80 80 7D */	lis r4, cNullVec__6Z2Calc@ha /* 0x807CEF08@ha */
/* 807CD684  3B E4 EF 08 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x807CEF08@l */
/* 807CD688  3C 80 80 7D */	lis r4, lit_3907@ha /* 0x807CECA8@ha */
/* 807CD68C  3B C4 EC A8 */	addi r30, r4, lit_3907@l /* 0x807CECA8@l */
/* 807CD690  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807CD694  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807CD698  40 82 00 1C */	bne lbl_807CD6B4
/* 807CD69C  28 1C 00 00 */	cmplwi r28, 0
/* 807CD6A0  41 82 00 08 */	beq lbl_807CD6A8
/* 807CD6A4  48 00 04 35 */	bl __ct__8daE_VA_cFv
lbl_807CD6A8:
/* 807CD6A8  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 807CD6AC  60 00 00 08 */	ori r0, r0, 8
/* 807CD6B0  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_807CD6B4:
/* 807CD6B4  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 807CD6B8  3C 80 80 7D */	lis r4, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD6BC  38 84 EE FC */	addi r4, r4, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD6C0  4B 85 F7 FD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807CD6C4  7C 7D 1B 78 */	mr r29, r3
/* 807CD6C8  2C 1D 00 04 */	cmpwi r29, 4
/* 807CD6CC  40 82 03 F0 */	bne lbl_807CDABC
/* 807CD6D0  7F 83 E3 78 */	mr r3, r28
/* 807CD6D4  3C 80 80 7D */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807CD648@ha */
/* 807CD6D8  38 84 D6 48 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807CD648@l */
/* 807CD6DC  3C A0 00 02 */	lis r5, 0x0002 /* 0x000216A0@ha */
/* 807CD6E0  38 A5 16 A0 */	addi r5, r5, 0x16A0 /* 0x000216A0@l */
/* 807CD6E4  4B 84 CD CD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807CD6E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807CD6EC  40 82 00 0C */	bne lbl_807CD6F8
/* 807CD6F0  38 60 00 05 */	li r3, 5
/* 807CD6F4  48 00 03 CC */	b lbl_807CDAC0
lbl_807CD6F8:
/* 807CD6F8  3C 60 80 7D */	lis r3, struct_807CF4B4+0x1@ha /* 0x807CF4B5@ha */
/* 807CD6FC  8C 03 F4 B5 */	lbzu r0, struct_807CF4B4+0x1@l(r3)  /* 0x807CF4B5@l */
/* 807CD700  28 00 00 00 */	cmplwi r0, 0
/* 807CD704  40 82 00 24 */	bne lbl_807CD728
/* 807CD708  38 00 00 01 */	li r0, 1
/* 807CD70C  98 03 00 00 */	stb r0, 0(r3)
/* 807CD710  3C 7C 00 01 */	addis r3, r28, 1
/* 807CD714  98 03 0F F8 */	stb r0, 0xff8(r3)
/* 807CD718  38 00 FF FF */	li r0, -1
/* 807CD71C  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CD720  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807CD724  98 03 00 04 */	stb r0, 4(r3)
lbl_807CD728:
/* 807CD728  38 00 00 00 */	li r0, 0
/* 807CD72C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 807CD730  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 807CD734  98 1C 13 8C */	stb r0, 0x138c(r28)
/* 807CD738  88 9C 13 8C */	lbz r4, 0x138c(r28)
/* 807CD73C  28 04 00 FF */	cmplwi r4, 0xff
/* 807CD740  41 82 00 40 */	beq lbl_807CD780
/* 807CD744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CD748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CD74C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807CD750  7C 05 07 74 */	extsb r5, r0
/* 807CD754  4B 86 7C 0D */	bl isSwitch__10dSv_info_cCFii
/* 807CD758  2C 03 00 00 */	cmpwi r3, 0
/* 807CD75C  41 82 00 24 */	beq lbl_807CD780
/* 807CD760  38 00 00 04 */	li r0, 4
/* 807CD764  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807CD768  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807CD76C  98 03 12 C8 */	stb r0, 0x12c8(r3)
/* 807CD770  98 03 12 C2 */	stb r0, 0x12c2(r3)
/* 807CD774  98 03 12 C3 */	stb r0, 0x12c3(r3)
/* 807CD778  38 60 00 05 */	li r3, 5
/* 807CD77C  48 00 03 44 */	b lbl_807CDAC0
lbl_807CD780:
/* 807CD780  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807CD784  80 63 00 04 */	lwz r3, 4(r3)
/* 807CD788  38 03 00 24 */	addi r0, r3, 0x24
/* 807CD78C  90 1C 05 04 */	stw r0, 0x504(r28)
/* 807CD790  7F 83 E3 78 */	mr r3, r28
/* 807CD794  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 807CD798  FC 40 08 90 */	fmr f2, f1
/* 807CD79C  FC 60 08 90 */	fmr f3, f1
/* 807CD7A0  4B 84 CD 89 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807CD7A4  7F 83 E3 78 */	mr r3, r28
/* 807CD7A8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807CD7AC  FC 40 08 90 */	fmr f2, f1
/* 807CD7B0  FC 60 08 90 */	fmr f3, f1
/* 807CD7B4  4B 84 CD 85 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807CD7B8  38 00 00 00 */	li r0, 0
/* 807CD7BC  90 01 00 08 */	stw r0, 8(r1)
/* 807CD7C0  38 7C 14 F8 */	addi r3, r28, 0x14f8
/* 807CD7C4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807CD7C8  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 807CD7CC  7F 86 E3 78 */	mr r6, r28
/* 807CD7D0  38 E0 00 01 */	li r7, 1
/* 807CD7D4  39 1C 14 B8 */	addi r8, r28, 0x14b8
/* 807CD7D8  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 807CD7DC  39 40 00 00 */	li r10, 0
/* 807CD7E0  4B 8A 8A 69 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807CD7E4  38 7C 14 B8 */	addi r3, r28, 0x14b8
/* 807CD7E8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 807CD7EC  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 807CD7F0  4B 8A 87 69 */	bl SetWall__12dBgS_AcchCirFff
/* 807CD7F4  3A C0 00 00 */	li r22, 0
/* 807CD7F8  3B 60 00 00 */	li r27, 0
/* 807CD7FC  3B 40 00 00 */	li r26, 0
/* 807CD800  3B 20 00 00 */	li r25, 0
/* 807CD804  7F 38 CB 78 */	mr r24, r25
lbl_807CD808:
/* 807CD808  7D 3C CA 14 */	add r9, r28, r25
/* 807CD80C  93 01 00 08 */	stw r24, 8(r1)
/* 807CD810  38 7A 17 50 */	addi r3, r26, 0x1750
/* 807CD814  7C 7C 1A 14 */	add r3, r28, r3
/* 807CD818  38 89 11 E0 */	addi r4, r9, 0x11e0
/* 807CD81C  38 A9 11 F8 */	addi r5, r9, 0x11f8
/* 807CD820  7F 86 E3 78 */	mr r6, r28
/* 807CD824  38 E0 00 01 */	li r7, 1
/* 807CD828  3A FB 16 D0 */	addi r23, r27, 0x16d0
/* 807CD82C  7E FC BA 14 */	add r23, r28, r23
/* 807CD830  7E E8 BB 78 */	mr r8, r23
/* 807CD834  39 29 12 10 */	addi r9, r9, 0x1210
/* 807CD838  39 40 00 00 */	li r10, 0
/* 807CD83C  4B 8A 8A 0D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807CD840  7E E3 BB 78 */	mr r3, r23
/* 807CD844  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807CD848  C0 5E 01 98 */	lfs f2, 0x198(r30)
/* 807CD84C  4B 8A 87 0D */	bl SetWall__12dBgS_AcchCirFff
/* 807CD850  3A D6 00 01 */	addi r22, r22, 1
/* 807CD854  2C 16 00 02 */	cmpwi r22, 2
/* 807CD858  3B 7B 00 40 */	addi r27, r27, 0x40
/* 807CD85C  3B 5A 01 D8 */	addi r26, r26, 0x1d8
/* 807CD860  3B 39 00 0C */	addi r25, r25, 0xc
/* 807CD864  41 80 FF A4 */	blt lbl_807CD808
/* 807CD868  38 00 00 64 */	li r0, 0x64
/* 807CD86C  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 807CD870  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 807CD874  38 7C 1B 00 */	addi r3, r28, 0x1b00
/* 807CD878  38 80 00 FF */	li r4, 0xff
/* 807CD87C  38 A0 00 00 */	li r5, 0
/* 807CD880  7F 86 E3 78 */	mr r6, r28
/* 807CD884  4B 8B 5F DD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807CD888  38 7C 1B 78 */	addi r3, r28, 0x1b78
/* 807CD88C  38 9F 00 38 */	addi r4, r31, 0x38
/* 807CD890  4B 8B 71 A5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807CD894  3B 3C 1B 00 */	addi r25, r28, 0x1b00
/* 807CD898  93 3C 1B BC */	stw r25, 0x1bbc(r28)
/* 807CD89C  3A C0 00 00 */	li r22, 0
/* 807CD8A0  3B 60 00 00 */	li r27, 0
lbl_807CD8A4:
/* 807CD8A4  7E FC DA 14 */	add r23, r28, r27
/* 807CD8A8  38 77 1C B0 */	addi r3, r23, 0x1cb0
/* 807CD8AC  38 9F 00 78 */	addi r4, r31, 0x78
/* 807CD8B0  4B 8B 70 05 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 807CD8B4  93 37 1C F4 */	stw r25, 0x1cf4(r23)
/* 807CD8B8  3A D6 00 01 */	addi r22, r22, 1
/* 807CD8BC  2C 16 00 03 */	cmpwi r22, 3
/* 807CD8C0  3B 7B 01 3C */	addi r27, r27, 0x13c
/* 807CD8C4  41 80 FF E0 */	blt lbl_807CD8A4
/* 807CD8C8  3A C0 00 00 */	li r22, 0
/* 807CD8CC  3B 60 00 00 */	li r27, 0
/* 807CD8D0  3B 3C 1B 00 */	addi r25, r28, 0x1b00
lbl_807CD8D4:
/* 807CD8D4  7E FC DA 14 */	add r23, r28, r27
/* 807CD8D8  38 77 20 64 */	addi r3, r23, 0x2064
/* 807CD8DC  38 9F 00 BC */	addi r4, r31, 0xbc
/* 807CD8E0  4B 8B 71 55 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807CD8E4  93 37 20 A8 */	stw r25, 0x20a8(r23)
/* 807CD8E8  3A D6 00 01 */	addi r22, r22, 1
/* 807CD8EC  2C 16 00 04 */	cmpwi r22, 4
/* 807CD8F0  3B 7B 01 38 */	addi r27, r27, 0x138
/* 807CD8F4  41 80 FF E0 */	blt lbl_807CD8D4
/* 807CD8F8  38 7C 1B 3C */	addi r3, r28, 0x1b3c
/* 807CD8FC  38 80 00 FF */	li r4, 0xff
/* 807CD900  38 A0 00 00 */	li r5, 0
/* 807CD904  7F 86 E3 78 */	mr r6, r28
/* 807CD908  4B 8B 5F 59 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807CD90C  3A C0 00 00 */	li r22, 0
/* 807CD910  3B 60 00 00 */	li r27, 0
/* 807CD914  3B 3C 1B 3C */	addi r25, r28, 0x1b3c
lbl_807CD918:
/* 807CD918  7E FC DA 14 */	add r23, r28, r27
/* 807CD91C  38 77 25 44 */	addi r3, r23, 0x2544
/* 807CD920  38 9F 00 FC */	addi r4, r31, 0xfc
/* 807CD924  4B 8B 71 11 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807CD928  93 37 25 88 */	stw r25, 0x2588(r23)
/* 807CD92C  3A D6 00 01 */	addi r22, r22, 1
/* 807CD930  2C 16 00 BE */	cmpwi r22, 0xbe
/* 807CD934  3B 7B 01 38 */	addi r27, r27, 0x138
/* 807CD938  41 80 FF E0 */	blt lbl_807CD918
/* 807CD93C  3C 7C 00 01 */	addis r3, r28, 1
/* 807CD940  38 63 0C D4 */	addi r3, r3, 0xcd4
/* 807CD944  38 9F 01 3C */	addi r4, r31, 0x13c
/* 807CD948  4B 8B 70 ED */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807CD94C  38 1C 1B 3C */	addi r0, r28, 0x1b3c
/* 807CD950  3C 7C 00 01 */	addis r3, r28, 1
/* 807CD954  90 03 0D 18 */	stw r0, 0xd18(r3)
/* 807CD958  38 63 0E 0C */	addi r3, r3, 0xe0c
/* 807CD95C  38 9F 01 3C */	addi r4, r31, 0x13c
/* 807CD960  4B 8B 70 D5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807CD964  38 1C 1B 3C */	addi r0, r28, 0x1b3c
/* 807CD968  3C 7C 00 01 */	addis r3, r28, 1
/* 807CD96C  90 03 0E 50 */	stw r0, 0xe50(r3)
/* 807CD970  38 7C 12 54 */	addi r3, r28, 0x1254
/* 807CD974  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807CD978  38 BC 05 38 */	addi r5, r28, 0x538
/* 807CD97C  38 C0 00 03 */	li r6, 3
/* 807CD980  38 E0 00 01 */	li r7, 1
/* 807CD984  4B AF 37 11 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807CD988  38 7C 12 54 */	addi r3, r28, 0x1254
/* 807CD98C  3C 80 80 7D */	lis r4, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD990  38 84 EE FC */	addi r4, r4, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD994  38 84 00 05 */	addi r4, r4, 5
/* 807CD998  4B AF 41 F9 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 807CD99C  38 1C 12 54 */	addi r0, r28, 0x1254
/* 807CD9A0  3C 7C 00 01 */	addis r3, r28, 1
/* 807CD9A4  90 03 0F 4C */	stw r0, 0xf4c(r3)
/* 807CD9A8  38 00 00 01 */	li r0, 1
/* 807CD9AC  98 03 0F 62 */	stb r0, 0xf62(r3)
/* 807CD9B0  38 80 00 00 */	li r4, 0
/* 807CD9B4  98 9C 13 79 */	stb r4, 0x1379(r28)
/* 807CD9B8  98 9C 13 7A */	stb r4, 0x137a(r28)
/* 807CD9BC  98 9C 13 78 */	stb r4, 0x1378(r28)
/* 807CD9C0  38 00 00 3E */	li r0, 0x3e
/* 807CD9C4  98 1C 05 46 */	stb r0, 0x546(r28)
/* 807CD9C8  38 00 00 02 */	li r0, 2
/* 807CD9CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807CD9D0  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 807CD9D4  98 1F 12 C8 */	stb r0, 0x12c8(r31)
/* 807CD9D8  98 1F 12 C2 */	stb r0, 0x12c2(r31)
/* 807CD9DC  98 1F 12 C3 */	stb r0, 0x12c3(r31)
/* 807CD9E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CD9E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CD9E8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807CD9EC  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 807CD9F0  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 807CD9F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CD9F8  4C 41 13 82 */	cror 2, 1, 2
/* 807CD9FC  40 82 00 0C */	bne lbl_807CDA08
/* 807CDA00  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 807CDA04  98 83 0C 98 */	stb r4, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
lbl_807CDA08:
/* 807CDA08  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 807CDA0C  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 807CDA10  28 00 00 00 */	cmplwi r0, 0
/* 807CDA14  41 82 00 80 */	beq lbl_807CDA94
/* 807CDA18  38 60 00 09 */	li r3, 9
/* 807CDA1C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807CDA20  7C 04 07 74 */	extsb r4, r0
/* 807CDA24  4B 86 00 79 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 807CDA28  38 00 00 00 */	li r0, 0
/* 807CDA2C  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 807CDA30  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 807CDA34  38 00 00 03 */	li r0, 3
/* 807CDA38  98 1C 13 89 */	stb r0, 0x1389(r28)
/* 807CDA3C  38 00 00 02 */	li r0, 2
/* 807CDA40  90 1C 13 1C */	stw r0, 0x131c(r28)
/* 807CDA44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807CDA48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807CDA4C  80 63 00 00 */	lwz r3, 0(r3)
/* 807CDA50  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807CDA54  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000039@ha */
/* 807CDA58  38 84 00 39 */	addi r4, r4, 0x0039 /* 0x01000039@l */
/* 807CDA5C  4B AE 1A 41 */	bl subBgmStart__8Z2SeqMgrFUl
/* 807CDA60  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807CDA64  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807CDA68  80 63 00 00 */	lwz r3, 0(r3)
/* 807CDA6C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807CDA70  38 80 00 01 */	li r4, 1
/* 807CDA74  4B AE 43 81 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 807CDA78  38 00 00 00 */	li r0, 0
/* 807CDA7C  90 1C 13 74 */	stw r0, 0x1374(r28)
/* 807CDA80  38 00 00 02 */	li r0, 2
/* 807CDA84  98 1F 12 C8 */	stb r0, 0x12c8(r31)
/* 807CDA88  98 1F 12 C2 */	stb r0, 0x12c2(r31)
/* 807CDA8C  98 1F 12 C3 */	stb r0, 0x12c3(r31)
/* 807CDA90  48 00 00 24 */	b lbl_807CDAB4
lbl_807CDA94:
/* 807CDA94  38 00 00 00 */	li r0, 0
/* 807CDA98  90 1C 13 1C */	stw r0, 0x131c(r28)
/* 807CDA9C  38 00 00 05 */	li r0, 5
/* 807CDAA0  90 1C 13 74 */	stw r0, 0x1374(r28)
/* 807CDAA4  38 00 00 03 */	li r0, 3
/* 807CDAA8  98 1F 12 C8 */	stb r0, 0x12c8(r31)
/* 807CDAAC  98 1F 12 C2 */	stb r0, 0x12c2(r31)
/* 807CDAB0  98 1F 12 C3 */	stb r0, 0x12c3(r31)
lbl_807CDAB4:
/* 807CDAB4  7F 83 E3 78 */	mr r3, r28
/* 807CDAB8  4B FF F4 85 */	bl daE_VA_Execute__FP8daE_VA_c
lbl_807CDABC:
/* 807CDABC  7F A3 EB 78 */	mr r3, r29
lbl_807CDAC0:
/* 807CDAC0  39 61 00 40 */	addi r11, r1, 0x40
/* 807CDAC4  4B B9 47 49 */	bl _restgpr_22
/* 807CDAC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807CDACC  7C 08 03 A6 */	mtlr r0
/* 807CDAD0  38 21 00 40 */	addi r1, r1, 0x40
/* 807CDAD4  4E 80 00 20 */	blr 

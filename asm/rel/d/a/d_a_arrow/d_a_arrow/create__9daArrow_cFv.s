lbl_8049D440:
/* 8049D440  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049D444  7C 08 02 A6 */	mflr r0
/* 8049D448  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049D44C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049D450  4B EC 4D 89 */	bl _savegpr_28
/* 8049D454  7C 7D 1B 78 */	mr r29, r3
/* 8049D458  3C 80 80 4A */	lis r4, lit_3768@ha /* 0x8049DC84@ha */
/* 8049D45C  3B E4 DC 84 */	addi r31, r4, lit_3768@l /* 0x8049DC84@l */
/* 8049D460  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8049D464  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8049D468  40 82 01 48 */	bne lbl_8049D5B0
/* 8049D46C  7F A0 EB 79 */	or. r0, r29, r29
/* 8049D470  41 82 01 34 */	beq lbl_8049D5A4
/* 8049D474  7C 1E 03 78 */	mr r30, r0
/* 8049D478  4B B7 B6 ED */	bl __ct__10fopAc_ac_cFv
/* 8049D47C  38 7E 05 6C */	addi r3, r30, 0x56c
/* 8049D480  4B BD AD 59 */	bl __ct__16dBgS_ArrowLinChkFv
/* 8049D484  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 8049D488  4B BD AA D5 */	bl __ct__14dBgS_ObjLinChkFv
/* 8049D48C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8049D490  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8049D494  90 1E 06 64 */	stw r0, 0x664(r30)
/* 8049D498  38 7E 06 68 */	addi r3, r30, 0x668
/* 8049D49C  4B BE 62 C5 */	bl __ct__10dCcD_GSttsFv
/* 8049D4A0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8049D4A4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8049D4A8  90 7E 06 64 */	stw r3, 0x664(r30)
/* 8049D4AC  38 03 00 20 */	addi r0, r3, 0x20
/* 8049D4B0  90 1E 06 68 */	stw r0, 0x668(r30)
/* 8049D4B4  3B 9E 06 88 */	addi r28, r30, 0x688
/* 8049D4B8  7F 83 E3 78 */	mr r3, r28
/* 8049D4BC  4B BE 65 6D */	bl __ct__12dCcD_GObjInfFv
/* 8049D4C0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8049D4C4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8049D4C8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8049D4CC  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha /* 0x8049DF40@ha */
/* 8049D4D0  38 03 DF 40 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8049DF40@l */
/* 8049D4D4  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8049D4D8  38 7C 01 24 */	addi r3, r28, 0x124
/* 8049D4DC  4B DD 1A AD */	bl __ct__8cM3dGCpsFv
/* 8049D4E0  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 8049D4E4  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 8049D4E8  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8049D4EC  38 03 00 58 */	addi r0, r3, 0x58
/* 8049D4F0  90 1C 01 3C */	stw r0, 0x13c(r28)
/* 8049D4F4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 8049D4F8  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 8049D4FC  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8049D500  38 03 00 2C */	addi r0, r3, 0x2c
/* 8049D504  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8049D508  38 03 00 84 */	addi r0, r3, 0x84
/* 8049D50C  90 1C 01 3C */	stw r0, 0x13c(r28)
/* 8049D510  3B 9E 07 CC */	addi r28, r30, 0x7cc
/* 8049D514  7F 83 E3 78 */	mr r3, r28
/* 8049D518  4B BE 65 11 */	bl __ct__12dCcD_GObjInfFv
/* 8049D51C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8049D520  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8049D524  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8049D528  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha /* 0x8049DF40@ha */
/* 8049D52C  38 03 DF 40 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8049DF40@l */
/* 8049D530  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8049D534  3C 60 80 4A */	lis r3, __vt__8cM3dGSph@ha /* 0x8049DF34@ha */
/* 8049D538  38 03 DF 34 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8049DF34@l */
/* 8049D53C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8049D540  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8049D544  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8049D548  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8049D54C  38 03 00 58 */	addi r0, r3, 0x58
/* 8049D550  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8049D554  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8049D558  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8049D55C  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8049D560  38 03 00 2C */	addi r0, r3, 0x2c
/* 8049D564  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8049D568  38 03 00 84 */	addi r0, r3, 0x84
/* 8049D56C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8049D570  38 7E 09 04 */	addi r3, r30, 0x904
/* 8049D574  4B E2 15 C5 */	bl __ct__15Z2SoundObjArrowFv
/* 8049D578  38 7E 0A 08 */	addi r3, r30, 0xa08
/* 8049D57C  4B CC 17 81 */	bl clearData__16daPy_actorKeep_cFv
/* 8049D580  3C 60 80 4A */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x8049DF18@ha */
/* 8049D584  38 03 DF 18 */	addi r0, r3, __vt__18JPAEmitterCallBack@l /* 0x8049DF18@l */
/* 8049D588  90 1E 0A 10 */	stw r0, 0xa10(r30)
/* 8049D58C  3C 60 80 4A */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x8049DEF4@ha */
/* 8049D590  38 03 DE F4 */	addi r0, r3, __vt__18dPa_levelEcallBack@l /* 0x8049DEF4@l */
/* 8049D594  90 1E 0A 10 */	stw r0, 0xa10(r30)
/* 8049D598  3C 60 80 3B */	lis r3, __vt__22dPa_hermiteEcallBack_c@ha /* 0x803A83A0@ha */
/* 8049D59C  38 03 83 A0 */	addi r0, r3, __vt__22dPa_hermiteEcallBack_c@l /* 0x803A83A0@l */
/* 8049D5A0  90 1E 0A 10 */	stw r0, 0xa10(r30)
lbl_8049D5A4:
/* 8049D5A4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8049D5A8  60 00 00 08 */	ori r0, r0, 8
/* 8049D5AC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8049D5B0:
/* 8049D5B0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8049D5B4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8049D5B8  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 8049D5BC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8049D5C0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8049D5C4  90 1D 00 B0 */	stw r0, 0xb0(r29)
/* 8049D5C8  7F A3 EB 78 */	mr r3, r29
/* 8049D5CC  3C 80 80 4A */	lis r4, daArrow_createHeap__FP10fopAc_ac_c@ha /* 0x80499D6C@ha */
/* 8049D5D0  38 84 9D 6C */	addi r4, r4, daArrow_createHeap__FP10fopAc_ac_c@l /* 0x80499D6C@l */
/* 8049D5D4  88 1D 09 3C */	lbz r0, 0x93c(r29)
/* 8049D5D8  28 00 00 01 */	cmplwi r0, 1
/* 8049D5DC  38 A0 08 10 */	li r5, 0x810
/* 8049D5E0  40 82 00 08 */	bne lbl_8049D5E8
/* 8049D5E4  38 A0 0E A0 */	li r5, 0xea0
lbl_8049D5E8:
/* 8049D5E8  4B B7 CE C9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8049D5EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049D5F0  40 82 00 0C */	bne lbl_8049D5FC
/* 8049D5F4  38 60 00 05 */	li r3, 5
/* 8049D5F8  48 00 01 F8 */	b lbl_8049D7F0
lbl_8049D5FC:
/* 8049D5FC  88 1D 09 3C */	lbz r0, 0x93c(r29)
/* 8049D600  28 00 00 02 */	cmplwi r0, 2
/* 8049D604  40 82 00 38 */	bne lbl_8049D63C
/* 8049D608  3C 60 80 4A */	lis r3, daAlink_searchHorseZelda__FP10fopAc_ac_cPv@ha /* 0x8049D42C@ha */
/* 8049D60C  38 63 D4 2C */	addi r3, r3, daAlink_searchHorseZelda__FP10fopAc_ac_cPv@l /* 0x8049D42C@l */
/* 8049D610  38 80 00 00 */	li r4, 0
/* 8049D614  4B B7 C1 E5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8049D618  7C 64 1B 78 */	mr r4, r3
/* 8049D61C  38 7D 0A 08 */	addi r3, r29, 0xa08
/* 8049D620  4B CC 16 99 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8049D624  38 00 00 06 */	li r0, 6
/* 8049D628  98 1D 09 46 */	stb r0, 0x946(r29)
/* 8049D62C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000896E@ha */
/* 8049D630  38 03 89 6E */	addi r0, r3, 0x896E /* 0x0000896E@l */
/* 8049D634  B0 1D 09 4C */	sth r0, 0x94c(r29)
/* 8049D638  48 00 00 44 */	b lbl_8049D67C
lbl_8049D63C:
/* 8049D63C  28 00 00 00 */	cmplwi r0, 0
/* 8049D640  40 82 00 18 */	bne lbl_8049D658
/* 8049D644  38 00 00 01 */	li r0, 1
/* 8049D648  98 1D 09 46 */	stb r0, 0x946(r29)
/* 8049D64C  38 00 03 B8 */	li r0, 0x3b8
/* 8049D650  B0 1D 09 4C */	sth r0, 0x94c(r29)
/* 8049D654  48 00 00 28 */	b lbl_8049D67C
lbl_8049D658:
/* 8049D658  28 00 00 04 */	cmplwi r0, 4
/* 8049D65C  40 82 00 18 */	bne lbl_8049D674
/* 8049D660  38 00 00 01 */	li r0, 1
/* 8049D664  98 1D 09 46 */	stb r0, 0x946(r29)
/* 8049D668  38 00 0A 55 */	li r0, 0xa55
/* 8049D66C  B0 1D 09 4C */	sth r0, 0x94c(r29)
/* 8049D670  48 00 00 0C */	b lbl_8049D67C
lbl_8049D674:
/* 8049D674  38 00 00 00 */	li r0, 0
/* 8049D678  98 1D 09 46 */	stb r0, 0x946(r29)
lbl_8049D67C:
/* 8049D67C  38 00 00 01 */	li r0, 1
/* 8049D680  98 1D 09 40 */	stb r0, 0x940(r29)
/* 8049D684  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8049D688  38 80 00 0A */	li r4, 0xa
/* 8049D68C  38 A0 00 FF */	li r5, 0xff
/* 8049D690  7F A6 EB 78 */	mr r6, r29
/* 8049D694  4B BE 61 CD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8049D698  38 7D 06 88 */	addi r3, r29, 0x688
/* 8049D69C  38 9F 00 0C */	addi r4, r31, 0xc
/* 8049D6A0  4B BE 71 31 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 8049D6A4  38 1D 06 4C */	addi r0, r29, 0x64c
/* 8049D6A8  90 1D 06 CC */	stw r0, 0x6cc(r29)
/* 8049D6AC  3C 60 80 4A */	lis r3, daArrow_atHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80499F9C@ha */
/* 8049D6B0  38 03 9F 9C */	addi r0, r3, daArrow_atHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80499F9C@l */
/* 8049D6B4  90 1D 06 E8 */	stw r0, 0x6e8(r29)
/* 8049D6B8  38 7D 07 CC */	addi r3, r29, 0x7cc
/* 8049D6BC  38 9F 00 58 */	addi r4, r31, 0x58
/* 8049D6C0  4B BE 73 75 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8049D6C4  38 1D 06 4C */	addi r0, r29, 0x64c
/* 8049D6C8  90 1D 08 10 */	stw r0, 0x810(r29)
/* 8049D6CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049D6D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049D6D4  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 8049D6D8  88 1D 09 3C */	lbz r0, 0x93c(r29)
/* 8049D6DC  28 00 00 04 */	cmplwi r0, 4
/* 8049D6E0  40 82 00 54 */	bne lbl_8049D734
/* 8049D6E4  7F A3 EB 78 */	mr r3, r29
/* 8049D6E8  4B FF D7 7D */	bl setNormalMatrix__9daArrow_cFv
/* 8049D6EC  7F C3 F3 78 */	mr r3, r30
/* 8049D6F0  38 9D 09 A4 */	addi r4, r29, 0x9a4
/* 8049D6F4  38 BD 09 9C */	addi r5, r29, 0x99c
/* 8049D6F8  38 C0 00 00 */	li r6, 0
/* 8049D6FC  4B C4 0F 51 */	bl getArrowFlyData__9daAlink_cCFPfPfi
/* 8049D700  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049D704  D0 1D 09 A0 */	stfs f0, 0x9a0(r29)
/* 8049D708  7F A3 EB 78 */	mr r3, r29
/* 8049D70C  4B FF D2 C1 */	bl arrowShooting__9daArrow_cFv
/* 8049D710  3C 60 80 4A */	lis r3, lit_5714@ha /* 0x8049DE74@ha */
/* 8049D714  38 83 DE 74 */	addi r4, r3, lit_5714@l /* 0x8049DE74@l */
/* 8049D718  80 64 00 00 */	lwz r3, 0(r4)
/* 8049D71C  80 04 00 04 */	lwz r0, 4(r4)
/* 8049D720  90 7D 0A 28 */	stw r3, 0xa28(r29)
/* 8049D724  90 1D 0A 2C */	stw r0, 0xa2c(r29)
/* 8049D728  80 04 00 08 */	lwz r0, 8(r4)
/* 8049D72C  90 1D 0A 30 */	stw r0, 0xa30(r29)
/* 8049D730  48 00 00 2C */	b lbl_8049D75C
lbl_8049D734:
/* 8049D734  3C 60 80 4A */	lis r3, lit_5716@ha /* 0x8049DE80@ha */
/* 8049D738  38 83 DE 80 */	addi r4, r3, lit_5716@l /* 0x8049DE80@l */
/* 8049D73C  80 64 00 00 */	lwz r3, 0(r4)
/* 8049D740  80 04 00 04 */	lwz r0, 4(r4)
/* 8049D744  90 7D 0A 28 */	stw r3, 0xa28(r29)
/* 8049D748  90 1D 0A 2C */	stw r0, 0xa2c(r29)
/* 8049D74C  80 04 00 08 */	lwz r0, 8(r4)
/* 8049D750  90 1D 0A 30 */	stw r0, 0xa30(r29)
/* 8049D754  7F A3 EB 78 */	mr r3, r29
/* 8049D758  4B FF D8 95 */	bl setKeepMatrix__9daArrow_cFv
lbl_8049D75C:
/* 8049D75C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8049D760  38 03 00 24 */	addi r0, r3, 0x24
/* 8049D764  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8049D768  7F A3 EB 78 */	mr r3, r29
/* 8049D76C  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 8049D770  FC 40 08 90 */	fmr f2, f1
/* 8049D774  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 8049D778  4B B7 CD B1 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8049D77C  7F A3 EB 78 */	mr r3, r29
/* 8049D780  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 8049D784  FC 40 08 90 */	fmr f2, f1
/* 8049D788  C0 7F 01 7C */	lfs f3, 0x17c(r31)
/* 8049D78C  4B B7 CD AD */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8049D790  7F A3 EB 78 */	mr r3, r29
/* 8049D794  4B FF D7 85 */	bl setSmokePos__9daArrow_cFv
/* 8049D798  38 00 FF FF */	li r0, -1
/* 8049D79C  B0 1D 09 4E */	sth r0, 0x94e(r29)
/* 8049D7A0  38 00 01 2C */	li r0, 0x12c
/* 8049D7A4  B0 1D 09 56 */	sth r0, 0x956(r29)
/* 8049D7A8  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8049D7AC  4B DC A1 A9 */	bl cM_rndF__Ff
/* 8049D7B0  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 8049D7B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049D7B8  FC 00 00 1E */	fctiwz f0, f0
/* 8049D7BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8049D7C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8049D7C4  B0 1D 09 52 */	sth r0, 0x952(r29)
/* 8049D7C8  7F C3 F3 78 */	mr r3, r30
/* 8049D7CC  4B C4 5F 95 */	bl getBombExplodeTime__9daAlink_cCFv
/* 8049D7D0  B0 7D 09 50 */	sth r3, 0x950(r29)
/* 8049D7D4  80 1D 06 48 */	lwz r0, 0x648(r29)
/* 8049D7D8  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 8049D7DC  90 1D 06 48 */	stw r0, 0x648(r29)
/* 8049D7E0  80 1D 06 48 */	lwz r0, 0x648(r29)
/* 8049D7E4  60 00 00 02 */	ori r0, r0, 2
/* 8049D7E8  90 1D 06 48 */	stw r0, 0x648(r29)
/* 8049D7EC  38 60 00 04 */	li r3, 4
lbl_8049D7F0:
/* 8049D7F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8049D7F4  4B EC 4A 31 */	bl _restgpr_28
/* 8049D7F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049D7FC  7C 08 03 A6 */	mtlr r0
/* 8049D800  38 21 00 20 */	addi r1, r1, 0x20
/* 8049D804  4E 80 00 20 */	blr 

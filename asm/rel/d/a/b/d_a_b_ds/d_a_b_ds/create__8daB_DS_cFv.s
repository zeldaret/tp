lbl_805DB974:
/* 805DB974  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805DB978  7C 08 02 A6 */	mflr r0
/* 805DB97C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805DB980  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805DB984  4B D8 68 44 */	b _savegpr_24
/* 805DB988  7C 7F 1B 78 */	mr r31, r3
/* 805DB98C  3C 80 80 5E */	lis r4, cNullVec__6Z2Calc@ha
/* 805DB990  3B 84 D2 48 */	addi r28, r4, cNullVec__6Z2Calc@l
/* 805DB994  3C 80 80 5E */	lis r4, lit_3932@ha
/* 805DB998  3B C4 CA 54 */	addi r30, r4, lit_3932@l
/* 805DB99C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805DB9A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805DB9A4  40 82 00 1C */	bne lbl_805DB9C0
/* 805DB9A8  28 1F 00 00 */	cmplwi r31, 0
/* 805DB9AC  41 82 00 08 */	beq lbl_805DB9B4
/* 805DB9B0  48 00 08 39 */	bl __ct__8daB_DS_cFv
lbl_805DB9B4:
/* 805DB9B4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805DB9B8  60 00 00 08 */	ori r0, r0, 8
/* 805DB9BC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805DB9C0:
/* 805DB9C0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805DB9C4  3C 80 80 5E */	lis r4, stringBase0@ha
/* 805DB9C8  38 84 D2 2C */	addi r4, r4, stringBase0@l
/* 805DB9CC  4B A5 14 F0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805DB9D0  7C 7D 1B 78 */	mr r29, r3
/* 805DB9D4  2C 1D 00 04 */	cmpwi r29, 4
/* 805DB9D8  40 82 07 F4 */	bne lbl_805DC1CC
/* 805DB9DC  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805DB9E0  28 00 00 00 */	cmplwi r0, 0
/* 805DB9E4  40 82 00 CC */	bne lbl_805DBAB0
/* 805DB9E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DB9EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DB9F0  3B 43 09 58 */	addi r26, r3, 0x958
/* 805DB9F4  7F 43 D3 78 */	mr r3, r26
/* 805DB9F8  38 80 00 03 */	li r4, 3
/* 805DB9FC  4B A5 8F 38 */	b isDungeonItem__12dSv_memBit_cCFi
/* 805DBA00  2C 03 00 00 */	cmpwi r3, 0
/* 805DBA04  41 82 00 AC */	beq lbl_805DBAB0
/* 805DBA08  38 60 00 08 */	li r3, 8
/* 805DBA0C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805DBA10  7C 04 07 74 */	extsb r4, r0
/* 805DBA14  4B A5 1F 38 */	b dComIfGs_onZoneSwitch__Fii
/* 805DBA18  38 00 00 04 */	li r0, 4
/* 805DBA1C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805DBA20  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805DBA24  98 03 12 C4 */	stb r0, 0x12c4(r3)
/* 805DBA28  98 03 12 C5 */	stb r0, 0x12c5(r3)
/* 805DBA2C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805DBA30  D0 03 11 E0 */	stfs f0, 0x11e0(r3)
/* 805DBA34  7F 43 D3 78 */	mr r3, r26
/* 805DBA38  38 80 00 04 */	li r4, 4
/* 805DBA3C  4B A5 8E F8 */	b isDungeonItem__12dSv_memBit_cCFi
/* 805DBA40  2C 03 00 00 */	cmpwi r3, 0
/* 805DBA44  40 82 00 64 */	bne lbl_805DBAA8
/* 805DBA48  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805DBA4C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805DBA50  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805DBA54  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805DBA58  38 00 00 00 */	li r0, 0
/* 805DBA5C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 805DBA60  B0 01 00 12 */	sth r0, 0x12(r1)
/* 805DBA64  B0 01 00 10 */	sth r0, 0x10(r1)
/* 805DBA68  C0 1E 07 B4 */	lfs f0, 0x7b4(r30)
/* 805DBA6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805DBA70  C0 1E 07 BC */	lfs f0, 0x7bc(r30)
/* 805DBA74  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805DBA78  C0 1E 07 C0 */	lfs f0, 0x7c0(r30)
/* 805DBA7C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805DBA80  38 61 00 24 */	addi r3, r1, 0x24
/* 805DBA84  38 80 00 22 */	li r4, 0x22
/* 805DBA88  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805DBA8C  7C 05 07 74 */	extsb r5, r0
/* 805DBA90  38 C1 00 10 */	addi r6, r1, 0x10
/* 805DBA94  38 E1 00 30 */	addi r7, r1, 0x30
/* 805DBA98  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805DBA9C  FC 40 08 90 */	fmr f2, f1
/* 805DBAA0  39 00 FF FF */	li r8, -1
/* 805DBAA4  4B A4 06 30 */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
lbl_805DBAA8:
/* 805DBAA8  38 60 00 05 */	li r3, 5
/* 805DBAAC  48 00 07 24 */	b lbl_805DC1D0
lbl_805DBAB0:
/* 805DBAB0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805DBAB4  98 1F 08 56 */	stb r0, 0x856(r31)
/* 805DBAB8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805DBABC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805DBAC0  98 1F 08 57 */	stb r0, 0x857(r31)
/* 805DBAC4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805DBAC8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 805DBACC  98 1F 08 58 */	stb r0, 0x858(r31)
/* 805DBAD0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805DBAD4  54 00 46 3E */	srwi r0, r0, 0x18
/* 805DBAD8  98 1F 08 59 */	stb r0, 0x859(r31)
/* 805DBADC  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805DBAE0  28 00 00 FF */	cmplwi r0, 0xff
/* 805DBAE4  40 82 00 0C */	bne lbl_805DBAF0
/* 805DBAE8  38 00 00 00 */	li r0, 0
/* 805DBAEC  98 1F 08 56 */	stb r0, 0x856(r31)
lbl_805DBAF0:
/* 805DBAF0  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805DBAF4  28 00 00 01 */	cmplwi r0, 1
/* 805DBAF8  41 82 00 14 */	beq lbl_805DBB0C
/* 805DBAFC  28 00 00 03 */	cmplwi r0, 3
/* 805DBB00  41 82 00 0C */	beq lbl_805DBB0C
/* 805DBB04  28 00 00 04 */	cmplwi r0, 4
/* 805DBB08  40 82 00 E4 */	bne lbl_805DBBEC
lbl_805DBB0C:
/* 805DBB0C  38 60 00 00 */	li r3, 0
/* 805DBB10  98 7F 05 46 */	stb r3, 0x546(r31)
/* 805DBB14  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 805DBB18  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805DBB1C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805DBB20  98 7F 04 96 */	stb r3, 0x496(r31)
/* 805DBB24  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805DBB28  54 00 00 3E */	slwi r0, r0, 0
/* 805DBB2C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 805DBB30  38 7F 0A 88 */	addi r3, r31, 0xa88
/* 805DBB34  38 80 00 FF */	li r4, 0xff
/* 805DBB38  38 A0 00 00 */	li r5, 0
/* 805DBB3C  7F E6 FB 78 */	mr r6, r31
/* 805DBB40  4B AA 7D 20 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805DBB44  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805DBB48  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805DBB4C  38 7F 12 14 */	addi r3, r31, 0x1214
/* 805DBB50  38 9C 01 80 */	addi r4, r28, 0x180
/* 805DBB54  4B AA 8E E0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805DBB58  38 1F 0A 88 */	addi r0, r31, 0xa88
/* 805DBB5C  90 1F 12 58 */	stw r0, 0x1258(r31)
/* 805DBB60  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805DBB64  54 00 00 3E */	slwi r0, r0, 0
/* 805DBB68  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 805DBB6C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 805DBB70  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805DBB74  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805DBB78  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805DBB7C  28 00 00 03 */	cmplwi r0, 3
/* 805DBB80  41 82 00 0C */	beq lbl_805DBB8C
/* 805DBB84  28 00 00 04 */	cmplwi r0, 4
/* 805DBB88  40 82 00 50 */	bne lbl_805DBBD8
lbl_805DBB8C:
/* 805DBB8C  38 00 00 00 */	li r0, 0
/* 805DBB90  90 01 00 08 */	stw r0, 8(r1)
/* 805DBB94  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 805DBB98  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805DBB9C  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 805DBBA0  7F E6 FB 78 */	mr r6, r31
/* 805DBBA4  38 E0 00 01 */	li r7, 1
/* 805DBBA8  39 1F 08 70 */	addi r8, r31, 0x870
/* 805DBBAC  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 805DBBB0  39 40 00 00 */	li r10, 0
/* 805DBBB4  4B A9 A6 94 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805DBBB8  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 805DBBBC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805DBBC0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805DBBC4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805DBBC8  4B A9 AE E4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 805DBBCC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805DBBD0  60 00 40 00 */	ori r0, r0, 0x4000
/* 805DBBD4  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_805DBBD8:
/* 805DBBD8  7F E3 FB 78 */	mr r3, r31
/* 805DBBDC  38 80 00 08 */	li r4, 8
/* 805DBBE0  38 A0 00 00 */	li r5, 0
/* 805DBBE4  4B FE FF 91 */	bl setActionMode__8daB_DS_cFii
/* 805DBBE8  48 00 05 DC */	b lbl_805DC1C4
lbl_805DBBEC:
/* 805DBBEC  28 00 00 01 */	cmplwi r0, 1
/* 805DBBF0  41 82 00 3C */	beq lbl_805DBC2C
/* 805DBBF4  28 00 00 03 */	cmplwi r0, 3
/* 805DBBF8  41 82 00 34 */	beq lbl_805DBC2C
/* 805DBBFC  28 00 00 04 */	cmplwi r0, 4
/* 805DBC00  41 82 00 2C */	beq lbl_805DBC2C
/* 805DBC04  7F E3 FB 78 */	mr r3, r31
/* 805DBC08  3C 80 80 5E */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 805DBC0C  38 84 B9 54 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 805DBC10  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FAC0@ha */
/* 805DBC14  38 A5 FA C0 */	addi r5, r5, 0xFAC0 /* 0x0000FAC0@l */
/* 805DBC18  4B A3 E8 98 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805DBC1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805DBC20  40 82 00 0C */	bne lbl_805DBC2C
/* 805DBC24  38 60 00 05 */	li r3, 5
/* 805DBC28  48 00 05 A8 */	b lbl_805DC1D0
lbl_805DBC2C:
/* 805DBC2C  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805DBC30  38 83 DA BC */	addi r4, r3, l_HIO@l
/* 805DBC34  A8 04 00 4A */	lha r0, 0x4a(r4)
/* 805DBC38  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805DBC3C  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 805DBC40  3C 60 80 5E */	lis r3, struct_805DDAAC+0x1@ha
/* 805DBC44  8C 03 DA AD */	lbzu r0, struct_805DDAAC+0x1@l(r3)
/* 805DBC48  28 00 00 00 */	cmplwi r0, 0
/* 805DBC4C  40 82 00 18 */	bne lbl_805DBC64
/* 805DBC50  38 00 00 01 */	li r0, 1
/* 805DBC54  98 03 00 00 */	stb r0, 0(r3)
/* 805DBC58  98 1F 2E C8 */	stb r0, 0x2ec8(r31)
/* 805DBC5C  38 00 FF FF */	li r0, -1
/* 805DBC60  98 04 00 04 */	stb r0, 4(r4)
lbl_805DBC64:
/* 805DBC64  38 60 00 00 */	li r3, 0
/* 805DBC68  B0 7F 04 E8 */	sth r3, 0x4e8(r31)
/* 805DBC6C  B0 7F 04 E4 */	sth r3, 0x4e4(r31)
/* 805DBC70  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805DBC74  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805DBC78  98 7F 05 46 */	stb r3, 0x546(r31)
/* 805DBC7C  38 00 00 04 */	li r0, 4
/* 805DBC80  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805DBC84  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805DBC88  80 63 00 04 */	lwz r3, 4(r3)
/* 805DBC8C  38 03 00 24 */	addi r0, r3, 0x24
/* 805DBC90  90 1F 05 04 */	stw r0, 0x504(r31)
/* 805DBC94  7F E3 FB 78 */	mr r3, r31
/* 805DBC98  C0 3E 07 C4 */	lfs f1, 0x7c4(r30)
/* 805DBC9C  FC 40 08 90 */	fmr f2, f1
/* 805DBCA0  FC 60 08 90 */	fmr f3, f1
/* 805DBCA4  4B A3 E8 84 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 805DBCA8  7F E3 FB 78 */	mr r3, r31
/* 805DBCAC  C0 3E 07 C8 */	lfs f1, 0x7c8(r30)
/* 805DBCB0  FC 40 08 90 */	fmr f2, f1
/* 805DBCB4  FC 60 08 90 */	fmr f3, f1
/* 805DBCB8  4B A3 E8 80 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 805DBCBC  38 00 00 00 */	li r0, 0
/* 805DBCC0  90 01 00 08 */	stw r0, 8(r1)
/* 805DBCC4  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 805DBCC8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805DBCCC  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 805DBCD0  7F E6 FB 78 */	mr r6, r31
/* 805DBCD4  38 E0 00 01 */	li r7, 1
/* 805DBCD8  39 1F 08 70 */	addi r8, r31, 0x870
/* 805DBCDC  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 805DBCE0  39 40 00 00 */	li r10, 0
/* 805DBCE4  4B A9 A5 64 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805DBCE8  38 7F 0A 88 */	addi r3, r31, 0xa88
/* 805DBCEC  38 80 00 FF */	li r4, 0xff
/* 805DBCF0  38 A0 00 00 */	li r5, 0
/* 805DBCF4  7F E6 FB 78 */	mr r6, r31
/* 805DBCF8  4B AA 7B 68 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805DBCFC  38 7F 0A C4 */	addi r3, r31, 0xac4
/* 805DBD00  38 9C 00 38 */	addi r4, r28, 0x38
/* 805DBD04  4B AA 8D 30 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805DBD08  38 1F 0A 88 */	addi r0, r31, 0xa88
/* 805DBD0C  90 1F 0B 08 */	stw r0, 0xb08(r31)
/* 805DBD10  38 61 00 3C */	addi r3, r1, 0x3c
/* 805DBD14  4B A9 B8 68 */	b __ct__11dBgS_GndChkFv
/* 805DBD18  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805DBD1C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805DBD20  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805DBD24  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805DBD28  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805DBD2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805DBD30  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 805DBD34  EC 01 00 2A */	fadds f0, f1, f0
/* 805DBD38  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805DBD3C  38 61 00 3C */	addi r3, r1, 0x3c
/* 805DBD40  38 81 00 18 */	addi r4, r1, 0x18
/* 805DBD44  4B C8 BF E4 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805DBD48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DBD4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DBD50  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805DBD54  38 81 00 3C */	addi r4, r1, 0x3c
/* 805DBD58  4B A9 87 48 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805DBD5C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805DBD60  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 805DBD64  FC 20 08 18 */	frsp f1, f1
/* 805DBD68  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805DBD6C  41 82 00 08 */	beq lbl_805DBD74
/* 805DBD70  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
lbl_805DBD74:
/* 805DBD74  38 61 00 3C */	addi r3, r1, 0x3c
/* 805DBD78  38 80 FF FF */	li r4, -1
/* 805DBD7C  4B A9 B8 74 */	b __dt__11dBgS_GndChkFv
/* 805DBD80  3B 00 00 00 */	li r24, 0
/* 805DBD84  3B 60 00 00 */	li r27, 0
/* 805DBD88  3B 5F 0A 88 */	addi r26, r31, 0xa88
lbl_805DBD8C:
/* 805DBD8C  7F 3F DA 14 */	add r25, r31, r27
/* 805DBD90  38 79 0B FC */	addi r3, r25, 0xbfc
/* 805DBD94  38 9C 00 78 */	addi r4, r28, 0x78
/* 805DBD98  4B AA 8C 9C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805DBD9C  93 59 0C 40 */	stw r26, 0xc40(r25)
/* 805DBDA0  3B 18 00 01 */	addi r24, r24, 1
/* 805DBDA4  2C 18 00 05 */	cmpwi r24, 5
/* 805DBDA8  3B 7B 01 38 */	addi r27, r27, 0x138
/* 805DBDAC  41 80 FF E0 */	blt lbl_805DBD8C
/* 805DBDB0  3B 00 00 00 */	li r24, 0
/* 805DBDB4  3B 60 00 00 */	li r27, 0
/* 805DBDB8  3B 5F 0A 88 */	addi r26, r31, 0xa88
lbl_805DBDBC:
/* 805DBDBC  7F 3F DA 14 */	add r25, r31, r27
/* 805DBDC0  38 79 13 4C */	addi r3, r25, 0x134c
/* 805DBDC4  38 9C 00 78 */	addi r4, r28, 0x78
/* 805DBDC8  4B AA 8C 6C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805DBDCC  93 59 13 90 */	stw r26, 0x1390(r25)
/* 805DBDD0  3B 18 00 01 */	addi r24, r24, 1
/* 805DBDD4  2C 18 00 12 */	cmpwi r24, 0x12
/* 805DBDD8  3B 7B 01 38 */	addi r27, r27, 0x138
/* 805DBDDC  41 80 FF E0 */	blt lbl_805DBDBC
/* 805DBDE0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 805DBDE4  D0 1F 08 10 */	stfs f0, 0x810(r31)
/* 805DBDE8  38 7F 29 3C */	addi r3, r31, 0x293c
/* 805DBDEC  38 9C 00 F8 */	addi r4, r28, 0xf8
/* 805DBDF0  4B AA 8A C4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 805DBDF4  38 1F 0A 88 */	addi r0, r31, 0xa88
/* 805DBDF8  90 1F 29 80 */	stw r0, 0x2980(r31)
/* 805DBDFC  38 7F 2A 78 */	addi r3, r31, 0x2a78
/* 805DBE00  38 9C 01 3C */	addi r4, r28, 0x13c
/* 805DBE04  4B AA 8A B0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 805DBE08  38 1F 0A 88 */	addi r0, r31, 0xa88
/* 805DBE0C  90 1F 2A BC */	stw r0, 0x2abc(r31)
/* 805DBE10  38 7F 2B B4 */	addi r3, r31, 0x2bb4
/* 805DBE14  38 9C 01 3C */	addi r4, r28, 0x13c
/* 805DBE18  4B AA 8A 9C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 805DBE1C  38 1F 0A 88 */	addi r0, r31, 0xa88
/* 805DBE20  90 1F 2B F8 */	stw r0, 0x2bf8(r31)
/* 805DBE24  80 1F 2A 78 */	lwz r0, 0x2a78(r31)
/* 805DBE28  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805DBE2C  90 1F 2A 78 */	stw r0, 0x2a78(r31)
/* 805DBE30  80 1F 2B B4 */	lwz r0, 0x2bb4(r31)
/* 805DBE34  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805DBE38  90 1F 2B B4 */	stw r0, 0x2bb4(r31)
/* 805DBE3C  80 1F 2B 14 */	lwz r0, 0x2b14(r31)
/* 805DBE40  60 00 00 01 */	ori r0, r0, 1
/* 805DBE44  90 1F 2B 14 */	stw r0, 0x2b14(r31)
/* 805DBE48  80 1F 2C 50 */	lwz r0, 0x2c50(r31)
/* 805DBE4C  60 00 00 01 */	ori r0, r0, 1
/* 805DBE50  90 1F 2C 50 */	stw r0, 0x2c50(r31)
/* 805DBE54  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805DBE58  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805DBE5C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805DBE60  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805DBE64  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805DBE68  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805DBE6C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805DBE70  38 9F 06 C4 */	addi r4, r31, 0x6c4
/* 805DBE74  38 BF 05 38 */	addi r5, r31, 0x538
/* 805DBE78  38 C0 00 03 */	li r6, 3
/* 805DBE7C  38 E0 00 01 */	li r7, 1
/* 805DBE80  4B CE 52 14 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 805DBE84  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 805DBE88  90 1F 2C F8 */	stw r0, 0x2cf8(r31)
/* 805DBE8C  38 00 00 0B */	li r0, 0xb
/* 805DBE90  98 1F 2D 0E */	stb r0, 0x2d0e(r31)
/* 805DBE94  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805DBE98  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 805DBE9C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805DBEA0  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 805DBEA4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805DBEA8  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 805DBEAC  38 60 00 00 */	li r3, 0
/* 805DBEB0  38 00 00 02 */	li r0, 2
/* 805DBEB4  7C 09 03 A6 */	mtctr r0
lbl_805DBEB8:
/* 805DBEB8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805DBEBC  7C 9F 1A 14 */	add r4, r31, r3
/* 805DBEC0  D0 04 07 60 */	stfs f0, 0x760(r4)
/* 805DBEC4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805DBEC8  D0 04 07 64 */	stfs f0, 0x764(r4)
/* 805DBECC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805DBED0  D0 04 07 68 */	stfs f0, 0x768(r4)
/* 805DBED4  38 63 00 0C */	addi r3, r3, 0xc
/* 805DBED8  42 00 FF E0 */	bdnz lbl_805DBEB8
/* 805DBEDC  38 60 00 00 */	li r3, 0
/* 805DBEE0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805DBEE4  38 00 00 03 */	li r0, 3
/* 805DBEE8  7C 09 03 A6 */	mtctr r0
lbl_805DBEEC:
/* 805DBEEC  38 03 07 DC */	addi r0, r3, 0x7dc
/* 805DBEF0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 805DBEF4  38 63 00 04 */	addi r3, r3, 4
/* 805DBEF8  42 00 FF F4 */	bdnz lbl_805DBEEC
/* 805DBEFC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805DBF00  D0 1F 07 E8 */	stfs f0, 0x7e8(r31)
/* 805DBF04  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805DBF08  D0 3F 07 EC */	stfs f1, 0x7ec(r31)
/* 805DBF0C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805DBF10  38 00 01 7B */	li r0, 0x17b
/* 805DBF14  B0 03 00 12 */	sth r0, 0x12(r3)
/* 805DBF18  C0 1E 07 CC */	lfs f0, 0x7cc(r30)
/* 805DBF1C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805DBF20  D0 3F 06 AC */	stfs f1, 0x6ac(r31)
/* 805DBF24  D0 3F 06 B0 */	stfs f1, 0x6b0(r31)
/* 805DBF28  D0 3F 06 B4 */	stfs f1, 0x6b4(r31)
/* 805DBF2C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805DBF30  D0 1F 06 B8 */	stfs f0, 0x6b8(r31)
/* 805DBF34  D0 1F 06 BC */	stfs f0, 0x6bc(r31)
/* 805DBF38  D0 1F 06 C0 */	stfs f0, 0x6c0(r31)
/* 805DBF3C  38 60 00 08 */	li r3, 8
/* 805DBF40  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805DBF44  7C 04 07 74 */	extsb r4, r0
/* 805DBF48  4B A5 1A 04 */	b dComIfGs_onZoneSwitch__Fii
/* 805DBF4C  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 805DBF50  60 00 02 00 */	ori r0, r0, 0x200
/* 805DBF54  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 805DBF58  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805DBF5C  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805DBF60  A8 03 00 3A */	lha r0, 0x3a(r3)
/* 805DBF64  90 1F 06 A0 */	stw r0, 0x6a0(r31)
/* 805DBF68  A8 03 00 3A */	lha r0, 0x3a(r3)
/* 805DBF6C  90 1F 06 A4 */	stw r0, 0x6a4(r31)
/* 805DBF70  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805DBF74  28 00 00 00 */	cmplwi r0, 0
/* 805DBF78  40 82 01 D0 */	bne lbl_805DC148
/* 805DBF7C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 805DBF80  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805DBF84  88 9F 08 57 */	lbz r4, 0x857(r31)
/* 805DBF88  28 04 00 FF */	cmplwi r4, 0xff
/* 805DBF8C  41 82 00 18 */	beq lbl_805DBFA4
/* 805DBF90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DBF94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DBF98  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805DBF9C  7C 05 07 74 */	extsb r5, r0
/* 805DBFA0  4B A5 92 60 */	b onSwitch__10dSv_info_cFii
lbl_805DBFA4:
/* 805DBFA4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805DBFA8  60 00 40 00 */	ori r0, r0, 0x4000
/* 805DBFAC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 805DBFB0  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 805DBFB4  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)
/* 805DBFB8  28 00 00 00 */	cmplwi r0, 0
/* 805DBFBC  40 82 00 F0 */	bne lbl_805DC0AC
/* 805DBFC0  38 60 00 05 */	li r3, 5
/* 805DBFC4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805DBFC8  7C 04 07 74 */	extsb r4, r0
/* 805DBFCC  4B A5 1A 64 */	b dComIfGs_isZoneSwitch__Fii
/* 805DBFD0  2C 03 00 00 */	cmpwi r3, 0
/* 805DBFD4  40 82 00 D8 */	bne lbl_805DC0AC
/* 805DBFD8  38 00 00 00 */	li r0, 0
/* 805DBFDC  98 1F 08 5C */	stb r0, 0x85c(r31)
/* 805DBFE0  38 00 00 01 */	li r0, 1
/* 805DBFE4  98 1F 08 5B */	stb r0, 0x85b(r31)
/* 805DBFE8  38 60 00 08 */	li r3, 8
/* 805DBFEC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805DBFF0  7C 04 07 74 */	extsb r4, r0
/* 805DBFF4  4B A5 19 D8 */	b dComIfGs_offZoneSwitch__Fii
/* 805DBFF8  38 00 00 01 */	li r0, 1
/* 805DBFFC  98 1F 08 53 */	stb r0, 0x853(r31)
/* 805DC000  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805DC004  D0 1F 07 E8 */	stfs f0, 0x7e8(r31)
/* 805DC008  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805DC00C  D0 1F 07 EC */	stfs f0, 0x7ec(r31)
/* 805DC010  88 9F 08 57 */	lbz r4, 0x857(r31)
/* 805DC014  28 04 00 FF */	cmplwi r4, 0xff
/* 805DC018  41 82 00 18 */	beq lbl_805DC030
/* 805DC01C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DC020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DC024  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805DC028  7C 05 07 74 */	extsb r5, r0
/* 805DC02C  4B A5 92 84 */	b offSwitch__10dSv_info_cFii
lbl_805DC030:
/* 805DC030  38 60 00 00 */	li r3, 0
/* 805DC034  98 7F 05 46 */	stb r3, 0x546(r31)
/* 805DC038  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 805DC03C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805DC040  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805DC044  98 7F 04 96 */	stb r3, 0x496(r31)
/* 805DC048  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805DC04C  54 00 00 3E */	slwi r0, r0, 0
/* 805DC050  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 805DC054  38 60 00 00 */	li r3, 0
/* 805DC058  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805DC05C  7C 04 07 74 */	extsb r4, r0
/* 805DC060  4B A5 19 D0 */	b dComIfGs_isZoneSwitch__Fii
/* 805DC064  2C 03 00 00 */	cmpwi r3, 0
/* 805DC068  40 82 00 18 */	bne lbl_805DC080
/* 805DC06C  7F E3 FB 78 */	mr r3, r31
/* 805DC070  38 80 00 01 */	li r4, 1
/* 805DC074  38 A0 00 00 */	li r5, 0
/* 805DC078  4B FE FA FD */	bl setActionMode__8daB_DS_cFii
/* 805DC07C  48 00 00 14 */	b lbl_805DC090
lbl_805DC080:
/* 805DC080  7F E3 FB 78 */	mr r3, r31
/* 805DC084  38 80 00 01 */	li r4, 1
/* 805DC088  38 A0 00 03 */	li r5, 3
/* 805DC08C  4B FE FA E9 */	bl setActionMode__8daB_DS_cFii
lbl_805DC090:
/* 805DC090  7F E3 FB 78 */	mr r3, r31
/* 805DC094  38 80 00 3A */	li r4, 0x3a
/* 805DC098  38 A0 00 00 */	li r5, 0
/* 805DC09C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805DC0A0  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805DC0A4  4B FE FA 25 */	bl setBck__8daB_DS_cFiUcff
/* 805DC0A8  48 00 00 20 */	b lbl_805DC0C8
lbl_805DC0AC:
/* 805DC0AC  38 00 00 00 */	li r0, 0
/* 805DC0B0  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 805DC0B4  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 805DC0B8  38 60 00 05 */	li r3, 5
/* 805DC0BC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805DC0C0  7C 04 07 74 */	extsb r4, r0
/* 805DC0C4  4B A5 18 88 */	b dComIfGs_onZoneSwitch__Fii
lbl_805DC0C8:
/* 805DC0C8  88 9F 08 59 */	lbz r4, 0x859(r31)
/* 805DC0CC  28 04 00 FF */	cmplwi r4, 0xff
/* 805DC0D0  41 82 00 18 */	beq lbl_805DC0E8
/* 805DC0D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DC0D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DC0DC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805DC0E0  7C 05 07 74 */	extsb r5, r0
/* 805DC0E4  4B A5 91 CC */	b offSwitch__10dSv_info_cFii
lbl_805DC0E8:
/* 805DC0E8  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805DC0EC  2C 00 00 01 */	cmpwi r0, 1
/* 805DC0F0  41 82 00 D4 */	beq lbl_805DC1C4
/* 805DC0F4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805DC0F8  D0 1F 07 F8 */	stfs f0, 0x7f8(r31)
/* 805DC0FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805DC100  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805DC104  80 63 00 00 */	lwz r3, 0(r3)
/* 805DC108  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805DC10C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100008B@ha */
/* 805DC110  38 84 00 8B */	addi r4, r4, 0x008B /* 0x0100008B@l */
/* 805DC114  38 A0 00 00 */	li r5, 0
/* 805DC118  38 C0 00 00 */	li r6, 0
/* 805DC11C  4B CD 2E F4 */	b bgmStart__8Z2SeqMgrFUlUll
/* 805DC120  38 60 00 01 */	li r3, 1
/* 805DC124  4B BC C6 C0 */	b dKy_change_colpat__FUc
/* 805DC128  7F E3 FB 78 */	mr r3, r31
/* 805DC12C  38 80 00 01 */	li r4, 1
/* 805DC130  4B FF 07 75 */	bl mCreateTrap__8daB_DS_cFb
/* 805DC134  7F E3 FB 78 */	mr r3, r31
/* 805DC138  38 80 00 00 */	li r4, 0
/* 805DC13C  38 A0 00 00 */	li r5, 0
/* 805DC140  4B FE FA 35 */	bl setActionMode__8daB_DS_cFii
/* 805DC144  48 00 00 80 */	b lbl_805DC1C4
lbl_805DC148:
/* 805DC148  7F E3 FB 78 */	mr r3, r31
/* 805DC14C  4B FF 0D 69 */	bl mChangeVer2__8daB_DS_cFv
/* 805DC150  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 805DC154  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805DC158  38 60 00 00 */	li r3, 0
/* 805DC15C  98 7F 05 46 */	stb r3, 0x546(r31)
/* 805DC160  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 805DC164  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805DC168  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805DC16C  98 7F 04 96 */	stb r3, 0x496(r31)
/* 805DC170  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805DC174  54 00 00 3E */	slwi r0, r0, 0
/* 805DC178  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 805DC17C  38 00 AF F6 */	li r0, -20490
/* 805DC180  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805DC184  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805DC188  D0 1F 07 E8 */	stfs f0, 0x7e8(r31)
/* 805DC18C  C0 1E 03 5C */	lfs f0, 0x35c(r30)
/* 805DC190  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805DC194  C0 1E 07 D0 */	lfs f0, 0x7d0(r30)
/* 805DC198  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805DC19C  C0 1E 07 D4 */	lfs f0, 0x7d4(r30)
/* 805DC1A0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805DC1A4  38 00 4E 20 */	li r0, 0x4e20
/* 805DC1A8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805DC1AC  38 00 C5 68 */	li r0, -15000
/* 805DC1B0  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805DC1B4  7F E3 FB 78 */	mr r3, r31
/* 805DC1B8  38 80 00 00 */	li r4, 0
/* 805DC1BC  38 A0 00 00 */	li r5, 0
/* 805DC1C0  4B FE F9 B5 */	bl setActionMode__8daB_DS_cFii
lbl_805DC1C4:
/* 805DC1C4  7F E3 FB 78 */	mr r3, r31
/* 805DC1C8  4B FF EF BD */	bl daB_DS_Execute__FP8daB_DS_c
lbl_805DC1CC:
/* 805DC1CC  7F A3 EB 78 */	mr r3, r29
lbl_805DC1D0:
/* 805DC1D0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805DC1D4  4B D8 60 40 */	b _restgpr_24
/* 805DC1D8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805DC1DC  7C 08 03 A6 */	mtlr r0
/* 805DC1E0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805DC1E4  4E 80 00 20 */	blr 

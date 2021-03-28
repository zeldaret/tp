lbl_806BD838:
/* 806BD838  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 806BD83C  7C 08 02 A6 */	mflr r0
/* 806BD840  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 806BD844  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806BD848  4B CA 49 90 */	b _savegpr_28
/* 806BD84C  7C 7E 1B 78 */	mr r30, r3
/* 806BD850  3C 80 80 6C */	lis r4, lit_3917@ha
/* 806BD854  3B E4 E4 8C */	addi r31, r4, lit_3917@l
/* 806BD858  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806BD85C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806BD860  40 82 01 48 */	bne lbl_806BD9A8
/* 806BD864  7F C0 F3 79 */	or. r0, r30, r30
/* 806BD868  41 82 01 34 */	beq lbl_806BD99C
/* 806BD86C  7C 1D 03 78 */	mr r29, r0
/* 806BD870  4B 95 B2 F4 */	b __ct__10fopAc_ac_cFv
/* 806BD874  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 806BD878  4B C0 36 EC */	b __ct__15Z2CreatureEnemyFv
/* 806BD87C  38 7D 06 94 */	addi r3, r29, 0x694
/* 806BD880  4B 9B 86 2C */	b __ct__12dBgS_AcchCirFv
/* 806BD884  3B 9D 06 D4 */	addi r28, r29, 0x6d4
/* 806BD888  7F 83 E3 78 */	mr r3, r28
/* 806BD88C  4B 9B 88 14 */	b __ct__9dBgS_AcchFv
/* 806BD890  3C 60 80 6C */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 806BD894  38 63 E7 24 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 806BD898  90 7C 00 10 */	stw r3, 0x10(r28)
/* 806BD89C  38 03 00 0C */	addi r0, r3, 0xc
/* 806BD8A0  90 1C 00 14 */	stw r0, 0x14(r28)
/* 806BD8A4  38 03 00 18 */	addi r0, r3, 0x18
/* 806BD8A8  90 1C 00 24 */	stw r0, 0x24(r28)
/* 806BD8AC  38 7C 00 14 */	addi r3, r28, 0x14
/* 806BD8B0  4B 9B B5 B8 */	b SetObj__16dBgS_PolyPassChkFv
/* 806BD8B4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 806BD8B8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 806BD8BC  90 1D 08 C4 */	stw r0, 0x8c4(r29)
/* 806BD8C0  38 7D 08 C8 */	addi r3, r29, 0x8c8
/* 806BD8C4  4B 9C 5E 9C */	b __ct__10dCcD_GSttsFv
/* 806BD8C8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 806BD8CC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 806BD8D0  90 7D 08 C4 */	stw r3, 0x8c4(r29)
/* 806BD8D4  38 03 00 20 */	addi r0, r3, 0x20
/* 806BD8D8  90 1D 08 C8 */	stw r0, 0x8c8(r29)
/* 806BD8DC  3B 9D 08 E8 */	addi r28, r29, 0x8e8
/* 806BD8E0  7F 83 E3 78 */	mr r3, r28
/* 806BD8E4  4B 9C 61 44 */	b __ct__12dCcD_GObjInfFv
/* 806BD8E8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806BD8EC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806BD8F0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 806BD8F4  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha
/* 806BD8F8  38 03 E7 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806BD8FC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 806BD900  3C 60 80 6C */	lis r3, __vt__8cM3dGCyl@ha
/* 806BD904  38 03 E7 0C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 806BD908  90 1C 01 38 */	stw r0, 0x138(r28)
/* 806BD90C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 806BD910  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 806BD914  90 7C 01 20 */	stw r3, 0x120(r28)
/* 806BD918  38 03 00 58 */	addi r0, r3, 0x58
/* 806BD91C  90 1C 01 38 */	stw r0, 0x138(r28)
/* 806BD920  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 806BD924  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 806BD928  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 806BD92C  38 03 00 2C */	addi r0, r3, 0x2c
/* 806BD930  90 1C 01 20 */	stw r0, 0x120(r28)
/* 806BD934  38 03 00 84 */	addi r0, r3, 0x84
/* 806BD938  90 1C 01 38 */	stw r0, 0x138(r28)
/* 806BD93C  3B 9D 0A 24 */	addi r28, r29, 0xa24
/* 806BD940  7F 83 E3 78 */	mr r3, r28
/* 806BD944  4B 9C 60 E4 */	b __ct__12dCcD_GObjInfFv
/* 806BD948  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806BD94C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806BD950  90 1C 01 20 */	stw r0, 0x120(r28)
/* 806BD954  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha
/* 806BD958  38 03 E7 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806BD95C  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 806BD960  3C 60 80 6C */	lis r3, __vt__8cM3dGSph@ha
/* 806BD964  38 03 E7 00 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806BD968  90 1C 01 34 */	stw r0, 0x134(r28)
/* 806BD96C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806BD970  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806BD974  90 7C 01 20 */	stw r3, 0x120(r28)
/* 806BD978  38 03 00 58 */	addi r0, r3, 0x58
/* 806BD97C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 806BD980  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806BD984  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806BD988  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 806BD98C  38 03 00 2C */	addi r0, r3, 0x2c
/* 806BD990  90 1C 01 20 */	stw r0, 0x120(r28)
/* 806BD994  38 03 00 84 */	addi r0, r3, 0x84
/* 806BD998  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_806BD99C:
/* 806BD99C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 806BD9A0  60 00 00 08 */	ori r0, r0, 8
/* 806BD9A4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_806BD9A8:
/* 806BD9A8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 806BD9AC  3C 80 80 6C */	lis r4, stringBase0@ha
/* 806BD9B0  38 84 E5 64 */	addi r4, r4, stringBase0@l
/* 806BD9B4  4B 96 F5 08 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806BD9B8  7C 7D 1B 78 */	mr r29, r3
/* 806BD9BC  2C 1D 00 04 */	cmpwi r29, 4
/* 806BD9C0  40 82 03 5C */	bne lbl_806BDD1C
/* 806BD9C4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806BD9C8  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 806BD9CC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806BD9D0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806BD9D4  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 806BD9D8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806BD9DC  54 00 46 3E */	srwi r0, r0, 0x18
/* 806BD9E0  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 806BD9E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BD9E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806BD9EC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 806BD9F0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 806BD9F4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 806BD9F8  A0 84 04 14 */	lhz r4, 0x414(r4)
/* 806BD9FC  4B 97 6F C0 */	b isEventBit__11dSv_event_cCFUs
/* 806BDA00  2C 03 00 00 */	cmpwi r3, 0
/* 806BDA04  41 82 00 30 */	beq lbl_806BDA34
/* 806BDA08  3C 60 80 6C */	lis r3, stringBase0@ha
/* 806BDA0C  38 63 E5 64 */	addi r3, r3, stringBase0@l
/* 806BDA10  38 63 00 0D */	addi r3, r3, 0xd
/* 806BDA14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806BDA18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806BDA1C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 806BDA20  4B CA AF 74 */	b strcmp
/* 806BDA24  2C 03 00 00 */	cmpwi r3, 0
/* 806BDA28  40 82 00 0C */	bne lbl_806BDA34
/* 806BDA2C  38 60 00 05 */	li r3, 5
/* 806BDA30  48 00 02 F0 */	b lbl_806BDD20
lbl_806BDA34:
/* 806BDA34  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 806BDA38  28 00 00 00 */	cmplwi r0, 0
/* 806BDA3C  40 82 00 10 */	bne lbl_806BDA4C
/* 806BDA40  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806BDA44  60 00 40 00 */	ori r0, r0, 0x4000
/* 806BDA48  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_806BDA4C:
/* 806BDA4C  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 806BDA50  38 81 00 10 */	addi r4, r1, 0x10
/* 806BDA54  4B 95 BF 68 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806BDA58  2C 03 00 00 */	cmpwi r3, 0
/* 806BDA5C  41 82 00 28 */	beq lbl_806BDA84
/* 806BDA60  80 61 00 10 */	lwz r3, 0x10(r1)
/* 806BDA64  28 03 00 00 */	cmplwi r3, 0
/* 806BDA68  41 82 00 1C */	beq lbl_806BDA84
/* 806BDA6C  88 03 06 1A */	lbz r0, 0x61a(r3)
/* 806BDA70  28 00 00 04 */	cmplwi r0, 4
/* 806BDA74  40 82 00 10 */	bne lbl_806BDA84
/* 806BDA78  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806BDA7C  60 00 40 00 */	ori r0, r0, 0x4000
/* 806BDA80  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_806BDA84:
/* 806BDA84  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806BDA88  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806BDA8C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806BDA90  EC 21 00 2A */	fadds f1, f1, f0
/* 806BDA94  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806BDA98  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806BDA9C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806BDAA0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806BDAA4  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BDAA8  4B 9B A1 C0 */	b __ct__11dBgS_LinChkFv
/* 806BDAAC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806BDAB0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806BDAB4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806BDAB8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806BDABC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806BDAC0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806BDAC4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806BDAC8  EC 01 00 2A */	fadds f0, f1, f0
/* 806BDACC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806BDAD0  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BDAD4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806BDAD8  38 A1 00 14 */	addi r5, r1, 0x14
/* 806BDADC  38 C0 00 00 */	li r6, 0
/* 806BDAE0  4B 9B A2 84 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806BDAE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BDAE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806BDAEC  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 806BDAF0  7F 83 E3 78 */	mr r3, r28
/* 806BDAF4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806BDAF8  4B 9B 68 BC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806BDAFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BDB00  41 82 00 2C */	beq lbl_806BDB2C
/* 806BDB04  7F 83 E3 78 */	mr r3, r28
/* 806BDB08  38 81 00 40 */	addi r4, r1, 0x40
/* 806BDB0C  4B 9B 71 B0 */	b GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 806BDB10  2C 03 00 01 */	cmpwi r3, 1
/* 806BDB14  40 82 00 18 */	bne lbl_806BDB2C
/* 806BDB18  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BDB1C  38 80 FF FF */	li r4, -1
/* 806BDB20  4B 9B A1 BC */	b __dt__11dBgS_LinChkFv
/* 806BDB24  38 60 00 05 */	li r3, 5
/* 806BDB28  48 00 01 F8 */	b lbl_806BDD20
lbl_806BDB2C:
/* 806BDB2C  38 61 00 20 */	addi r3, r1, 0x20
/* 806BDB30  4B 96 01 8C */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 806BDB34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BDB38  41 82 00 14 */	beq lbl_806BDB4C
/* 806BDB3C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 806BDB40  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 806BDB44  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806BDB48  48 00 00 18 */	b lbl_806BDB60
lbl_806BDB4C:
/* 806BDB4C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BDB50  38 80 FF FF */	li r4, -1
/* 806BDB54  4B 9B A1 88 */	b __dt__11dBgS_LinChkFv
/* 806BDB58  38 60 00 05 */	li r3, 5
/* 806BDB5C  48 00 01 C4 */	b lbl_806BDD20
lbl_806BDB60:
/* 806BDB60  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 806BDB64  28 00 00 FF */	cmplwi r0, 0xff
/* 806BDB68  40 82 00 0C */	bne lbl_806BDB74
/* 806BDB6C  38 00 00 00 */	li r0, 0
/* 806BDB70  98 1E 05 B5 */	stb r0, 0x5b5(r30)
lbl_806BDB74:
/* 806BDB74  7F C3 F3 78 */	mr r3, r30
/* 806BDB78  3C 80 80 6C */	lis r4, useHeapIe_fst__FP10fopAc_ac_c@ha
/* 806BDB7C  38 84 D7 40 */	addi r4, r4, useHeapIe_fst__FP10fopAc_ac_c@l
/* 806BDB80  38 A0 1E 40 */	li r5, 0x1e40
/* 806BDB84  4B 95 C9 2C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806BDB88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BDB8C  40 82 00 18 */	bne lbl_806BDBA4
/* 806BDB90  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BDB94  38 80 FF FF */	li r4, -1
/* 806BDB98  4B 9B A1 44 */	b __dt__11dBgS_LinChkFv
/* 806BDB9C  38 60 00 05 */	li r3, 5
/* 806BDBA0  48 00 01 80 */	b lbl_806BDD20
lbl_806BDBA4:
/* 806BDBA4  3C 60 80 6C */	lis r3, data_806BE7A0@ha
/* 806BDBA8  8C 03 E7 A0 */	lbzu r0, data_806BE7A0@l(r3)
/* 806BDBAC  28 00 00 00 */	cmplwi r0, 0
/* 806BDBB0  40 82 00 20 */	bne lbl_806BDBD0
/* 806BDBB4  38 00 00 01 */	li r0, 1
/* 806BDBB8  98 1E 0B 98 */	stb r0, 0xb98(r30)
/* 806BDBBC  98 03 00 00 */	stb r0, 0(r3)
/* 806BDBC0  38 00 FF FF */	li r0, -1
/* 806BDBC4  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BDBC8  38 63 E7 B0 */	addi r3, r3, l_HIO@l
/* 806BDBCC  98 03 00 04 */	stb r0, 4(r3)
lbl_806BDBD0:
/* 806BDBD0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806BDBD4  80 63 00 04 */	lwz r3, 4(r3)
/* 806BDBD8  38 03 00 24 */	addi r0, r3, 0x24
/* 806BDBDC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 806BDBE0  7F C3 F3 78 */	mr r3, r30
/* 806BDBE4  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 806BDBE8  FC 40 08 90 */	fmr f2, f1
/* 806BDBEC  FC 60 08 90 */	fmr f3, f1
/* 806BDBF0  4B 95 C9 38 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806BDBF4  7F C3 F3 78 */	mr r3, r30
/* 806BDBF8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806BDBFC  FC 40 08 90 */	fmr f2, f1
/* 806BDC00  FC 60 08 90 */	fmr f3, f1
/* 806BDC04  4B 95 C9 34 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806BDC08  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806BDC0C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806BDC10  38 BE 05 38 */	addi r5, r30, 0x538
/* 806BDC14  38 C0 00 03 */	li r6, 3
/* 806BDC18  38 E0 00 01 */	li r7, 1
/* 806BDC1C  4B C0 34 78 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806BDC20  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806BDC24  3C 80 80 6C */	lis r4, stringBase0@ha
/* 806BDC28  38 84 E5 64 */	addi r4, r4, stringBase0@l
/* 806BDC2C  38 84 00 15 */	addi r4, r4, 0x15
/* 806BDC30  4B C0 3F 60 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 806BDC34  38 1E 05 D4 */	addi r0, r30, 0x5d4
/* 806BDC38  90 1E 0B 64 */	stw r0, 0xb64(r30)
/* 806BDC3C  38 00 00 25 */	li r0, 0x25
/* 806BDC40  90 1E 0B 74 */	stw r0, 0xb74(r30)
/* 806BDC44  38 7E 08 AC */	addi r3, r30, 0x8ac
/* 806BDC48  38 80 00 01 */	li r4, 1
/* 806BDC4C  38 A0 00 00 */	li r5, 0
/* 806BDC50  7F C6 F3 78 */	mr r6, r30
/* 806BDC54  4B 9C 5C 0C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806BDC58  38 7E 08 E8 */	addi r3, r30, 0x8e8
/* 806BDC5C  3C 80 80 6C */	lis r4, cc_cyl_src@ha
/* 806BDC60  38 84 E6 08 */	addi r4, r4, cc_cyl_src@l
/* 806BDC64  4B 9C 6C 50 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 806BDC68  38 1E 08 AC */	addi r0, r30, 0x8ac
/* 806BDC6C  90 1E 09 2C */	stw r0, 0x92c(r30)
/* 806BDC70  38 7E 0A 24 */	addi r3, r30, 0xa24
/* 806BDC74  3C 80 80 6C */	lis r4, at_sph_src@ha
/* 806BDC78  38 84 E6 4C */	addi r4, r4, at_sph_src@l
/* 806BDC7C  4B 9C 6D B8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806BDC80  38 1E 08 AC */	addi r0, r30, 0x8ac
/* 806BDC84  90 1E 0A 68 */	stw r0, 0xa68(r30)
/* 806BDC88  38 00 00 00 */	li r0, 0
/* 806BDC8C  90 01 00 08 */	stw r0, 8(r1)
/* 806BDC90  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806BDC94  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806BDC98  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 806BDC9C  7F C6 F3 78 */	mr r6, r30
/* 806BDCA0  38 E0 00 01 */	li r7, 1
/* 806BDCA4  39 1E 06 94 */	addi r8, r30, 0x694
/* 806BDCA8  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 806BDCAC  39 40 00 00 */	li r10, 0
/* 806BDCB0  4B 9B 85 98 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806BDCB4  38 7E 06 94 */	addi r3, r30, 0x694
/* 806BDCB8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806BDCBC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806BDCC0  4B 9B 82 98 */	b SetWall__12dBgS_AcchCirFff
/* 806BDCC4  80 1E 07 00 */	lwz r0, 0x700(r30)
/* 806BDCC8  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 806BDCCC  90 1E 07 00 */	stw r0, 0x700(r30)
/* 806BDCD0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806BDCD4  D0 1E 07 A4 */	stfs f0, 0x7a4(r30)
/* 806BDCD8  38 00 00 1E */	li r0, 0x1e
/* 806BDCDC  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 806BDCE0  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806BDCE4  38 00 00 04 */	li r0, 4
/* 806BDCE8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806BDCEC  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 806BDCF0  28 00 00 01 */	cmplwi r0, 1
/* 806BDCF4  41 80 00 0C */	blt lbl_806BDD00
/* 806BDCF8  38 00 FF FF */	li r0, -1
/* 806BDCFC  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_806BDD00:
/* 806BDD00  38 00 00 00 */	li r0, 0
/* 806BDD04  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 806BDD08  7F C3 F3 78 */	mr r3, r30
/* 806BDD0C  4B FF F6 D5 */	bl daE_Fs_Execute__FP10e_fs_class
/* 806BDD10  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BDD14  38 80 FF FF */	li r4, -1
/* 806BDD18  4B 9B 9F C4 */	b __dt__11dBgS_LinChkFv
lbl_806BDD1C:
/* 806BDD1C  7F A3 EB 78 */	mr r3, r29
lbl_806BDD20:
/* 806BDD20  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806BDD24  4B CA 45 00 */	b _restgpr_28
/* 806BDD28  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 806BDD2C  7C 08 03 A6 */	mtlr r0
/* 806BDD30  38 21 00 B0 */	addi r1, r1, 0xb0
/* 806BDD34  4E 80 00 20 */	blr 

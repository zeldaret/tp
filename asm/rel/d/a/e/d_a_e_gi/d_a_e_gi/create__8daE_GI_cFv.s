lbl_806D027C:
/* 806D027C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806D0280  7C 08 02 A6 */	mflr r0
/* 806D0284  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D0288  39 61 00 20 */	addi r11, r1, 0x20
/* 806D028C  4B C9 1F 4D */	bl _savegpr_28
/* 806D0290  7C 7F 1B 78 */	mr r31, r3
/* 806D0294  3C 80 80 6D */	lis r4, lit_3907@ha /* 0x806D0E60@ha */
/* 806D0298  3B C4 0E 60 */	addi r30, r4, lit_3907@l /* 0x806D0E60@l */
/* 806D029C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806D02A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806D02A4  40 82 00 C8 */	bne lbl_806D036C
/* 806D02A8  7F E0 FB 79 */	or. r0, r31, r31
/* 806D02AC  41 82 00 B4 */	beq lbl_806D0360
/* 806D02B0  7C 1D 03 78 */	mr r29, r0
/* 806D02B4  4B 94 88 B1 */	bl __ct__10fopAc_ac_cFv
/* 806D02B8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 806D02BC  4B BF 0C A9 */	bl __ct__15Z2CreatureEnemyFv
/* 806D02C0  38 7D 06 AC */	addi r3, r29, 0x6ac
/* 806D02C4  4B 9A 5B E9 */	bl __ct__12dBgS_AcchCirFv
/* 806D02C8  3B 9D 06 EC */	addi r28, r29, 0x6ec
/* 806D02CC  7F 83 E3 78 */	mr r3, r28
/* 806D02D0  4B 9A 5D D1 */	bl __ct__9dBgS_AcchFv
/* 806D02D4  3C 60 80 6D */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806D10F0@ha */
/* 806D02D8  38 63 10 F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806D10F0@l */
/* 806D02DC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 806D02E0  38 03 00 0C */	addi r0, r3, 0xc
/* 806D02E4  90 1C 00 14 */	stw r0, 0x14(r28)
/* 806D02E8  38 03 00 18 */	addi r0, r3, 0x18
/* 806D02EC  90 1C 00 24 */	stw r0, 0x24(r28)
/* 806D02F0  38 7C 00 14 */	addi r3, r28, 0x14
/* 806D02F4  4B 9A 8B 75 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806D02F8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806D02FC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806D0300  90 1D 08 DC */	stw r0, 0x8dc(r29)
/* 806D0304  38 7D 08 E0 */	addi r3, r29, 0x8e0
/* 806D0308  4B 9B 34 59 */	bl __ct__10dCcD_GSttsFv
/* 806D030C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806D0310  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806D0314  90 7D 08 DC */	stw r3, 0x8dc(r29)
/* 806D0318  38 03 00 20 */	addi r0, r3, 0x20
/* 806D031C  90 1D 08 E0 */	stw r0, 0x8e0(r29)
/* 806D0320  38 7D 09 00 */	addi r3, r29, 0x900
/* 806D0324  3C 80 80 6D */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806D06D4@ha */
/* 806D0328  38 84 06 D4 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806D06D4@l */
/* 806D032C  3C A0 80 6D */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806D0608@ha */
/* 806D0330  38 A5 06 08 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806D0608@l */
/* 806D0334  38 C0 01 38 */	li r6, 0x138
/* 806D0338  38 E0 00 02 */	li r7, 2
/* 806D033C  4B C9 1A 25 */	bl __construct_array
/* 806D0340  38 7D 0B 70 */	addi r3, r29, 0xb70
/* 806D0344  3C 80 80 6D */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806D06D4@ha */
/* 806D0348  38 84 06 D4 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806D06D4@l */
/* 806D034C  3C A0 80 6D */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806D0608@ha */
/* 806D0350  38 A5 06 08 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806D0608@l */
/* 806D0354  38 C0 01 38 */	li r6, 0x138
/* 806D0358  38 E0 00 04 */	li r7, 4
/* 806D035C  4B C9 1A 05 */	bl __construct_array
lbl_806D0360:
/* 806D0360  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806D0364  60 00 00 08 */	ori r0, r0, 8
/* 806D0368  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806D036C:
/* 806D036C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806D0370  98 1F 06 9D */	stb r0, 0x69d(r31)
/* 806D0374  88 9F 06 9D */	lbz r4, 0x69d(r31)
/* 806D0378  28 04 00 FF */	cmplwi r4, 0xff
/* 806D037C  41 82 00 28 */	beq lbl_806D03A4
/* 806D0380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D0384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D0388  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806D038C  7C 05 07 74 */	extsb r5, r0
/* 806D0390  4B 96 4F D1 */	bl isSwitch__10dSv_info_cCFii
/* 806D0394  2C 03 00 00 */	cmpwi r3, 0
/* 806D0398  41 82 00 0C */	beq lbl_806D03A4
/* 806D039C  38 60 00 05 */	li r3, 5
/* 806D03A0  48 00 02 50 */	b lbl_806D05F0
lbl_806D03A4:
/* 806D03A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806D03A8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806D03AC  98 1F 06 9A */	stb r0, 0x69a(r31)
/* 806D03B0  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 806D03B4  28 00 00 00 */	cmplwi r0, 0
/* 806D03B8  41 82 00 0C */	beq lbl_806D03C4
/* 806D03BC  38 00 00 01 */	li r0, 1
/* 806D03C0  98 1F 06 9A */	stb r0, 0x69a(r31)
lbl_806D03C4:
/* 806D03C4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806D03C8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 806D03CC  98 1F 06 9E */	stb r0, 0x69e(r31)
/* 806D03D0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806D03D4  3C 80 80 6D */	lis r4, d_a_e_gi__stringBase0@ha /* 0x806D0F78@ha */
/* 806D03D8  38 84 0F 78 */	addi r4, r4, d_a_e_gi__stringBase0@l /* 0x806D0F78@l */
/* 806D03DC  4B 95 CA E1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806D03E0  7C 7D 1B 78 */	mr r29, r3
/* 806D03E4  2C 1D 00 04 */	cmpwi r29, 4
/* 806D03E8  40 82 02 04 */	bne lbl_806D05EC
/* 806D03EC  7F E3 FB 78 */	mr r3, r31
/* 806D03F0  3C 80 80 6D */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806D025C@ha */
/* 806D03F4  38 84 02 5C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806D025C@l */
/* 806D03F8  38 A0 30 A0 */	li r5, 0x30a0
/* 806D03FC  4B 94 A0 B5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806D0400  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806D0404  40 82 00 0C */	bne lbl_806D0410
/* 806D0408  38 60 00 05 */	li r3, 5
/* 806D040C  48 00 01 E4 */	b lbl_806D05F0
lbl_806D0410:
/* 806D0410  3C 60 80 6D */	lis r3, data_806D1128@ha /* 0x806D1128@ha */
/* 806D0414  8C 03 11 28 */	lbzu r0, data_806D1128@l(r3)  /* 0x806D1128@l */
/* 806D0418  28 00 00 00 */	cmplwi r0, 0
/* 806D041C  40 82 00 20 */	bne lbl_806D043C
/* 806D0420  38 00 00 01 */	li r0, 1
/* 806D0424  98 03 00 00 */	stb r0, 0(r3)
/* 806D0428  98 1F 10 78 */	stb r0, 0x1078(r31)
/* 806D042C  38 00 FF FF */	li r0, -1
/* 806D0430  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806D1138@ha */
/* 806D0434  38 63 11 38 */	addi r3, r3, l_HIO@l /* 0x806D1138@l */
/* 806D0438  98 03 00 04 */	stb r0, 4(r3)
lbl_806D043C:
/* 806D043C  38 00 00 04 */	li r0, 4
/* 806D0440  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806D0444  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806D0448  80 63 00 04 */	lwz r3, 4(r3)
/* 806D044C  38 03 00 24 */	addi r0, r3, 0x24
/* 806D0450  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806D0454  7F E3 FB 78 */	mr r3, r31
/* 806D0458  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 806D045C  FC 40 08 90 */	fmr f2, f1
/* 806D0460  FC 60 08 90 */	fmr f3, f1
/* 806D0464  4B 94 A0 C5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806D0468  7F E3 FB 78 */	mr r3, r31
/* 806D046C  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 806D0470  FC 40 08 90 */	fmr f2, f1
/* 806D0474  FC 60 08 90 */	fmr f3, f1
/* 806D0478  4B 94 A0 C1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806D047C  38 00 00 00 */	li r0, 0
/* 806D0480  90 01 00 08 */	stw r0, 8(r1)
/* 806D0484  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 806D0488  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806D048C  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 806D0490  7F E6 FB 78 */	mr r6, r31
/* 806D0494  38 E0 00 01 */	li r7, 1
/* 806D0498  39 1F 06 AC */	addi r8, r31, 0x6ac
/* 806D049C  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 806D04A0  39 40 00 00 */	li r10, 0
/* 806D04A4  4B 9A 5D A5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806D04A8  38 7F 06 AC */	addi r3, r31, 0x6ac
/* 806D04AC  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806D04B0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806D04B4  4B 9A 5A A5 */	bl SetWall__12dBgS_AcchCirFff
/* 806D04B8  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 806D04BC  D0 1F 06 64 */	stfs f0, 0x664(r31)
/* 806D04C0  38 00 00 F0 */	li r0, 0xf0
/* 806D04C4  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 806D04C8  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 806D04CC  38 7F 08 C4 */	addi r3, r31, 0x8c4
/* 806D04D0  38 80 00 FE */	li r4, 0xfe
/* 806D04D4  38 A0 00 00 */	li r5, 0
/* 806D04D8  7F E6 FB 78 */	mr r6, r31
/* 806D04DC  4B 9B 33 85 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806D04E0  38 7F 09 00 */	addi r3, r31, 0x900
/* 806D04E4  3C 80 80 6D */	lis r4, data_806D0FBC@ha /* 0x806D0FBC@ha */
/* 806D04E8  38 84 0F BC */	addi r4, r4, data_806D0FBC@l /* 0x806D0FBC@l */
/* 806D04EC  4B 9B 45 49 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806D04F0  38 1F 08 C4 */	addi r0, r31, 0x8c4
/* 806D04F4  90 1F 09 44 */	stw r0, 0x944(r31)
/* 806D04F8  38 7F 0A 38 */	addi r3, r31, 0xa38
/* 806D04FC  3C 80 80 6D */	lis r4, data_806D0FBC@ha /* 0x806D0FBC@ha */
/* 806D0500  38 84 0F BC */	addi r4, r4, data_806D0FBC@l /* 0x806D0FBC@l */
/* 806D0504  4B 9B 45 31 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806D0508  38 1F 08 C4 */	addi r0, r31, 0x8c4
/* 806D050C  90 1F 0A 7C */	stw r0, 0xa7c(r31)
/* 806D0510  38 7F 0B 70 */	addi r3, r31, 0xb70
/* 806D0514  3C 80 80 6D */	lis r4, data_806D0FFC@ha /* 0x806D0FFC@ha */
/* 806D0518  38 84 0F FC */	addi r4, r4, data_806D0FFC@l /* 0x806D0FFC@l */
/* 806D051C  4B 9B 45 19 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806D0520  38 1F 08 C4 */	addi r0, r31, 0x8c4
/* 806D0524  90 1F 0B B4 */	stw r0, 0xbb4(r31)
/* 806D0528  38 7F 0C A8 */	addi r3, r31, 0xca8
/* 806D052C  3C 80 80 6D */	lis r4, data_806D0FFC@ha /* 0x806D0FFC@ha */
/* 806D0530  38 84 0F FC */	addi r4, r4, data_806D0FFC@l /* 0x806D0FFC@l */
/* 806D0534  4B 9B 45 01 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806D0538  38 1F 08 C4 */	addi r0, r31, 0x8c4
/* 806D053C  90 1F 0C EC */	stw r0, 0xcec(r31)
/* 806D0540  38 7F 0D E0 */	addi r3, r31, 0xde0
/* 806D0544  3C 80 80 6D */	lis r4, data_806D0FFC@ha /* 0x806D0FFC@ha */
/* 806D0548  38 84 0F FC */	addi r4, r4, data_806D0FFC@l /* 0x806D0FFC@l */
/* 806D054C  4B 9B 44 E9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806D0550  38 1F 08 C4 */	addi r0, r31, 0x8c4
/* 806D0554  90 1F 0E 24 */	stw r0, 0xe24(r31)
/* 806D0558  38 7F 0F 18 */	addi r3, r31, 0xf18
/* 806D055C  3C 80 80 6D */	lis r4, data_806D0FFC@ha /* 0x806D0FFC@ha */
/* 806D0560  38 84 0F FC */	addi r4, r4, data_806D0FFC@l /* 0x806D0FFC@l */
/* 806D0564  4B 9B 44 D1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806D0568  38 1F 08 C4 */	addi r0, r31, 0x8c4
/* 806D056C  90 1F 0F 5C */	stw r0, 0xf5c(r31)
/* 806D0570  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806D0574  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806D0578  38 BF 05 38 */	addi r5, r31, 0x538
/* 806D057C  38 C0 00 03 */	li r6, 3
/* 806D0580  38 E0 00 01 */	li r7, 1
/* 806D0584  4B BF 0B 11 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806D0588  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806D058C  3C 80 80 6D */	lis r4, d_a_e_gi__stringBase0@ha /* 0x806D0F78@ha */
/* 806D0590  38 84 0F 78 */	addi r4, r4, d_a_e_gi__stringBase0@l /* 0x806D0F78@l */
/* 806D0594  38 84 00 05 */	addi r4, r4, 5
/* 806D0598  4B BF 15 F9 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806D059C  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 806D05A0  90 1F 10 58 */	stw r0, 0x1058(r31)
/* 806D05A4  38 00 00 01 */	li r0, 1
/* 806D05A8  98 1F 10 6E */	stb r0, 0x106e(r31)
/* 806D05AC  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 806D05B0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 806D05B4  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 806D05B8  28 00 00 00 */	cmplwi r0, 0
/* 806D05BC  40 82 00 18 */	bne lbl_806D05D4
/* 806D05C0  7F E3 FB 78 */	mr r3, r31
/* 806D05C4  38 80 00 00 */	li r4, 0
/* 806D05C8  38 A0 00 00 */	li r5, 0
/* 806D05CC  4B FF D3 41 */	bl setActionMode__8daE_GI_cFii
/* 806D05D0  48 00 00 14 */	b lbl_806D05E4
lbl_806D05D4:
/* 806D05D4  7F E3 FB 78 */	mr r3, r31
/* 806D05D8  38 80 00 01 */	li r4, 1
/* 806D05DC  38 A0 00 00 */	li r5, 0
/* 806D05E0  4B FF D3 2D */	bl setActionMode__8daE_GI_cFii
lbl_806D05E4:
/* 806D05E4  7F E3 FB 78 */	mr r3, r31
/* 806D05E8  4B FF FA 45 */	bl daE_GI_Execute__FP8daE_GI_c
lbl_806D05EC:
/* 806D05EC  7F A3 EB 78 */	mr r3, r29
lbl_806D05F0:
/* 806D05F0  39 61 00 20 */	addi r11, r1, 0x20
/* 806D05F4  4B C9 1C 31 */	bl _restgpr_28
/* 806D05F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D05FC  7C 08 03 A6 */	mtlr r0
/* 806D0600  38 21 00 20 */	addi r1, r1, 0x20
/* 806D0604  4E 80 00 20 */	blr 

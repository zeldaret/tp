lbl_80A5D354:
/* 80A5D354  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A5D358  7C 08 02 A6 */	mflr r0
/* 80A5D35C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A5D360  39 61 00 40 */	addi r11, r1, 0x40
/* 80A5D364  4B 90 4E 68 */	b _savegpr_25
/* 80A5D368  7C 7C 1B 78 */	mr r28, r3
/* 80A5D36C  3C 80 80 A6 */	lis r4, lit_1109@ha
/* 80A5D370  3B A4 FE 48 */	addi r29, r4, lit_1109@l
/* 80A5D374  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A5D378  3B C4 DE FC */	addi r30, r4, lit_4030@l
/* 80A5D37C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A5D380  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A5D384  40 82 00 F0 */	bne lbl_80A5D474
/* 80A5D388  7F 80 E3 79 */	or. r0, r28, r28
/* 80A5D38C  41 82 00 DC */	beq lbl_80A5D468
/* 80A5D390  7C 1A 03 78 */	mr r26, r0
/* 80A5D394  4B 5B B7 D0 */	b __ct__10fopAc_ac_cFv
/* 80A5D398  38 7A 06 40 */	addi r3, r26, 0x640
/* 80A5D39C  4B 61 8B 10 */	b __ct__12dBgS_AcchCirFv
/* 80A5D3A0  3B 3A 06 80 */	addi r25, r26, 0x680
/* 80A5D3A4  7F 23 CB 78 */	mr r3, r25
/* 80A5D3A8  4B 61 8C F8 */	b __ct__9dBgS_AcchFv
/* 80A5D3AC  3C 60 80 A6 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A5D3B0  38 63 FE 00 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A5D3B4  90 79 00 10 */	stw r3, 0x10(r25)
/* 80A5D3B8  38 03 00 0C */	addi r0, r3, 0xc
/* 80A5D3BC  90 19 00 14 */	stw r0, 0x14(r25)
/* 80A5D3C0  38 03 00 18 */	addi r0, r3, 0x18
/* 80A5D3C4  90 19 00 24 */	stw r0, 0x24(r25)
/* 80A5D3C8  38 79 00 14 */	addi r3, r25, 0x14
/* 80A5D3CC  4B 61 BA 9C */	b SetObj__16dBgS_PolyPassChkFv
/* 80A5D3D0  38 7A 08 60 */	addi r3, r26, 0x860
/* 80A5D3D4  4B 86 2F F4 */	b __ct__10Z2CreatureFv
/* 80A5D3D8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A5D3DC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A5D3E0  90 1A 09 68 */	stw r0, 0x968(r26)
/* 80A5D3E4  38 7A 09 6C */	addi r3, r26, 0x96c
/* 80A5D3E8  4B 62 63 78 */	b __ct__10dCcD_GSttsFv
/* 80A5D3EC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A5D3F0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A5D3F4  90 7A 09 68 */	stw r3, 0x968(r26)
/* 80A5D3F8  38 03 00 20 */	addi r0, r3, 0x20
/* 80A5D3FC  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80A5D400  3B 7A 09 8C */	addi r27, r26, 0x98c
/* 80A5D404  7F 63 DB 78 */	mr r3, r27
/* 80A5D408  4B 62 66 20 */	b __ct__12dCcD_GObjInfFv
/* 80A5D40C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A5D410  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A5D414  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80A5D418  3C 60 80 A6 */	lis r3, __vt__8cM3dGAab@ha
/* 80A5D41C  38 03 FD F4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A5D420  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80A5D424  3C 60 80 A6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A5D428  38 03 FD E8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A5D42C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80A5D430  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A5D434  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A5D438  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80A5D43C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A5D440  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80A5D444  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A5D448  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A5D44C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80A5D450  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A5D454  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80A5D458  38 03 00 84 */	addi r0, r3, 0x84
/* 80A5D45C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80A5D460  38 7A 0A F4 */	addi r3, r26, 0xaf4
/* 80A5D464  4B 7E CA 9C */	b __ct__10dMsgFlow_cFv
lbl_80A5D468:
/* 80A5D468  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80A5D46C  60 00 00 08 */	ori r0, r0, 8
/* 80A5D470  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80A5D474:
/* 80A5D474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5D478  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A5D47C  38 7F 4E 20 */	addi r3, r31, 0x4e20
/* 80A5D480  81 9F 4E 20 */	lwz r12, 0x4e20(r31)
/* 80A5D484  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80A5D488  7D 89 03 A6 */	mtctr r12
/* 80A5D48C  4E 80 04 21 */	bctrl 
/* 80A5D490  4B 74 F0 EC */	b dKy_darkworld_check__Fv
/* 80A5D494  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A5D498  41 82 00 14 */	beq lbl_80A5D4AC
/* 80A5D49C  3C 60 80 A6 */	lis r3, stringBase0@ha
/* 80A5D4A0  38 03 E4 38 */	addi r0, r3, stringBase0@l
/* 80A5D4A4  90 1C 05 C0 */	stw r0, 0x5c0(r28)
/* 80A5D4A8  48 00 00 14 */	b lbl_80A5D4BC
lbl_80A5D4AC:
/* 80A5D4AC  3C 60 80 A6 */	lis r3, stringBase0@ha
/* 80A5D4B0  38 63 E4 38 */	addi r3, r3, stringBase0@l
/* 80A5D4B4  38 03 00 12 */	addi r0, r3, 0x12
/* 80A5D4B8  90 1C 05 C0 */	stw r0, 0x5c0(r28)
lbl_80A5D4BC:
/* 80A5D4BC  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 80A5D4C0  80 9C 05 C0 */	lwz r4, 0x5c0(r28)
/* 80A5D4C4  4B 5C F9 F8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A5D4C8  7C 7B 1B 78 */	mr r27, r3
/* 80A5D4CC  2C 1B 00 04 */	cmpwi r27, 4
/* 80A5D4D0  40 82 03 90 */	bne lbl_80A5D860
/* 80A5D4D4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80A5D4D8  98 1C 05 B4 */	stb r0, 0x5b4(r28)
/* 80A5D4DC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80A5D4E0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80A5D4E4  7C 1A 03 78 */	mr r26, r0
/* 80A5D4E8  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 80A5D4EC  28 00 00 FF */	cmplwi r0, 0xff
/* 80A5D4F0  40 82 00 0C */	bne lbl_80A5D4FC
/* 80A5D4F4  38 00 00 00 */	li r0, 0
/* 80A5D4F8  98 1C 05 B4 */	stb r0, 0x5b4(r28)
lbl_80A5D4FC:
/* 80A5D4FC  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 80A5D500  28 00 00 14 */	cmplwi r0, 0x14
/* 80A5D504  40 82 00 50 */	bne lbl_80A5D554
/* 80A5D508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5D50C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5D510  3B 23 07 F0 */	addi r25, r3, 0x7f0
/* 80A5D514  7F 23 CB 78 */	mr r3, r25
/* 80A5D518  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80A5D51C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80A5D520  A0 84 01 C2 */	lhz r4, 0x1c2(r4)
/* 80A5D524  4B 5D 74 98 */	b isEventBit__11dSv_event_cCFUs
/* 80A5D528  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D52C  41 82 00 28 */	beq lbl_80A5D554
/* 80A5D530  7F 23 CB 78 */	mr r3, r25
/* 80A5D534  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80A5D538  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80A5D53C  A0 84 01 C4 */	lhz r4, 0x1c4(r4)
/* 80A5D540  4B 5D 74 7C */	b isEventBit__11dSv_event_cCFUs
/* 80A5D544  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D548  41 82 00 0C */	beq lbl_80A5D554
/* 80A5D54C  38 60 00 05 */	li r3, 5
/* 80A5D550  48 00 03 14 */	b lbl_80A5D864
lbl_80A5D554:
/* 80A5D554  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 80A5D558  28 00 00 FF */	cmplwi r0, 0xff
/* 80A5D55C  40 82 00 08 */	bne lbl_80A5D564
/* 80A5D560  3B 40 00 00 */	li r26, 0
lbl_80A5D564:
/* 80A5D564  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80A5D568  2C 00 00 04 */	cmpwi r0, 4
/* 80A5D56C  40 82 00 28 */	bne lbl_80A5D594
/* 80A5D570  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 80A5D574  28 00 00 04 */	cmplwi r0, 4
/* 80A5D578  40 82 00 1C */	bne lbl_80A5D594
/* 80A5D57C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80A5D580  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80A5D584  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80A5D588  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80A5D58C  C0 1E 05 34 */	lfs f0, 0x534(r30)
/* 80A5D590  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_80A5D594:
/* 80A5D594  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 80A5D598  3C 80 80 A6 */	lis r4, stringBase0@ha
/* 80A5D59C  38 84 E4 38 */	addi r4, r4, stringBase0@l
/* 80A5D5A0  38 84 00 19 */	addi r4, r4, 0x19
/* 80A5D5A4  4B 90 B3 F0 */	b strcmp
/* 80A5D5A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D5AC  40 82 00 28 */	bne lbl_80A5D5D4
/* 80A5D5B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5D5B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5D5B8  38 63 09 58 */	addi r3, r3, 0x958
/* 80A5D5BC  38 80 00 03 */	li r4, 3
/* 80A5D5C0  4B 5D 73 74 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80A5D5C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D5C8  41 82 00 0C */	beq lbl_80A5D5D4
/* 80A5D5CC  38 60 00 05 */	li r3, 5
/* 80A5D5D0  48 00 02 94 */	b lbl_80A5D864
lbl_80A5D5D4:
/* 80A5D5D4  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 80A5D5D8  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80A5D5DC  98 1C 05 B6 */	stb r0, 0x5b6(r28)
/* 80A5D5E0  3C 60 80 A6 */	lis r3, s_check_sub__FPvPv@ha
/* 80A5D5E4  38 63 D2 BC */	addi r3, r3, s_check_sub__FPvPv@l
/* 80A5D5E8  7F 84 E3 78 */	mr r4, r28
/* 80A5D5EC  4B 5C 3D 4C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A5D5F0  28 03 00 00 */	cmplwi r3, 0
/* 80A5D5F4  41 82 00 0C */	beq lbl_80A5D600
/* 80A5D5F8  38 60 00 05 */	li r3, 5
/* 80A5D5FC  48 00 02 68 */	b lbl_80A5D864
lbl_80A5D600:
/* 80A5D600  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 80A5D604  28 00 00 00 */	cmplwi r0, 0
/* 80A5D608  40 82 00 08 */	bne lbl_80A5D610
/* 80A5D60C  93 9D 00 58 */	stw r28, 0x58(r29)
lbl_80A5D610:
/* 80A5D610  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80A5D614  B0 1C 0A F0 */	sth r0, 0xaf0(r28)
/* 80A5D618  38 60 00 00 */	li r3, 0
/* 80A5D61C  B0 7C 04 E4 */	sth r3, 0x4e4(r28)
/* 80A5D620  B0 7C 04 DC */	sth r3, 0x4dc(r28)
/* 80A5D624  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80A5D628  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80A5D62C  90 1C 05 BC */	stw r0, 0x5bc(r28)
/* 80A5D630  B0 7C 04 E8 */	sth r3, 0x4e8(r28)
/* 80A5D634  B0 7C 04 E0 */	sth r3, 0x4e0(r28)
/* 80A5D638  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5D63C  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 80A5D640  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80A5D644  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A5D648  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A5D64C  7F 83 E3 78 */	mr r3, r28
/* 80A5D650  3C 80 80 A6 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80A5D654  38 84 C4 50 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80A5D658  38 A0 38 A0 */	li r5, 0x38a0
/* 80A5D65C  4B 5B CE 54 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A5D660  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A5D664  40 82 00 0C */	bne lbl_80A5D670
/* 80A5D668  38 60 00 05 */	li r3, 5
/* 80A5D66C  48 00 01 F8 */	b lbl_80A5D864
lbl_80A5D670:
/* 80A5D670  88 1D 00 60 */	lbz r0, 0x60(r29)
/* 80A5D674  28 00 00 00 */	cmplwi r0, 0
/* 80A5D678  40 82 00 1C */	bne lbl_80A5D694
/* 80A5D67C  38 00 00 01 */	li r0, 1
/* 80A5D680  98 1C 0C 1C */	stb r0, 0xc1c(r28)
/* 80A5D684  98 1D 00 60 */	stb r0, 0x60(r29)
/* 80A5D688  38 00 FF FF */	li r0, -1
/* 80A5D68C  38 7D 00 70 */	addi r3, r29, 0x70
/* 80A5D690  98 03 00 04 */	stb r0, 4(r3)
lbl_80A5D694:
/* 80A5D694  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 80A5D698  80 63 00 04 */	lwz r3, 4(r3)
/* 80A5D69C  38 03 00 24 */	addi r0, r3, 0x24
/* 80A5D6A0  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80A5D6A4  7F 83 E3 78 */	mr r3, r28
/* 80A5D6A8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80A5D6AC  FC 40 08 90 */	fmr f2, f1
/* 80A5D6B0  FC 60 08 90 */	fmr f3, f1
/* 80A5D6B4  4B 5B CE 74 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80A5D6B8  7F 83 E3 78 */	mr r3, r28
/* 80A5D6BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80A5D6C0  FC 40 08 90 */	fmr f2, f1
/* 80A5D6C4  FC 60 08 90 */	fmr f3, f1
/* 80A5D6C8  4B 5B CE 70 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80A5D6CC  38 00 00 00 */	li r0, 0
/* 80A5D6D0  90 01 00 08 */	stw r0, 8(r1)
/* 80A5D6D4  38 7C 06 80 */	addi r3, r28, 0x680
/* 80A5D6D8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A5D6DC  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80A5D6E0  7F 86 E3 78 */	mr r6, r28
/* 80A5D6E4  38 E0 00 01 */	li r7, 1
/* 80A5D6E8  39 1C 06 40 */	addi r8, r28, 0x640
/* 80A5D6EC  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80A5D6F0  39 40 00 00 */	li r10, 0
/* 80A5D6F4  4B 61 8B 54 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A5D6F8  38 7C 06 40 */	addi r3, r28, 0x640
/* 80A5D6FC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80A5D700  FC 40 08 90 */	fmr f2, f1
/* 80A5D704  4B 61 88 54 */	b SetWall__12dBgS_AcchCirFff
/* 80A5D708  C0 3E 05 38 */	lfs f1, 0x538(r30)
/* 80A5D70C  4B 80 A2 48 */	b cM_rndF__Ff
/* 80A5D710  FC 00 08 1E */	fctiwz f0, f1
/* 80A5D714  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A5D718  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A5D71C  B0 1C 05 E6 */	sth r0, 0x5e6(r28)
/* 80A5D720  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 80A5D724  54 00 10 3A */	slwi r0, r0, 2
/* 80A5D728  3C 60 80 A6 */	lis r3, saru_p@ha
/* 80A5D72C  38 63 E4 78 */	addi r3, r3, saru_p@l
/* 80A5D730  7F 83 01 2E */	stwx r28, r3, r0
/* 80A5D734  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80A5D738  41 82 00 90 */	beq lbl_80A5D7C8
/* 80A5D73C  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 80A5D740  28 00 00 08 */	cmplwi r0, 8
/* 80A5D744  40 80 00 84 */	bge lbl_80A5D7C8
/* 80A5D748  A8 7C 04 B6 */	lha r3, 0x4b6(r28)
/* 80A5D74C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80A5D750  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80A5D754  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A5D758  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80A5D75C  38 00 80 00 */	li r0, -32768
/* 80A5D760  B0 1C 04 DC */	sth r0, 0x4dc(r28)
/* 80A5D764  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80A5D768  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80A5D76C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80A5D770  90 1C 06 30 */	stw r0, 0x630(r28)
/* 80A5D774  80 1C 04 A4 */	lwz r0, 0x4a4(r28)
/* 80A5D778  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A5D77C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80A5D780  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80A5D784  38 81 00 10 */	addi r4, r1, 0x10
/* 80A5D788  4B 5B C0 70 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A5D78C  90 7C 09 34 */	stw r3, 0x934(r28)
/* 80A5D790  80 7C 09 34 */	lwz r3, 0x934(r28)
/* 80A5D794  28 03 00 00 */	cmplwi r3, 0
/* 80A5D798  41 82 00 1C */	beq lbl_80A5D7B4
/* 80A5D79C  80 03 09 1C */	lwz r0, 0x91c(r3)
/* 80A5D7A0  2C 00 00 01 */	cmpwi r0, 1
/* 80A5D7A4  40 82 00 10 */	bne lbl_80A5D7B4
/* 80A5D7A8  38 00 00 0B */	li r0, 0xb
/* 80A5D7AC  B0 1C 05 E8 */	sth r0, 0x5e8(r28)
/* 80A5D7B0  48 00 00 0C */	b lbl_80A5D7BC
lbl_80A5D7B4:
/* 80A5D7B4  38 00 00 0A */	li r0, 0xa
/* 80A5D7B8  B0 1C 05 E8 */	sth r0, 0x5e8(r28)
lbl_80A5D7BC:
/* 80A5D7BC  38 00 00 1E */	li r0, 0x1e
/* 80A5D7C0  B0 1C 09 4E */	sth r0, 0x94e(r28)
/* 80A5D7C4  48 00 00 34 */	b lbl_80A5D7F8
lbl_80A5D7C8:
/* 80A5D7C8  7F 83 E3 78 */	mr r3, r28
/* 80A5D7CC  4B FF EF E5 */	bl start_check__FP12npc_ks_class
/* 80A5D7D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D7D4  40 82 00 24 */	bne lbl_80A5D7F8
/* 80A5D7D8  38 80 00 00 */	li r4, 0
/* 80A5D7DC  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 80A5D7E0  54 00 10 3A */	slwi r0, r0, 2
/* 80A5D7E4  3C 60 80 A6 */	lis r3, saru_p@ha
/* 80A5D7E8  38 63 E4 78 */	addi r3, r3, saru_p@l
/* 80A5D7EC  7C 83 01 2E */	stwx r4, r3, r0
/* 80A5D7F0  38 60 00 05 */	li r3, 5
/* 80A5D7F4  48 00 00 70 */	b lbl_80A5D864
lbl_80A5D7F8:
/* 80A5D7F8  38 7C 08 60 */	addi r3, r28, 0x860
/* 80A5D7FC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A5D800  38 BC 05 38 */	addi r5, r28, 0x538
/* 80A5D804  38 C0 00 02 */	li r6, 2
/* 80A5D808  38 E0 00 01 */	li r7, 1
/* 80A5D80C  4B 86 2D 24 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80A5D810  38 7C 09 50 */	addi r3, r28, 0x950
/* 80A5D814  38 80 00 64 */	li r4, 0x64
/* 80A5D818  38 A0 00 00 */	li r5, 0
/* 80A5D81C  7F 86 E3 78 */	mr r6, r28
/* 80A5D820  4B 62 60 40 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A5D824  38 7C 09 8C */	addi r3, r28, 0x98c
/* 80A5D828  3C 80 80 A6 */	lis r4, cc_cyl_src@ha
/* 80A5D82C  38 84 FD 30 */	addi r4, r4, cc_cyl_src@l
/* 80A5D830  4B 62 70 84 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A5D834  38 1C 09 50 */	addi r0, r28, 0x950
/* 80A5D838  90 1C 09 D0 */	stw r0, 0x9d0(r28)
/* 80A5D83C  80 1C 0A 28 */	lwz r0, 0xa28(r28)
/* 80A5D840  60 00 00 04 */	ori r0, r0, 4
/* 80A5D844  90 1C 0A 28 */	stw r0, 0xa28(r28)
/* 80A5D848  38 00 00 01 */	li r0, 1
/* 80A5D84C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80A5D850  7F 83 E3 78 */	mr r3, r28
/* 80A5D854  4B FF E0 A9 */	bl daNpc_Ks_Execute__FP12npc_ks_class
/* 80A5D858  38 00 00 00 */	li r0, 0
/* 80A5D85C  90 1D 01 1C */	stw r0, 0x11c(r29)
lbl_80A5D860:
/* 80A5D860  7F 63 DB 78 */	mr r3, r27
lbl_80A5D864:
/* 80A5D864  39 61 00 40 */	addi r11, r1, 0x40
/* 80A5D868  4B 90 49 B0 */	b _restgpr_25
/* 80A5D86C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A5D870  7C 08 03 A6 */	mtlr r0
/* 80A5D874  38 21 00 40 */	addi r1, r1, 0x40
/* 80A5D878  4E 80 00 20 */	blr 

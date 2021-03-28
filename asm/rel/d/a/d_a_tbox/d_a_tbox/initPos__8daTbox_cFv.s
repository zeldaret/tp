lbl_804919B0:
/* 804919B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804919B4  7C 08 02 A6 */	mflr r0
/* 804919B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804919BC  39 61 00 40 */	addi r11, r1, 0x40
/* 804919C0  4B ED 08 1C */	b _savegpr_29
/* 804919C4  7C 7E 1B 78 */	mr r30, r3
/* 804919C8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 804919CC  54 1F 06 BE */	clrlwi r31, r0, 0x1a
/* 804919D0  2C 1F 00 06 */	cmpwi r31, 6
/* 804919D4  40 82 00 14 */	bne lbl_804919E8
/* 804919D8  A0 1E 09 80 */	lhz r0, 0x980(r30)
/* 804919DC  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 804919E0  28 00 00 0F */	cmplwi r0, 0xf
/* 804919E4  41 82 00 0C */	beq lbl_804919F0
lbl_804919E8:
/* 804919E8  2C 1F 00 07 */	cmpwi r31, 7
/* 804919EC  40 82 00 84 */	bne lbl_80491A70
lbl_804919F0:
/* 804919F0  A0 1E 09 82 */	lhz r0, 0x982(r30)
/* 804919F4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804919F8  38 80 FF FF */	li r4, -1
/* 804919FC  4B BB FD F0 */	b dPath_GetRoomPath__Fii
/* 80491A00  7C 7D 1B 78 */	mr r29, r3
/* 80491A04  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80491A08  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80491A0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80491A10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80491A14  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80491A18  7C 05 07 74 */	extsb r5, r0
/* 80491A1C  4B BA 39 44 */	b isSwitch__10dSv_info_cCFii
/* 80491A20  2C 03 00 00 */	cmpwi r3, 0
/* 80491A24  41 82 00 BC */	beq lbl_80491AE0
/* 80491A28  80 9D 00 08 */	lwz r4, 8(r29)
/* 80491A2C  A0 7D 00 00 */	lhz r3, 0(r29)
/* 80491A30  38 03 FF FF */	addi r0, r3, -1
/* 80491A34  54 00 20 36 */	slwi r0, r0, 4
/* 80491A38  7C 64 02 14 */	add r3, r4, r0
/* 80491A3C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80491A40  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80491A44  C0 03 00 08 */	lfs f0, 8(r3)
/* 80491A48  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80491A4C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80491A50  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80491A54  C0 03 00 04 */	lfs f0, 4(r3)
/* 80491A58  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80491A5C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80491A60  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80491A64  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80491A68  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80491A6C  48 00 00 74 */	b lbl_80491AE0
lbl_80491A70:
/* 80491A70  2C 1F 00 06 */	cmpwi r31, 6
/* 80491A74  40 82 00 6C */	bne lbl_80491AE0
/* 80491A78  A0 1E 09 80 */	lhz r0, 0x980(r30)
/* 80491A7C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80491A80  40 82 00 60 */	bne lbl_80491AE0
/* 80491A84  7F C3 F3 78 */	mr r3, r30
/* 80491A88  48 00 2E C9 */	bl checkDrop__8daTbox_cFv
/* 80491A8C  2C 03 00 00 */	cmpwi r3, 0
/* 80491A90  41 82 00 50 */	beq lbl_80491AE0
/* 80491A94  7F C3 F3 78 */	mr r3, r30
/* 80491A98  38 81 00 20 */	addi r4, r1, 0x20
/* 80491A9C  38 BE 04 DE */	addi r5, r30, 0x4de
/* 80491AA0  48 00 0E 3D */	bl calcJumpGoalAndAngle__8daTbox_cFP4cXyzPs
/* 80491AA4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80491AA8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80491AAC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80491AB0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80491AB4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80491AB8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80491ABC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80491AC0  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80491AC4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80491AC8  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80491ACC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80491AD0  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80491AD4  7F C3 F3 78 */	mr r3, r30
/* 80491AD8  38 9E 04 B6 */	addi r4, r30, 0x4b6
/* 80491ADC  48 00 10 35 */	bl getDropSAngle__8daTbox_cFPs
lbl_80491AE0:
/* 80491AE0  C0 5E 04 A8 */	lfs f2, 0x4a8(r30)
/* 80491AE4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80491AE8  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80491AEC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80491AF0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80491AF4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80491AF8  D0 41 00 08 */	stfs f2, 8(r1)
/* 80491AFC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80491B00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80491B04  3C 60 80 49 */	lis r3, lit_4222@ha
/* 80491B08  C0 03 62 54 */	lfs f0, lit_4222@l(r3)
/* 80491B0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80491B10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80491B14  3C 60 80 49 */	lis r3, lit_4223@ha
/* 80491B18  C0 03 62 58 */	lfs f0, lit_4223@l(r3)
/* 80491B1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80491B20  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80491B24  38 61 00 14 */	addi r3, r1, 0x14
/* 80491B28  38 81 00 08 */	addi r4, r1, 8
/* 80491B2C  7F C5 F3 78 */	mr r5, r30
/* 80491B30  4B B8 C1 38 */	b lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80491B34  7C 7D 1B 78 */	mr r29, r3
/* 80491B38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80491B3C  41 82 00 28 */	beq lbl_80491B64
/* 80491B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80491B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80491B48  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80491B4C  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha
/* 80491B50  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l
/* 80491B54  38 84 00 14 */	addi r4, r4, 0x14
/* 80491B58  4B BE 2F 64 */	b ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 80491B5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80491B60  40 82 00 14 */	bne lbl_80491B74
lbl_80491B64:
/* 80491B64  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80491B68  40 82 00 20 */	bne lbl_80491B88
/* 80491B6C  2C 1F 00 03 */	cmpwi r31, 3
/* 80491B70  41 82 00 18 */	beq lbl_80491B88
lbl_80491B74:
/* 80491B74  38 00 00 01 */	li r0, 1
/* 80491B78  98 1E 09 CC */	stb r0, 0x9cc(r30)
/* 80491B7C  38 00 00 00 */	li r0, 0
/* 80491B80  98 1E 09 CD */	stb r0, 0x9cd(r30)
/* 80491B84  48 00 00 14 */	b lbl_80491B98
lbl_80491B88:
/* 80491B88  38 00 00 00 */	li r0, 0
/* 80491B8C  98 1E 09 CC */	stb r0, 0x9cc(r30)
/* 80491B90  38 00 00 01 */	li r0, 1
/* 80491B94  98 1E 09 CD */	stb r0, 0x9cd(r30)
lbl_80491B98:
/* 80491B98  39 61 00 40 */	addi r11, r1, 0x40
/* 80491B9C  4B ED 06 8C */	b _restgpr_29
/* 80491BA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80491BA4  7C 08 03 A6 */	mtlr r0
/* 80491BA8  38 21 00 40 */	addi r1, r1, 0x40
/* 80491BAC  4E 80 00 20 */	blr 

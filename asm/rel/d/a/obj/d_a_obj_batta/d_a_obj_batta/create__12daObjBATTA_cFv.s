lbl_80BAC194:
/* 80BAC194  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BAC198  7C 08 02 A6 */	mflr r0
/* 80BAC19C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BAC1A0  39 61 00 50 */	addi r11, r1, 0x50
/* 80BAC1A4  4B 7B 60 2D */	bl _savegpr_26
/* 80BAC1A8  7C 7B 1B 78 */	mr r27, r3
/* 80BAC1AC  3C 80 80 BB */	lis r4, cNullVec__6Z2Calc@ha /* 0x80BACA70@ha */
/* 80BAC1B0  3B C4 CA 70 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80BACA70@l */
/* 80BAC1B4  3C 80 80 BB */	lis r4, lit_3774@ha /* 0x80BAC970@ha */
/* 80BAC1B8  3B E4 C9 70 */	addi r31, r4, lit_3774@l /* 0x80BAC970@l */
/* 80BAC1BC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BAC1C0  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80BAC1C4  7C 1D 03 78 */	mr r29, r0
/* 80BAC1C8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BAC1CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BAC1D0  40 82 00 F4 */	bne lbl_80BAC2C4
/* 80BAC1D4  7F 60 DB 79 */	or. r0, r27, r27
/* 80BAC1D8  41 82 00 E0 */	beq lbl_80BAC2B8
/* 80BAC1DC  7C 1C 03 78 */	mr r28, r0
/* 80BAC1E0  4B 5B 1E 31 */	bl __ct__9dInsect_cFv
/* 80BAC1E4  3C 60 80 BB */	lis r3, __vt__12daObjBATTA_c@ha /* 0x80BACC58@ha */
/* 80BAC1E8  38 03 CC 58 */	addi r0, r3, __vt__12daObjBATTA_c@l /* 0x80BACC58@l */
/* 80BAC1EC  90 1C 05 68 */	stw r0, 0x568(r28)
/* 80BAC1F0  38 7C 05 90 */	addi r3, r28, 0x590
/* 80BAC1F4  4B 71 41 D5 */	bl __ct__10Z2CreatureFv
/* 80BAC1F8  38 7C 06 2C */	addi r3, r28, 0x62c
/* 80BAC1FC  4B 4C 9C B1 */	bl __ct__12dBgS_AcchCirFv
/* 80BAC200  3B 5C 06 6C */	addi r26, r28, 0x66c
/* 80BAC204  7F 43 D3 78 */	mr r3, r26
/* 80BAC208  4B 4C 9E 99 */	bl __ct__9dBgS_AcchFv
/* 80BAC20C  3C 60 80 BB */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BACC34@ha */
/* 80BAC210  38 63 CC 34 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BACC34@l */
/* 80BAC214  90 7A 00 10 */	stw r3, 0x10(r26)
/* 80BAC218  38 03 00 0C */	addi r0, r3, 0xc
/* 80BAC21C  90 1A 00 14 */	stw r0, 0x14(r26)
/* 80BAC220  38 03 00 18 */	addi r0, r3, 0x18
/* 80BAC224  90 1A 00 24 */	stw r0, 0x24(r26)
/* 80BAC228  38 7A 00 14 */	addi r3, r26, 0x14
/* 80BAC22C  4B 4C CC 3D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BAC230  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BAC234  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BAC238  90 1C 08 5C */	stw r0, 0x85c(r28)
/* 80BAC23C  38 7C 08 60 */	addi r3, r28, 0x860
/* 80BAC240  4B 4D 75 21 */	bl __ct__10dCcD_GSttsFv
/* 80BAC244  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BAC248  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BAC24C  90 7C 08 5C */	stw r3, 0x85c(r28)
/* 80BAC250  38 03 00 20 */	addi r0, r3, 0x20
/* 80BAC254  90 1C 08 60 */	stw r0, 0x860(r28)
/* 80BAC258  3B 9C 08 80 */	addi r28, r28, 0x880
/* 80BAC25C  7F 83 E3 78 */	mr r3, r28
/* 80BAC260  4B 4D 77 C9 */	bl __ct__12dCcD_GObjInfFv
/* 80BAC264  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BAC268  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BAC26C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BAC270  3C 60 80 BB */	lis r3, __vt__8cM3dGAab@ha /* 0x80BACC28@ha */
/* 80BAC274  38 03 CC 28 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BACC28@l */
/* 80BAC278  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80BAC27C  3C 60 80 BB */	lis r3, __vt__8cM3dGSph@ha /* 0x80BACC1C@ha */
/* 80BAC280  38 03 CC 1C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BACC1C@l */
/* 80BAC284  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BAC288  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BAC28C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BAC290  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80BAC294  38 03 00 58 */	addi r0, r3, 0x58
/* 80BAC298  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BAC29C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BAC2A0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BAC2A4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80BAC2A8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BAC2AC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BAC2B0  38 03 00 84 */	addi r0, r3, 0x84
/* 80BAC2B4  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80BAC2B8:
/* 80BAC2B8  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 80BAC2BC  60 00 00 08 */	ori r0, r0, 8
/* 80BAC2C0  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_80BAC2C4:
/* 80BAC2C4  38 7B 09 C4 */	addi r3, r27, 0x9c4
/* 80BAC2C8  3C 80 80 BB */	lis r4, d_a_obj_batta__stringBase0@ha /* 0x80BACA64@ha */
/* 80BAC2CC  38 84 CA 64 */	addi r4, r4, d_a_obj_batta__stringBase0@l /* 0x80BACA64@l */
/* 80BAC2D0  4B 48 0B ED */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BAC2D4  7C 7C 1B 78 */	mr r28, r3
/* 80BAC2D8  2C 1C 00 04 */	cmpwi r28, 4
/* 80BAC2DC  40 82 03 A8 */	bne lbl_80BAC684
/* 80BAC2E0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80BAC2E4  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80BAC2E8  98 1B 09 F0 */	stb r0, 0x9f0(r27)
/* 80BAC2EC  88 1B 09 F0 */	lbz r0, 0x9f0(r27)
/* 80BAC2F0  28 00 00 03 */	cmplwi r0, 3
/* 80BAC2F4  40 82 00 0C */	bne lbl_80BAC300
/* 80BAC2F8  38 00 00 00 */	li r0, 0
/* 80BAC2FC  98 1B 09 F0 */	stb r0, 0x9f0(r27)
lbl_80BAC300:
/* 80BAC300  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80BAC304  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80BAC308  98 1B 09 F3 */	stb r0, 0x9f3(r27)
/* 80BAC30C  88 1B 09 F3 */	lbz r0, 0x9f3(r27)
/* 80BAC310  28 00 00 00 */	cmplwi r0, 0
/* 80BAC314  41 82 00 20 */	beq lbl_80BAC334
/* 80BAC318  3C 60 80 BB */	lis r3, l_HIO@ha /* 0x80BACC98@ha */
/* 80BAC31C  38 63 CC 98 */	addi r3, r3, l_HIO@l /* 0x80BACC98@l */
/* 80BAC320  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BAC324  D0 1B 04 EC */	stfs f0, 0x4ec(r27)
/* 80BAC328  D0 1B 04 F0 */	stfs f0, 0x4f0(r27)
/* 80BAC32C  D0 1B 04 F4 */	stfs f0, 0x4f4(r27)
/* 80BAC330  48 00 00 1C */	b lbl_80BAC34C
lbl_80BAC334:
/* 80BAC334  3C 60 80 BB */	lis r3, l_HIO@ha /* 0x80BACC98@ha */
/* 80BAC338  38 63 CC 98 */	addi r3, r3, l_HIO@l /* 0x80BACC98@l */
/* 80BAC33C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BAC340  D0 1B 04 EC */	stfs f0, 0x4ec(r27)
/* 80BAC344  D0 1B 04 F0 */	stfs f0, 0x4f0(r27)
/* 80BAC348  D0 1B 04 F4 */	stfs f0, 0x4f4(r27)
lbl_80BAC34C:
/* 80BAC34C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80BAC350  28 00 00 0F */	cmplwi r0, 0xf
/* 80BAC354  40 82 00 08 */	bne lbl_80BAC35C
/* 80BAC358  3B A0 00 00 */	li r29, 0
lbl_80BAC35C:
/* 80BAC35C  88 1B 09 F3 */	lbz r0, 0x9f3(r27)
/* 80BAC360  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 80BAC364  7C 03 00 AE */	lbzx r0, r3, r0
/* 80BAC368  98 1B 05 80 */	stb r0, 0x580(r27)
/* 80BAC36C  88 1B 09 F3 */	lbz r0, 0x9f3(r27)
/* 80BAC370  54 00 08 3C */	slwi r0, r0, 1
/* 80BAC374  38 7F 00 EC */	addi r3, r31, 0xec
/* 80BAC378  7C 03 02 2E */	lhzx r0, r3, r0
/* 80BAC37C  B0 1B 05 82 */	sth r0, 0x582(r27)
/* 80BAC380  88 1B 09 F0 */	lbz r0, 0x9f0(r27)
/* 80BAC384  28 00 00 02 */	cmplwi r0, 2
/* 80BAC388  41 82 01 38 */	beq lbl_80BAC4C0
/* 80BAC38C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80BAC390  41 82 00 64 */	beq lbl_80BAC3F4
/* 80BAC394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAC398  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAC39C  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80BAC3A0  7F A3 EB 78 */	mr r3, r29
/* 80BAC3A4  A0 1F 00 EC */	lhz r0, 0xec(r31)
/* 80BAC3A8  54 00 08 3C */	slwi r0, r0, 1
/* 80BAC3AC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BAC3B0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BAC3B4  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BAC3B8  4B 48 86 05 */	bl isEventBit__11dSv_event_cCFUs
/* 80BAC3BC  2C 03 00 00 */	cmpwi r3, 0
/* 80BAC3C0  41 82 00 2C */	beq lbl_80BAC3EC
/* 80BAC3C4  7F A3 EB 78 */	mr r3, r29
/* 80BAC3C8  38 9F 00 EC */	addi r4, r31, 0xec
/* 80BAC3CC  A0 04 00 02 */	lhz r0, 2(r4)
/* 80BAC3D0  54 00 08 3C */	slwi r0, r0, 1
/* 80BAC3D4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BAC3D8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BAC3DC  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BAC3E0  4B 48 85 DD */	bl isEventBit__11dSv_event_cCFUs
/* 80BAC3E4  2C 03 00 00 */	cmpwi r3, 0
/* 80BAC3E8  40 82 00 D8 */	bne lbl_80BAC4C0
lbl_80BAC3EC:
/* 80BAC3EC  38 60 00 05 */	li r3, 5
/* 80BAC3F0  48 00 02 98 */	b lbl_80BAC688
lbl_80BAC3F4:
/* 80BAC3F4  3C 60 80 BB */	lis r3, d_a_obj_batta__stringBase0@ha /* 0x80BACA64@ha */
/* 80BAC3F8  38 63 CA 64 */	addi r3, r3, d_a_obj_batta__stringBase0@l /* 0x80BACA64@l */
/* 80BAC3FC  38 63 00 04 */	addi r3, r3, 4
/* 80BAC400  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAC404  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAC408  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80BAC40C  4B 7B C5 89 */	bl strcmp
/* 80BAC410  2C 03 00 00 */	cmpwi r3, 0
/* 80BAC414  40 82 00 AC */	bne lbl_80BAC4C0
/* 80BAC418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAC41C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAC420  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80BAC424  2C 00 00 03 */	cmpwi r0, 3
/* 80BAC428  40 82 00 98 */	bne lbl_80BAC4C0
/* 80BAC42C  88 7B 05 80 */	lbz r3, 0x580(r27)
/* 80BAC430  4B 62 DB 0D */	bl isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80BAC434  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BAC438  41 82 00 0C */	beq lbl_80BAC444
/* 80BAC43C  38 60 00 05 */	li r3, 5
/* 80BAC440  48 00 02 48 */	b lbl_80BAC688
lbl_80BAC444:
/* 80BAC444  88 1B 09 F3 */	lbz r0, 0x9f3(r27)
/* 80BAC448  28 00 00 00 */	cmplwi r0, 0
/* 80BAC44C  40 82 00 30 */	bne lbl_80BAC47C
/* 80BAC450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAC454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAC458  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BAC45C  A0 1F 00 EC */	lhz r0, 0xec(r31)
/* 80BAC460  54 00 08 3C */	slwi r0, r0, 1
/* 80BAC464  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BAC468  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BAC46C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BAC470  4B 48 85 4D */	bl isEventBit__11dSv_event_cCFUs
/* 80BAC474  2C 03 00 00 */	cmpwi r3, 0
/* 80BAC478  41 82 00 40 */	beq lbl_80BAC4B8
lbl_80BAC47C:
/* 80BAC47C  88 1B 09 F3 */	lbz r0, 0x9f3(r27)
/* 80BAC480  28 00 00 00 */	cmplwi r0, 0
/* 80BAC484  41 82 00 3C */	beq lbl_80BAC4C0
/* 80BAC488  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAC48C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAC490  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BAC494  38 9F 00 EC */	addi r4, r31, 0xec
/* 80BAC498  A0 04 00 02 */	lhz r0, 2(r4)
/* 80BAC49C  54 00 08 3C */	slwi r0, r0, 1
/* 80BAC4A0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BAC4A4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BAC4A8  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BAC4AC  4B 48 85 11 */	bl isEventBit__11dSv_event_cCFUs
/* 80BAC4B0  2C 03 00 00 */	cmpwi r3, 0
/* 80BAC4B4  40 82 00 0C */	bne lbl_80BAC4C0
lbl_80BAC4B8:
/* 80BAC4B8  38 60 00 05 */	li r3, 5
/* 80BAC4BC  48 00 01 CC */	b lbl_80BAC688
lbl_80BAC4C0:
/* 80BAC4C0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BAC4C4  D0 1B 09 CC */	stfs f0, 0x9cc(r27)
/* 80BAC4C8  7F 63 DB 78 */	mr r3, r27
/* 80BAC4CC  3C 80 80 BB */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80BA9F00@ha */
/* 80BAC4D0  38 84 9F 00 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80BA9F00@l */
/* 80BAC4D4  38 A0 0B 00 */	li r5, 0xb00
/* 80BAC4D8  4B 46 DF D9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BAC4DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BAC4E0  40 82 00 0C */	bne lbl_80BAC4EC
/* 80BAC4E4  38 60 00 05 */	li r3, 5
/* 80BAC4E8  48 00 01 A0 */	b lbl_80BAC688
lbl_80BAC4EC:
/* 80BAC4EC  3C 60 80 BB */	lis r3, data_80BACC88@ha /* 0x80BACC88@ha */
/* 80BAC4F0  8C 03 CC 88 */	lbzu r0, data_80BACC88@l(r3)  /* 0x80BACC88@l */
/* 80BAC4F4  28 00 00 00 */	cmplwi r0, 0
/* 80BAC4F8  40 82 00 20 */	bne lbl_80BAC518
/* 80BAC4FC  38 00 00 01 */	li r0, 1
/* 80BAC500  98 03 00 00 */	stb r0, 0(r3)
/* 80BAC504  98 1B 09 F4 */	stb r0, 0x9f4(r27)
/* 80BAC508  38 00 FF FF */	li r0, -1
/* 80BAC50C  3C 60 80 BB */	lis r3, l_HIO@ha /* 0x80BACC98@ha */
/* 80BAC510  38 63 CC 98 */	addi r3, r3, l_HIO@l /* 0x80BACC98@l */
/* 80BAC514  98 03 00 04 */	stb r0, 4(r3)
lbl_80BAC518:
/* 80BAC518  80 7B 06 20 */	lwz r3, 0x620(r27)
/* 80BAC51C  80 63 00 04 */	lwz r3, 4(r3)
/* 80BAC520  38 03 00 24 */	addi r0, r3, 0x24
/* 80BAC524  90 1B 05 04 */	stw r0, 0x504(r27)
/* 80BAC528  7F 63 DB 78 */	mr r3, r27
/* 80BAC52C  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80BAC530  FC 40 08 90 */	fmr f2, f1
/* 80BAC534  FC 60 08 90 */	fmr f3, f1
/* 80BAC538  4B 46 DF F1 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80BAC53C  7F 63 DB 78 */	mr r3, r27
/* 80BAC540  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80BAC544  FC 40 08 90 */	fmr f2, f1
/* 80BAC548  FC 60 08 90 */	fmr f3, f1
/* 80BAC54C  4B 46 DF ED */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80BAC550  38 00 00 00 */	li r0, 0
/* 80BAC554  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 80BAC558  38 00 00 0A */	li r0, 0xa
/* 80BAC55C  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 80BAC560  B0 1B 05 60 */	sth r0, 0x560(r27)
/* 80BAC564  38 7B 05 90 */	addi r3, r27, 0x590
/* 80BAC568  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80BAC56C  38 BB 05 38 */	addi r5, r27, 0x538
/* 80BAC570  38 C0 00 03 */	li r6, 3
/* 80BAC574  38 E0 00 01 */	li r7, 1
/* 80BAC578  4B 71 3F B9 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80BAC57C  88 1B 09 F0 */	lbz r0, 0x9f0(r27)
/* 80BAC580  28 00 00 00 */	cmplwi r0, 0
/* 80BAC584  40 82 00 34 */	bne lbl_80BAC5B8
/* 80BAC588  38 00 00 5D */	li r0, 0x5d
/* 80BAC58C  98 1B 05 48 */	stb r0, 0x548(r27)
/* 80BAC590  38 7B 08 44 */	addi r3, r27, 0x844
/* 80BAC594  38 80 00 64 */	li r4, 0x64
/* 80BAC598  38 A0 00 00 */	li r5, 0
/* 80BAC59C  7F 66 DB 78 */	mr r6, r27
/* 80BAC5A0  4B 4D 72 C1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BAC5A4  38 7B 08 80 */	addi r3, r27, 0x880
/* 80BAC5A8  38 9E 00 20 */	addi r4, r30, 0x20
/* 80BAC5AC  4B 4D 84 89 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BAC5B0  38 1B 08 44 */	addi r0, r27, 0x844
/* 80BAC5B4  90 1B 08 C4 */	stw r0, 0x8c4(r27)
lbl_80BAC5B8:
/* 80BAC5B8  88 1B 09 F0 */	lbz r0, 0x9f0(r27)
/* 80BAC5BC  28 00 00 02 */	cmplwi r0, 2
/* 80BAC5C0  40 82 00 2C */	bne lbl_80BAC5EC
/* 80BAC5C4  80 7E 01 14 */	lwz r3, 0x114(r30)
/* 80BAC5C8  80 1E 01 18 */	lwz r0, 0x118(r30)
/* 80BAC5CC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80BAC5D0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BAC5D4  80 1E 01 1C */	lwz r0, 0x11c(r30)
/* 80BAC5D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BAC5DC  7F 63 DB 78 */	mr r3, r27
/* 80BAC5E0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BAC5E4  4B FF D8 79 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
/* 80BAC5E8  48 00 00 94 */	b lbl_80BAC67C
lbl_80BAC5EC:
/* 80BAC5EC  38 00 00 00 */	li r0, 0
/* 80BAC5F0  90 01 00 08 */	stw r0, 8(r1)
/* 80BAC5F4  38 7B 06 6C */	addi r3, r27, 0x66c
/* 80BAC5F8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80BAC5FC  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 80BAC600  7F 66 DB 78 */	mr r6, r27
/* 80BAC604  38 E0 00 01 */	li r7, 1
/* 80BAC608  39 1B 06 2C */	addi r8, r27, 0x62c
/* 80BAC60C  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 80BAC610  39 40 00 00 */	li r10, 0
/* 80BAC614  4B 4C 9C 35 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BAC618  38 7B 06 80 */	addi r3, r27, 0x680
/* 80BAC61C  4B 4C C8 4D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BAC620  38 7B 06 2C */	addi r3, r27, 0x62c
/* 80BAC624  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80BAC628  FC 40 08 90 */	fmr f2, f1
/* 80BAC62C  4B 4C 99 2D */	bl SetWall__12dBgS_AcchCirFff
/* 80BAC630  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BAC634  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80BAC638  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80BAC63C  D0 1B 05 34 */	stfs f0, 0x534(r27)
/* 80BAC640  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80BAC644  4B 6B B3 49 */	bl cM_rndFX__Ff
/* 80BAC648  FC 00 08 1E */	fctiwz f0, f1
/* 80BAC64C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BAC650  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BAC654  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80BAC658  80 7E 01 20 */	lwz r3, 0x120(r30)
/* 80BAC65C  80 1E 01 24 */	lwz r0, 0x124(r30)
/* 80BAC660  90 61 00 10 */	stw r3, 0x10(r1)
/* 80BAC664  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAC668  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 80BAC66C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BAC670  7F 63 DB 78 */	mr r3, r27
/* 80BAC674  38 81 00 10 */	addi r4, r1, 0x10
/* 80BAC678  4B FF D7 E5 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
lbl_80BAC67C:
/* 80BAC67C  7F 63 DB 78 */	mr r3, r27
/* 80BAC680  4B FF FA F5 */	bl daObjBATTA_Execute__FP12daObjBATTA_c
lbl_80BAC684:
/* 80BAC684  7F 83 E3 78 */	mr r3, r28
lbl_80BAC688:
/* 80BAC688  39 61 00 50 */	addi r11, r1, 0x50
/* 80BAC68C  4B 7B 5B 91 */	bl _restgpr_26
/* 80BAC690  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BAC694  7C 08 03 A6 */	mtlr r0
/* 80BAC698  38 21 00 50 */	addi r1, r1, 0x50
/* 80BAC69C  4E 80 00 20 */	blr 

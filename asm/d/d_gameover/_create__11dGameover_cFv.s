lbl_8019B044:
/* 8019B044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019B048  7C 08 02 A6 */	mflr r0
/* 8019B04C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019B050  39 61 00 20 */	addi r11, r1, 0x20
/* 8019B054  48 1C 71 85 */	bl _savegpr_28
/* 8019B058  7C 7D 1B 78 */	mr r29, r3
/* 8019B05C  38 7D 01 08 */	addi r3, r29, 0x108
/* 8019B060  3C 80 80 39 */	lis r4, d_d_gameover__stringBase0@ha
/* 8019B064  38 84 4C 28 */	addi r4, r4, d_d_gameover__stringBase0@l
/* 8019B068  4B E9 1E 55 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8019B06C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8019B070  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8019B074  88 04 5E B5 */	lbz r0, 0x5eb5(r4)
/* 8019B078  28 00 00 00 */	cmplwi r0, 0
/* 8019B07C  40 82 00 2C */	bne lbl_8019B0A8
/* 8019B080  88 04 5E 8F */	lbz r0, 0x5e8f(r4)
/* 8019B084  28 00 00 00 */	cmplwi r0, 0
/* 8019B088  41 82 00 0C */	beq lbl_8019B094
/* 8019B08C  28 00 00 06 */	cmplwi r0, 6
/* 8019B090  40 82 00 18 */	bne lbl_8019B0A8
lbl_8019B094:
/* 8019B094  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8019B098  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8019B09C  88 04 5E 1A */	lbz r0, 0x5e1a(r4)
/* 8019B0A0  28 00 00 00 */	cmplwi r0, 0
/* 8019B0A4  41 82 00 0C */	beq lbl_8019B0B0
lbl_8019B0A8:
/* 8019B0A8  38 60 00 00 */	li r3, 0
/* 8019B0AC  48 00 02 30 */	b lbl_8019B2DC
lbl_8019B0B0:
/* 8019B0B0  2C 03 00 04 */	cmpwi r3, 4
/* 8019B0B4  40 82 02 28 */	bne lbl_8019B2DC
/* 8019B0B8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8019B0BC  3B E3 01 88 */	addi r31, r3, g_meter2_info@l
/* 8019B0C0  88 1F 00 C2 */	lbz r0, 0xc2(r31)
/* 8019B0C4  28 00 00 00 */	cmplwi r0, 0
/* 8019B0C8  40 82 00 48 */	bne lbl_8019B110
/* 8019B0CC  80 0D 80 84 */	lwz r0, g_blackColor(r13)
/* 8019B0D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019B0D4  90 01 00 08 */	stw r0, 8(r1)
/* 8019B0D8  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 8019B0DC  88 01 00 08 */	lbz r0, 8(r1)
/* 8019B0E0  98 03 00 0C */	stb r0, 0xc(r3)
/* 8019B0E4  88 01 00 09 */	lbz r0, 9(r1)
/* 8019B0E8  98 03 00 0D */	stb r0, 0xd(r3)
/* 8019B0EC  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8019B0F0  98 03 00 0E */	stb r0, 0xe(r3)
/* 8019B0F4  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8019B0F8  98 03 00 0F */	stb r0, 0xf(r3)
/* 8019B0FC  A0 64 01 B2 */	lhz r3, 0x1b2(r4)
/* 8019B100  28 03 FF FF */	cmplwi r3, 0xffff
/* 8019B104  40 80 00 0C */	bge lbl_8019B110
/* 8019B108  38 03 00 01 */	addi r0, r3, 1
/* 8019B10C  B0 04 01 B2 */	sth r0, 0x1b2(r4)
lbl_8019B110:
/* 8019B110  3C 60 80 39 */	lis r3, d_d_gameover__stringBase0@ha
/* 8019B114  38 63 4C 28 */	addi r3, r3, d_d_gameover__stringBase0@l
/* 8019B118  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8019B11C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8019B120  3C 84 00 02 */	addis r4, r4, 2
/* 8019B124  38 A0 00 80 */	li r5, 0x80
/* 8019B128  38 84 C2 F8 */	addi r4, r4, -15624
/* 8019B12C  4B EA 10 B9 */	bl getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 8019B130  7C 7C 1B 78 */	mr r28, r3
/* 8019B134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019B138  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019B13C  80 03 5E BC */	lwz r0, 0x5ebc(r3)
/* 8019B140  90 1D 01 10 */	stw r0, 0x110(r29)
/* 8019B144  38 60 00 06 */	li r3, 6
/* 8019B148  4B E9 2F 99 */	bl dComIfGp_setHeapLockFlag__FUc
/* 8019B14C  80 7D 01 10 */	lwz r3, 0x110(r29)
/* 8019B150  4B E7 40 7D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8019B154  7C 7E 1B 78 */	mr r30, r3
/* 8019B158  80 7D 01 10 */	lwz r3, 0x110(r29)
/* 8019B15C  48 13 36 29 */	bl getTotalFreeSize__7JKRHeapFv
/* 8019B160  38 60 00 18 */	li r3, 0x18
/* 8019B164  48 13 3A E9 */	bl __nw__FUl
/* 8019B168  7C 60 1B 79 */	or. r0, r3, r3
/* 8019B16C  41 82 00 10 */	beq lbl_8019B17C
/* 8019B170  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 8019B174  48 00 07 CD */	bl __ct__24dDlst_GameOverScrnDraw_cFP10JKRArchive
/* 8019B178  7C 60 1B 78 */	mr r0, r3
lbl_8019B17C:
/* 8019B17C  90 1D 01 00 */	stw r0, 0x100(r29)
/* 8019B180  38 60 21 A4 */	li r3, 0x21a4
/* 8019B184  48 13 3A C9 */	bl __nw__FUl
/* 8019B188  7C 60 1B 79 */	or. r0, r3, r3
/* 8019B18C  41 82 00 0C */	beq lbl_8019B198
/* 8019B190  48 05 45 11 */	bl __ct__12dMenu_save_cFv
/* 8019B194  7C 60 1B 78 */	mr r0, r3
lbl_8019B198:
/* 8019B198  90 1D 00 FC */	stw r0, 0xfc(r29)
/* 8019B19C  88 1F 00 C2 */	lbz r0, 0xc2(r31)
/* 8019B1A0  28 00 00 01 */	cmplwi r0, 1
/* 8019B1A4  40 82 00 60 */	bne lbl_8019B204
/* 8019B1A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019B1AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019B1B0  38 63 5F 5C */	addi r3, r3, 0x5f5c
/* 8019B1B4  3C 80 80 39 */	lis r4, d_d_gameover__stringBase0@ha
/* 8019B1B8  38 84 4C 28 */	addi r4, r4, d_d_gameover__stringBase0@l
/* 8019B1BC  38 84 00 06 */	addi r4, r4, 6
/* 8019B1C0  48 1C D7 D5 */	bl strcmp
/* 8019B1C4  2C 03 00 00 */	cmpwi r3, 0
/* 8019B1C8  40 82 00 2C */	bne lbl_8019B1F4
/* 8019B1CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019B1D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019B1D4  38 63 00 9C */	addi r3, r3, 0x9c
/* 8019B1D8  38 80 00 12 */	li r4, 0x12
/* 8019B1DC  38 A0 00 FF */	li r5, 0xff
/* 8019B1E0  4B E9 7D D9 */	bl setItem__17dSv_player_item_cFiUc
/* 8019B1E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019B1E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019B1EC  38 00 FF FF */	li r0, -1
/* 8019B1F0  98 03 00 98 */	stb r0, 0x98(r3)
lbl_8019B1F4:
/* 8019B1F4  38 00 00 03 */	li r0, 3
/* 8019B1F8  80 7D 00 FC */	lwz r3, 0xfc(r29)
/* 8019B1FC  98 03 01 BC */	stb r0, 0x1bc(r3)
/* 8019B200  48 00 00 28 */	b lbl_8019B228
lbl_8019B204:
/* 8019B204  28 00 00 02 */	cmplwi r0, 2
/* 8019B208  40 82 00 14 */	bne lbl_8019B21C
/* 8019B20C  38 00 00 04 */	li r0, 4
/* 8019B210  80 7D 00 FC */	lwz r3, 0xfc(r29)
/* 8019B214  98 03 01 BC */	stb r0, 0x1bc(r3)
/* 8019B218  48 00 00 10 */	b lbl_8019B228
lbl_8019B21C:
/* 8019B21C  38 00 00 02 */	li r0, 2
/* 8019B220  80 7D 00 FC */	lwz r3, 0xfc(r29)
/* 8019B224  98 03 01 BC */	stb r0, 0x1bc(r3)
lbl_8019B228:
/* 8019B228  80 7D 00 FC */	lwz r3, 0xfc(r29)
/* 8019B22C  48 05 45 81 */	bl _create__12dMenu_save_cFv
/* 8019B230  38 60 00 04 */	li r3, 4
/* 8019B234  48 13 3A 19 */	bl __nw__FUl
/* 8019B238  28 03 00 00 */	cmplwi r3, 0
/* 8019B23C  41 82 00 1C */	beq lbl_8019B258
/* 8019B240  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha
/* 8019B244  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l
/* 8019B248  90 03 00 00 */	stw r0, 0(r3)
/* 8019B24C  3C 80 80 3C */	lis r4, __vt__24dDlst_Gameover_CAPTURE_c@ha
/* 8019B250  38 04 BD A8 */	addi r0, r4, __vt__24dDlst_Gameover_CAPTURE_c@l
/* 8019B254  90 03 00 00 */	stw r0, 0(r3)
lbl_8019B258:
/* 8019B258  90 7D 01 04 */	stw r3, 0x104(r29)
/* 8019B25C  7F C3 F3 78 */	mr r3, r30
/* 8019B260  4B E7 3F 6D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8019B264  48 00 00 08 */	b lbl_8019B26C
/* 8019B268  48 00 00 74 */	b lbl_8019B2DC
lbl_8019B26C:
/* 8019B26C  38 6D 8B 30 */	la r3, g_menuHIO(r13) /* 804510B0-_SDA_BASE_ */
/* 8019B270  A8 03 00 06 */	lha r0, 6(r3)
/* 8019B274  B0 1D 01 16 */	sth r0, 0x116(r29)
/* 8019B278  88 1F 00 C2 */	lbz r0, 0xc2(r31)
/* 8019B27C  28 00 00 01 */	cmplwi r0, 1
/* 8019B280  41 82 00 0C */	beq lbl_8019B28C
/* 8019B284  28 00 00 02 */	cmplwi r0, 2
/* 8019B288  40 82 00 24 */	bne lbl_8019B2AC
lbl_8019B28C:
/* 8019B28C  38 00 00 01 */	li r0, 1
/* 8019B290  98 1D 01 19 */	stb r0, 0x119(r29)
/* 8019B294  38 00 00 03 */	li r0, 3
/* 8019B298  98 1D 01 18 */	stb r0, 0x118(r29)
/* 8019B29C  80 7D 01 00 */	lwz r3, 0x100(r29)
/* 8019B2A0  C0 22 A1 84 */	lfs f1, lit_3869(r2)
/* 8019B2A4  48 00 0A 0D */	bl setBackAlpha__24dDlst_GameOverScrnDraw_cFf
/* 8019B2A8  48 00 00 10 */	b lbl_8019B2B8
lbl_8019B2AC:
/* 8019B2AC  38 00 00 00 */	li r0, 0
/* 8019B2B0  98 1D 01 19 */	stb r0, 0x119(r29)
/* 8019B2B4  98 1D 01 18 */	stb r0, 0x118(r29)
lbl_8019B2B8:
/* 8019B2B8  7F A3 EB 78 */	mr r3, r29
/* 8019B2BC  88 1D 01 18 */	lbz r0, 0x118(r29)
/* 8019B2C0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8019B2C4  3C 80 80 3C */	lis r4, init_process@ha
/* 8019B2C8  38 04 BB C8 */	addi r0, r4, init_process@l
/* 8019B2CC  7D 80 2A 14 */	add r12, r0, r5
/* 8019B2D0  48 1C 6D B5 */	bl __ptmf_scall
/* 8019B2D4  60 00 00 00 */	nop 
/* 8019B2D8  38 60 00 04 */	li r3, 4
lbl_8019B2DC:
/* 8019B2DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8019B2E0  48 1C 6F 45 */	bl _restgpr_28
/* 8019B2E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019B2E8  7C 08 03 A6 */	mtlr r0
/* 8019B2EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8019B2F0  4E 80 00 20 */	blr 

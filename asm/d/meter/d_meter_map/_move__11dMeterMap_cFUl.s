lbl_8020DCE4:
/* 8020DCE4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8020DCE8  7C 08 02 A6 */	mflr r0
/* 8020DCEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8020DCF0  39 61 00 40 */	addi r11, r1, 0x40
/* 8020DCF4  48 15 44 E5 */	bl _savegpr_28
/* 8020DCF8  7C 7E 1B 78 */	mr r30, r3
/* 8020DCFC  7C 9F 23 78 */	mr r31, r4
/* 8020DD00  88 03 00 2B */	lbz r0, 0x2b(r3)
/* 8020DD04  28 00 00 00 */	cmplwi r0, 0
/* 8020DD08  40 82 00 84 */	bne lbl_8020DD8C
/* 8020DD0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020DD10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DD14  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 8020DD18  7F 83 E3 78 */	mr r3, r28
/* 8020DD1C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8020DD20  3B A4 72 88 */	addi r29, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8020DD24  A0 9D 00 EC */	lhz r4, 0xec(r29)
/* 8020DD28  4B E2 6C 95 */	bl isEventBit__11dSv_event_cCFUs
/* 8020DD2C  2C 03 00 00 */	cmpwi r3, 0
/* 8020DD30  41 82 00 5C */	beq lbl_8020DD8C
/* 8020DD34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020DD38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DD3C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8020DD40  3C 80 80 3A */	lis r4, d_meter_d_meter_map__stringBase0@ha
/* 8020DD44  38 84 82 08 */	addi r4, r4, d_meter_d_meter_map__stringBase0@l
/* 8020DD48  48 15 AC 4D */	bl strcmp
/* 8020DD4C  2C 03 00 00 */	cmpwi r3, 0
/* 8020DD50  40 82 00 1C */	bne lbl_8020DD6C
/* 8020DD54  7F 83 E3 78 */	mr r3, r28
/* 8020DD58  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8020DD5C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8020DD60  A0 84 00 EE */	lhz r4, 0xee(r4)
/* 8020DD64  4B E2 6C 29 */	bl onEventBit__11dSv_event_cFUs
/* 8020DD68  48 00 00 24 */	b lbl_8020DD8C
lbl_8020DD6C:
/* 8020DD6C  7F 83 E3 78 */	mr r3, r28
/* 8020DD70  A0 9D 00 EC */	lhz r4, 0xec(r29)
/* 8020DD74  4B E2 6C 49 */	bl isEventBit__11dSv_event_cCFUs
/* 8020DD78  98 7E 00 2B */	stb r3, 0x2b(r30)
/* 8020DD7C  38 00 00 02 */	li r0, 2
/* 8020DD80  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020DD84  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020DD88  98 03 00 C1 */	stb r0, 0xc1(r3)
lbl_8020DD8C:
/* 8020DD8C  8B AD 87 E4 */	lbz r29, struct_80450D64+0x0(r13)
/* 8020DD90  7F BD 07 74 */	extsb r29, r29
/* 8020DD94  93 FE 00 14 */	stw r31, 0x14(r30)
/* 8020DD98  7F C3 F3 78 */	mr r3, r30
/* 8020DD9C  48 00 06 C1 */	bl checkMoveStatus__11dMeterMap_cFv
/* 8020DDA0  98 7E 00 2A */	stb r3, 0x2a(r30)
/* 8020DDA4  88 1E 00 2A */	lbz r0, 0x2a(r30)
/* 8020DDA8  28 00 00 01 */	cmplwi r0, 1
/* 8020DDAC  41 82 00 50 */	beq lbl_8020DDFC
/* 8020DDB0  28 00 00 02 */	cmplwi r0, 2
/* 8020DDB4  41 82 00 48 */	beq lbl_8020DDFC
/* 8020DDB8  28 00 00 03 */	cmplwi r0, 3
/* 8020DDBC  41 82 00 40 */	beq lbl_8020DDFC
/* 8020DDC0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020DDC4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020DDC8  88 03 00 C1 */	lbz r0, 0xc1(r3)
/* 8020DDCC  28 00 00 07 */	cmplwi r0, 7
/* 8020DDD0  41 82 00 2C */	beq lbl_8020DDFC
/* 8020DDD4  28 00 00 02 */	cmplwi r0, 2
/* 8020DDD8  41 82 00 24 */	beq lbl_8020DDFC
/* 8020DDDC  28 00 00 06 */	cmplwi r0, 6
/* 8020DDE0  41 82 00 1C */	beq lbl_8020DDFC
/* 8020DDE4  28 00 00 04 */	cmplwi r0, 4
/* 8020DDE8  41 82 00 14 */	beq lbl_8020DDFC
/* 8020DDEC  28 00 00 03 */	cmplwi r0, 3
/* 8020DDF0  41 82 00 0C */	beq lbl_8020DDFC
/* 8020DDF4  28 00 00 05 */	cmplwi r0, 5
/* 8020DDF8  40 82 00 0C */	bne lbl_8020DE04
lbl_8020DDFC:
/* 8020DDFC  7F C3 F3 78 */	mr r3, r30
/* 8020DE00  48 00 02 71 */	bl ctrlShowMap__11dMeterMap_cFv
lbl_8020DE04:
/* 8020DE04  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 8020DE08  28 00 00 00 */	cmplwi r0, 0
/* 8020DE0C  41 82 00 40 */	beq lbl_8020DE4C
/* 8020DE10  7F C3 F3 78 */	mr r3, r30
/* 8020DE14  4B FF F9 D1 */	bl getDispPosInside_OffsetX__11dMeterMap_cFv
/* 8020DE18  7C 63 07 34 */	extsh r3, r3
/* 8020DE1C  A8 1E 00 28 */	lha r0, 0x28(r30)
/* 8020DE20  7C 00 18 00 */	cmpw r0, r3
/* 8020DE24  41 82 00 48 */	beq lbl_8020DE6C
/* 8020DE28  7F C3 F3 78 */	mr r3, r30
/* 8020DE2C  4B FF F9 B9 */	bl getDispPosInside_OffsetX__11dMeterMap_cFv
/* 8020DE30  7C 64 1B 78 */	mr r4, r3
/* 8020DE34  38 7E 00 28 */	addi r3, r30, 0x28
/* 8020DE38  38 A0 00 02 */	li r5, 2
/* 8020DE3C  38 C0 00 3C */	li r6, 0x3c
/* 8020DE40  38 E0 00 0A */	li r7, 0xa
/* 8020DE44  48 06 26 FD */	bl cLib_addCalcAngleS__FPsssss
/* 8020DE48  48 00 00 24 */	b lbl_8020DE6C
lbl_8020DE4C:
/* 8020DE4C  7F C3 F3 78 */	mr r3, r30
/* 8020DE50  4B FF F9 9D */	bl getDispPosOutSide_OffsetX__11dMeterMap_cFv
/* 8020DE54  7C 64 1B 78 */	mr r4, r3
/* 8020DE58  38 7E 00 28 */	addi r3, r30, 0x28
/* 8020DE5C  38 A0 00 02 */	li r5, 2
/* 8020DE60  38 C0 00 3C */	li r6, 0x3c
/* 8020DE64  38 E0 00 0A */	li r7, 0xa
/* 8020DE68  48 06 26 D9 */	bl cLib_addCalcAngleS__FPsssss
lbl_8020DE6C:
/* 8020DE6C  38 61 00 08 */	addi r3, r1, 8
/* 8020DE70  4B E3 0F ED */	bl getMapPlayerPos__10dMapInfo_nFv
/* 8020DE74  80 61 00 08 */	lwz r3, 8(r1)
/* 8020DE78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020DE7C  90 61 00 14 */	stw r3, 0x14(r1)
/* 8020DE80  90 01 00 18 */	stw r0, 0x18(r1)
/* 8020DE84  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8020DE88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8020DE8C  7F C3 F3 78 */	mr r3, r30
/* 8020DE90  4B FF F8 9D */	bl getMapDispEdgeLeftX_Layout__11dMeterMap_cFv
/* 8020DE94  A8 1E 00 28 */	lha r0, 0x28(r30)
/* 8020DE98  C8 42 AE 28 */	lfd f2, lit_4100(r2)
/* 8020DE9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020DEA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020DEA4  3C 00 43 30 */	lis r0, 0x4330
/* 8020DEA8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8020DEAC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8020DEB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8020DEB4  EC 00 08 2A */	fadds f0, f0, f1
/* 8020DEB8  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8020DEBC  7F C3 F3 78 */	mr r3, r30
/* 8020DEC0  4B FF F7 D1 */	bl getMapDispEdgeBottomY_Layout__11dMeterMap_cFv
/* 8020DEC4  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8020DEC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020DECC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8020DED0  80 7E 00 08 */	lwz r3, 8(r30)
/* 8020DED4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8020DED8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8020DEDC  7F A4 EB 78 */	mr r4, r29
/* 8020DEE0  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 8020DEE4  4B E1 C4 49 */	bl _move__6dMap_cFffif
/* 8020DEE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020DEEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DEF0  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 8020DEF4  30 03 FF FF */	addic r0, r3, -1
/* 8020DEF8  7C 00 19 10 */	subfe r0, r0, r3
/* 8020DEFC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8020DF00  90 1E 00 30 */	stw r0, 0x30(r30)
/* 8020DF04  39 61 00 40 */	addi r11, r1, 0x40
/* 8020DF08  48 15 43 1D */	bl _restgpr_28
/* 8020DF0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8020DF10  7C 08 03 A6 */	mtlr r0
/* 8020DF14  38 21 00 40 */	addi r1, r1, 0x40
/* 8020DF18  4E 80 00 20 */	blr 

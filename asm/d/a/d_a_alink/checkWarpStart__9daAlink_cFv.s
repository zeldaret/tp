lbl_8011F9EC:
/* 8011F9EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011F9F0  7C 08 02 A6 */	mflr r0
/* 8011F9F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011F9F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8011F9FC  48 24 27 E1 */	bl _savegpr_29
/* 8011FA00  7C 7E 1B 78 */	mr r30, r3
/* 8011FA04  3C 60 80 3B */	lis r3, cNullVec__6Z2Calc@ha
/* 8011FA08  3B E3 F9 90 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 8011FA0C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8011FA10  3B A3 01 88 */	addi r29, r3, g_meter2_info@l
/* 8011FA14  88 1D 00 C0 */	lbz r0, 0xc0(r29)
/* 8011FA18  28 00 00 00 */	cmplwi r0, 0
/* 8011FA1C  41 82 01 8C */	beq lbl_8011FBA8
/* 8011FA20  28 00 00 03 */	cmplwi r0, 3
/* 8011FA24  41 82 00 2C */	beq lbl_8011FA50
/* 8011FA28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011FA2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011FA30  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8011FA34  7F C4 F3 78 */	mr r4, r30
/* 8011FA38  38 A0 00 00 */	li r5, 0
/* 8011FA3C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011FA40  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011FA44  4B F2 37 29 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 8011FA48  2C 03 00 00 */	cmpwi r3, 0
/* 8011FA4C  41 82 01 50 */	beq lbl_8011FB9C
lbl_8011FA50:
/* 8011FA50  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8011FA54  60 00 40 00 */	ori r0, r0, 0x4000
/* 8011FA58  90 1E 05 70 */	stw r0, 0x570(r30)
/* 8011FA5C  88 1D 00 C0 */	lbz r0, 0xc0(r29)
/* 8011FA60  28 00 00 03 */	cmplwi r0, 3
/* 8011FA64  40 82 00 E0 */	bne lbl_8011FB44
/* 8011FA68  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8011FA6C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011FA70  40 82 00 AC */	bne lbl_8011FB1C
/* 8011FA74  4B F1 00 4D */	bl dComIfGp_TargetWarpPt_get__Fv
/* 8011FA78  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011FA7C  28 00 00 03 */	cmplwi r0, 3
/* 8011FA80  40 82 00 1C */	bne lbl_8011FA9C
/* 8011FA84  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 8011FA88  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 8011FA8C  38 03 01 44 */	addi r0, r3, 0x144
/* 8011FA90  90 1E 01 00 */	stw r0, 0x100(r30)
/* 8011FA94  38 9F 32 C0 */	addi r4, r31, 0x32c0
/* 8011FA98  48 00 00 90 */	b lbl_8011FB28
lbl_8011FA9C:
/* 8011FA9C  4B F1 00 25 */	bl dComIfGp_TargetWarpPt_get__Fv
/* 8011FAA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011FAA4  28 00 00 06 */	cmplwi r0, 6
/* 8011FAA8  40 82 00 1C */	bne lbl_8011FAC4
/* 8011FAAC  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 8011FAB0  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 8011FAB4  38 03 01 4D */	addi r0, r3, 0x14d
/* 8011FAB8  90 1E 01 00 */	stw r0, 0x100(r30)
/* 8011FABC  38 9F 32 D4 */	addi r4, r31, 0x32d4
/* 8011FAC0  48 00 00 68 */	b lbl_8011FB28
lbl_8011FAC4:
/* 8011FAC4  4B F0 FF FD */	bl dComIfGp_TargetWarpPt_get__Fv
/* 8011FAC8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011FACC  28 00 00 09 */	cmplwi r0, 9
/* 8011FAD0  40 82 00 1C */	bne lbl_8011FAEC
/* 8011FAD4  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 8011FAD8  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 8011FADC  38 03 01 56 */	addi r0, r3, 0x156
/* 8011FAE0  90 1E 01 00 */	stw r0, 0x100(r30)
/* 8011FAE4  38 9F 32 E8 */	addi r4, r31, 0x32e8
/* 8011FAE8  48 00 00 40 */	b lbl_8011FB28
lbl_8011FAEC:
/* 8011FAEC  4B F0 FF D5 */	bl dComIfGp_TargetWarpPt_get__Fv
/* 8011FAF0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011FAF4  28 00 00 08 */	cmplwi r0, 8
/* 8011FAF8  40 82 00 1C */	bne lbl_8011FB14
/* 8011FAFC  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 8011FB00  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 8011FB04  38 03 01 60 */	addi r0, r3, 0x160
/* 8011FB08  90 1E 01 00 */	stw r0, 0x100(r30)
/* 8011FB0C  38 9F 32 FC */	addi r4, r31, 0x32fc
/* 8011FB10  48 00 00 18 */	b lbl_8011FB28
lbl_8011FB14:
/* 8011FB14  38 9F 32 B0 */	addi r4, r31, 0x32b0
/* 8011FB18  48 00 00 10 */	b lbl_8011FB28
lbl_8011FB1C:
/* 8011FB1C  38 60 00 FF */	li r3, 0xff
/* 8011FB20  4B F0 FF 79 */	bl dComIfGp_TargetWarpPt_set__FUc
/* 8011FB24  38 9F 32 B0 */	addi r4, r31, 0x32b0
lbl_8011FB28:
/* 8011FB28  7F C3 F3 78 */	mr r3, r30
/* 8011FB2C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8011FB30  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8011FB34  38 C0 00 01 */	li r6, 1
/* 8011FB38  38 E0 00 01 */	li r7, 1
/* 8011FB3C  4B EF B8 91 */	bl fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs
/* 8011FB40  48 00 00 5C */	b lbl_8011FB9C
lbl_8011FB44:
/* 8011FB44  38 00 00 05 */	li r0, 5
/* 8011FB48  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8011FB4C  88 1D 00 C0 */	lbz r0, 0xc0(r29)
/* 8011FB50  28 00 00 01 */	cmplwi r0, 1
/* 8011FB54  40 82 00 40 */	bne lbl_8011FB94
/* 8011FB58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011FB5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011FB60  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8011FB64  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8011FB68  7D 89 03 A6 */	mtctr r12
/* 8011FB6C  4E 80 04 21 */	bctrl 
/* 8011FB70  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8011FB74  54 03 46 3E */	srwi r3, r0, 0x18
/* 8011FB78  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011FB7C  38 80 00 00 */	li r4, 0
/* 8011FB80  38 A0 FF FF */	li r5, -1
/* 8011FB84  A8 DE 04 E6 */	lha r6, 0x4e6(r30)
/* 8011FB88  38 E0 FF FF */	li r7, -1
/* 8011FB8C  4B F0 75 E5 */	bl dStage_changeScene__FifUlScsi
/* 8011FB90  48 00 00 0C */	b lbl_8011FB9C
lbl_8011FB94:
/* 8011FB94  7F C3 F3 78 */	mr r3, r30
/* 8011FB98  4B FF FC 41 */	bl dungeonReturnWarp__9daAlink_cFv
lbl_8011FB9C:
/* 8011FB9C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8011FBA0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8011FBA4  48 0F CE 39 */	bl resetWarpStatus__13dMeter2Info_cFv
lbl_8011FBA8:
/* 8011FBA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8011FBAC  48 24 26 7D */	bl _restgpr_29
/* 8011FBB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011FBB4  7C 08 03 A6 */	mtlr r0
/* 8011FBB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8011FBBC  4E 80 00 20 */	blr 

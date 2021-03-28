lbl_8011F8B8:
/* 8011F8B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011F8BC  7C 08 02 A6 */	mflr r0
/* 8011F8C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011F8C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011F8C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011F8CC  7C 7F 1B 78 */	mr r31, r3
/* 8011F8D0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 8011F8D4  28 00 01 4F */	cmplwi r0, 0x14f
/* 8011F8D8  40 82 00 10 */	bne lbl_8011F8E8
/* 8011F8DC  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 8011F8E0  2C 00 00 00 */	cmpwi r0, 0
/* 8011F8E4  40 81 00 F0 */	ble lbl_8011F9D4
lbl_8011F8E8:
/* 8011F8E8  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 8011F8EC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011F8F0  41 82 00 44 */	beq lbl_8011F934
/* 8011F8F4  4B F1 01 CD */	bl dComIfGp_TargetWarpPt_get__Fv
/* 8011F8F8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011F8FC  28 00 00 09 */	cmplwi r0, 9
/* 8011F900  40 82 00 34 */	bne lbl_8011F934
/* 8011F904  4B F1 01 E5 */	bl dComIfGp_TransportWarp_check__Fv
/* 8011F908  2C 03 00 00 */	cmpwi r3, 0
/* 8011F90C  41 82 00 28 */	beq lbl_8011F934
/* 8011F910  38 60 00 02 */	li r3, 2
/* 8011F914  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011F918  38 80 00 00 */	li r4, 0
/* 8011F91C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8011F920  7C 05 07 74 */	extsb r5, r0
/* 8011F924  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 8011F928  38 E0 FF FF */	li r7, -1
/* 8011F92C  4B F0 78 45 */	bl dStage_changeScene__FifUlScsi
/* 8011F930  48 00 00 90 */	b lbl_8011F9C0
lbl_8011F934:
/* 8011F934  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8011F938  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
/* 8011F93C  88 7E 00 4E */	lbz r3, 0x4e(r30)
/* 8011F940  38 80 00 00 */	li r4, 0
/* 8011F944  38 A0 00 CA */	li r5, 0xca
/* 8011F948  38 C0 00 00 */	li r6, 0
/* 8011F94C  48 03 F0 C1 */	bl setParamData__9daPy_py_cFiiii
/* 8011F950  7C 67 1B 78 */	mr r7, r3
/* 8011F954  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8011F958  38 A3 01 88 */	addi r5, r3, g_meter2_info@l
/* 8011F95C  38 85 00 40 */	addi r4, r5, 0x40
/* 8011F960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011F964  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011F968  38 63 0E D8 */	addi r3, r3, 0xed8
/* 8011F96C  88 A5 00 50 */	lbz r5, 0x50(r5)
/* 8011F970  88 1E 00 4E */	lbz r0, 0x4e(r30)
/* 8011F974  7C 06 07 74 */	extsb r6, r0
/* 8011F978  4B F1 56 2D */	bl set__17dSv_turnRestart_cFRC4cXyzsScUl
/* 8011F97C  38 00 00 01 */	li r0, 1
/* 8011F980  90 01 00 08 */	stw r0, 8(r1)
/* 8011F984  38 00 00 00 */	li r0, 0
/* 8011F988  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011F98C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8011F990  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8011F994  38 63 00 38 */	addi r3, r3, 0x38
/* 8011F998  38 80 FF FC */	li r4, -4
/* 8011F99C  88 1E 00 4E */	lbz r0, 0x4e(r30)
/* 8011F9A0  7C 05 07 74 */	extsb r5, r0
/* 8011F9A4  38 C0 FF FF */	li r6, -1
/* 8011F9A8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011F9AC  38 E0 00 00 */	li r7, 0
/* 8011F9B0  39 00 00 01 */	li r8, 1
/* 8011F9B4  39 20 00 00 */	li r9, 0
/* 8011F9B8  A9 5F 04 E6 */	lha r10, 0x4e6(r31)
/* 8011F9BC  4B F0 D9 41 */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
lbl_8011F9C0:
/* 8011F9C0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 8011F9C4  28 00 01 4F */	cmplwi r0, 0x14f
/* 8011F9C8  40 82 00 0C */	bne lbl_8011F9D4
/* 8011F9CC  38 00 FF FF */	li r0, -1
/* 8011F9D0  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_8011F9D4:
/* 8011F9D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011F9D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011F9DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011F9E0  7C 08 03 A6 */	mtlr r0
/* 8011F9E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8011F9E8  4E 80 00 20 */	blr 

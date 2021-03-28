lbl_8057A8B4:
/* 8057A8B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057A8B8  7C 08 02 A6 */	mflr r0
/* 8057A8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057A8C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057A8C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8057A8C8  7C 7E 1B 78 */	mr r30, r3
/* 8057A8CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057A8D0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8057A8D4  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8057A8D8  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 8057A8DC  4B AC D1 9C */	b endCheck__16dEvent_manager_cFs
/* 8057A8E0  2C 03 00 00 */	cmpwi r3, 0
/* 8057A8E4  41 82 00 90 */	beq lbl_8057A974
/* 8057A8E8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8057A8EC  4B AC 7B 7C */	b reset__14dEvt_control_cFv
/* 8057A8F0  A0 1E 06 1C */	lhz r0, 0x61c(r30)
/* 8057A8F4  28 00 00 00 */	cmplwi r0, 0
/* 8057A8F8  40 82 00 3C */	bne lbl_8057A934
/* 8057A8FC  38 00 00 04 */	li r0, 4
/* 8057A900  98 1E 05 90 */	stb r0, 0x590(r30)
/* 8057A904  7F C3 F3 78 */	mr r3, r30
/* 8057A908  A8 9E 05 96 */	lha r4, 0x596(r30)
/* 8057A90C  88 BE 05 98 */	lbz r5, 0x598(r30)
/* 8057A910  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8057A914  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8057A918  38 E0 00 00 */	li r7, 0
/* 8057A91C  39 00 00 01 */	li r8, 1
/* 8057A920  4B AA 0D 5C */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8057A924  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 8057A928  60 00 00 02 */	ori r0, r0, 2
/* 8057A92C  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 8057A930  48 00 00 4C */	b lbl_8057A97C
lbl_8057A934:
/* 8057A934  28 00 00 01 */	cmplwi r0, 1
/* 8057A938  40 82 00 44 */	bne lbl_8057A97C
/* 8057A93C  38 00 00 09 */	li r0, 9
/* 8057A940  98 1E 05 90 */	stb r0, 0x590(r30)
/* 8057A944  7F C3 F3 78 */	mr r3, r30
/* 8057A948  A8 9E 06 1E */	lha r4, 0x61e(r30)
/* 8057A94C  38 A0 00 FF */	li r5, 0xff
/* 8057A950  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8057A954  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8057A958  38 E0 00 00 */	li r7, 0
/* 8057A95C  39 00 00 01 */	li r8, 1
/* 8057A960  4B AA 0D 1C */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8057A964  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 8057A968  60 00 00 02 */	ori r0, r0, 2
/* 8057A96C  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 8057A970  48 00 00 0C */	b lbl_8057A97C
lbl_8057A974:
/* 8057A974  7F C3 F3 78 */	mr r3, r30
/* 8057A978  48 00 01 1D */	bl demoProc__15daObjBossWarp_cFv
lbl_8057A97C:
/* 8057A97C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057A980  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057A984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057A988  7C 08 03 A6 */	mtlr r0
/* 8057A98C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057A990  4E 80 00 20 */	blr 

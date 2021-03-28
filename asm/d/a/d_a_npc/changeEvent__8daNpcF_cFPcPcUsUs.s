lbl_80153954:
/* 80153954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80153958  7C 08 02 A6 */	mflr r0
/* 8015395C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80153960  39 61 00 20 */	addi r11, r1, 0x20
/* 80153964  48 20 E8 71 */	bl _savegpr_27
/* 80153968  7C 7B 1B 78 */	mr r27, r3
/* 8015396C  7C BC 2B 78 */	mr r28, r5
/* 80153970  7C DD 33 78 */	mr r29, r6
/* 80153974  7C FE 3B 78 */	mr r30, r7
/* 80153978  28 04 00 00 */	cmplwi r4, 0
/* 8015397C  41 82 00 1C */	beq lbl_80153998
/* 80153980  90 9B 01 00 */	stw r4, 0x100(r27)
/* 80153984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80153988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015398C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80153990  80 9B 01 00 */	lwz r4, 0x100(r27)
/* 80153994  4B EF 2E 6D */	bl setObjectArchive__16dEvent_manager_cFPc
lbl_80153998:
/* 80153998  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015399C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 801539A0  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 801539A4  7F 64 DB 78 */	mr r4, r27
/* 801539A8  7F 85 E3 78 */	mr r5, r28
/* 801539AC  38 C0 00 FF */	li r6, 0xff
/* 801539B0  4B EF 3D A9 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 801539B4  B0 7B 09 D4 */	sth r3, 0x9d4(r27)
/* 801539B8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 801539BC  7F 64 DB 78 */	mr r4, r27
/* 801539C0  4B EE EB 59 */	bl reset__14dEvt_control_cFPv
/* 801539C4  7F 63 DB 78 */	mr r3, r27
/* 801539C8  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 801539CC  7F A5 EB 78 */	mr r5, r29
/* 801539D0  7F C6 F3 78 */	mr r6, r30
/* 801539D4  4B EC 7C 11 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 801539D8  39 61 00 20 */	addi r11, r1, 0x20
/* 801539DC  48 20 E8 45 */	bl _restgpr_27
/* 801539E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801539E4  7C 08 03 A6 */	mtlr r0
/* 801539E8  38 21 00 20 */	addi r1, r1, 0x20
/* 801539EC  4E 80 00 20 */	blr 

lbl_80046DAC:
/* 80046DAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80046DB0  7C 08 02 A6 */	mflr r0
/* 80046DB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80046DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80046DBC  48 31 B4 21 */	bl _savegpr_29
/* 80046DC0  7C 7D 1B 78 */	mr r29, r3
/* 80046DC4  7C BE 2B 78 */	mr r30, r5
/* 80046DC8  48 00 06 F5 */	bl getEventData__16dEvent_manager_cFs
/* 80046DCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80046DD0  41 82 00 7C */	beq lbl_80046E4C
/* 80046DD4  2C 1E 00 00 */	cmpwi r30, 0
/* 80046DD8  41 82 00 10 */	beq lbl_80046DE8
/* 80046DDC  7F A3 EB 78 */	mr r3, r29
/* 80046DE0  7F E4 FB 78 */	mr r4, r31
/* 80046DE4  4B FF FF BD */	bl closeProc__16dEvent_manager_cFP12dEvDtEvent_c
lbl_80046DE8:
/* 80046DE8  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 80046DEC  2C 00 00 02 */	cmpwi r0, 2
/* 80046DF0  40 82 00 5C */	bne lbl_80046E4C
/* 80046DF4  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha
/* 80046DF8  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l
/* 80046DFC  38 83 01 4B */	addi r4, r3, 0x14b
/* 80046E00  3C 60 80 04 */	lis r3, allOffObjectCallBack__FP10fopAc_ac_cPv@ha
/* 80046E04  38 63 6C 9C */	addi r3, r3, allOffObjectCallBack__FP10fopAc_ac_cPv@l
/* 80046E08  4B FD 29 F1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80046E0C  38 00 00 02 */	li r0, 2
/* 80046E10  90 1D 01 8C */	stw r0, 0x18c(r29)
/* 80046E14  38 00 00 00 */	li r0, 0
/* 80046E18  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 80046E1C  90 1D 01 B4 */	stw r0, 0x1b4(r29)
/* 80046E20  38 00 FF FF */	li r0, -1
/* 80046E24  B0 1D 01 AA */	sth r0, 0x1aa(r29)
/* 80046E28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80046E2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80046E30  3B E3 4E C8 */	addi r31, r3, 0x4ec8
/* 80046E34  7F E3 FB 78 */	mr r3, r31
/* 80046E38  38 80 00 00 */	li r4, 0
/* 80046E3C  4B FF C8 B9 */	bl setPtD__14dEvt_control_cFPv
/* 80046E40  7F E3 FB 78 */	mr r3, r31
/* 80046E44  38 80 00 00 */	li r4, 0
/* 80046E48  4B FF C8 75 */	bl setPtI__14dEvt_control_cFPv
lbl_80046E4C:
/* 80046E4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80046E50  48 31 B3 D9 */	bl _restgpr_29
/* 80046E54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80046E58  7C 08 03 A6 */	mtlr r0
/* 80046E5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80046E60  4E 80 00 20 */	blr 

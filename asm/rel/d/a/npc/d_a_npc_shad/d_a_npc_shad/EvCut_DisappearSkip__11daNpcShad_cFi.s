lbl_80ADF810:
/* 80ADF810  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ADF814  7C 08 02 A6 */	mflr r0
/* 80ADF818  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ADF81C  39 61 00 20 */	addi r11, r1, 0x20
/* 80ADF820  4B 88 29 B5 */	bl _savegpr_27
/* 80ADF824  7C 7B 1B 78 */	mr r27, r3
/* 80ADF828  7C 9C 23 78 */	mr r28, r4
/* 80ADF82C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ADF830  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ADF834  3B BE 4F F8 */	addi r29, r30, 0x4ff8
/* 80ADF838  7F A3 EB 78 */	mr r3, r29
/* 80ADF83C  4B 56 87 21 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80ADF840  7C 7F 1B 78 */	mr r31, r3
/* 80ADF844  7F A3 EB 78 */	mr r3, r29
/* 80ADF848  7F 84 E3 78 */	mr r4, r28
/* 80ADF84C  4B 56 85 01 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80ADF850  2C 03 00 00 */	cmpwi r3, 0
/* 80ADF854  41 82 00 6C */	beq lbl_80ADF8C0
/* 80ADF858  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ADF85C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80ADF860  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80ADF864  7C 04 00 00 */	cmpw r4, r0
/* 80ADF868  41 82 00 30 */	beq lbl_80ADF898
/* 80ADF86C  40 80 00 14 */	bge lbl_80ADF880
/* 80ADF870  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ADF874  7C 04 00 00 */	cmpw r4, r0
/* 80ADF878  40 80 00 18 */	bge lbl_80ADF890
/* 80ADF87C  48 00 00 44 */	b lbl_80ADF8C0
lbl_80ADF880:
/* 80ADF880  38 03 30 34 */	addi r0, r3, 0x3034
/* 80ADF884  7C 04 00 00 */	cmpw r4, r0
/* 80ADF888  40 80 00 38 */	bge lbl_80ADF8C0
/* 80ADF88C  48 00 00 1C */	b lbl_80ADF8A8
lbl_80ADF890:
/* 80ADF890  38 60 00 01 */	li r3, 1
/* 80ADF894  48 00 00 30 */	b lbl_80ADF8C4
lbl_80ADF898:
/* 80ADF898  38 00 00 00 */	li r0, 0
/* 80ADF89C  98 1B 0E 1E */	stb r0, 0xe1e(r27)
/* 80ADF8A0  38 60 00 01 */	li r3, 1
/* 80ADF8A4  48 00 00 20 */	b lbl_80ADF8C4
lbl_80ADF8A8:
/* 80ADF8A8  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80ADF8AC  4B 56 2B BD */	bl reset__14dEvt_control_cFv
/* 80ADF8B0  7F 63 DB 78 */	mr r3, r27
/* 80ADF8B4  4B 53 A3 C9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80ADF8B8  38 60 00 01 */	li r3, 1
/* 80ADF8BC  48 00 00 08 */	b lbl_80ADF8C4
lbl_80ADF8C0:
/* 80ADF8C0  38 60 00 00 */	li r3, 0
lbl_80ADF8C4:
/* 80ADF8C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80ADF8C8  4B 88 29 59 */	bl _restgpr_27
/* 80ADF8CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ADF8D0  7C 08 03 A6 */	mtlr r0
/* 80ADF8D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80ADF8D8  4E 80 00 20 */	blr 

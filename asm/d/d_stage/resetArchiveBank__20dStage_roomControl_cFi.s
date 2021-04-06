lbl_80024954:
/* 80024954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024958  7C 08 02 A6 */	mflr r0
/* 8002495C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80024960  39 61 00 20 */	addi r11, r1, 0x20
/* 80024964  48 33 D8 75 */	bl _savegpr_28
/* 80024968  7C 7D 1B 78 */	mr r29, r3
/* 8002496C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80024970  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80024974  3F C3 00 02 */	addis r30, r3, 2
/* 80024978  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 8002497C  3B E3 8A 50 */	addi r31, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80024980  3B DE C2 F8 */	addi r30, r30, -15624
/* 80024984  48 00 00 8C */	b lbl_80024A10
lbl_80024988:
/* 80024988  7F A3 EB 78 */	mr r3, r29
/* 8002498C  4B FF FF B5 */	bl getArcBank__20dStage_roomControl_cFi
/* 80024990  7C 7C 1B 78 */	mr r28, r3
/* 80024994  38 9F 00 9F */	addi r4, r31, 0x9f
/* 80024998  48 34 3F FD */	bl strcmp
/* 8002499C  2C 03 00 00 */	cmpwi r3, 0
/* 800249A0  41 82 00 6C */	beq lbl_80024A0C
/* 800249A4  7F 83 E3 78 */	mr r3, r28
/* 800249A8  7F C4 F3 78 */	mr r4, r30
/* 800249AC  38 A0 00 80 */	li r5, 0x80
/* 800249B0  48 01 77 B1 */	bl syncRes__14dRes_control_cFPCcP11dRes_info_ci
/* 800249B4  2C 03 00 00 */	cmpwi r3, 0
/* 800249B8  40 80 00 24 */	bge lbl_800249DC
/* 800249BC  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 800249C0  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 800249C4  38 63 00 A0 */	addi r3, r3, 0xa0
/* 800249C8  7F A4 EB 78 */	mr r4, r29
/* 800249CC  7F 85 E3 78 */	mr r5, r28
/* 800249D0  4C C6 31 82 */	crclr 6
/* 800249D4  4B FE 22 39 */	bl OSReport_Error
/* 800249D8  48 00 00 34 */	b lbl_80024A0C
lbl_800249DC:
/* 800249DC  40 81 00 0C */	ble lbl_800249E8
/* 800249E0  38 60 00 00 */	li r3, 0
/* 800249E4  48 00 00 38 */	b lbl_80024A1C
lbl_800249E8:
/* 800249E8  7F 83 E3 78 */	mr r3, r28
/* 800249EC  7F C4 F3 78 */	mr r4, r30
/* 800249F0  38 A0 00 80 */	li r5, 0x80
/* 800249F4  48 01 77 A1 */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
/* 800249F8  7F A3 EB 78 */	mr r3, r29
/* 800249FC  3C 80 80 38 */	lis r4, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80024A00  38 84 8A 50 */	addi r4, r4, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80024A04  38 84 00 9F */	addi r4, r4, 0x9f
/* 80024A08  4B FF FF 05 */	bl setArcBank__20dStage_roomControl_cFiPCc
lbl_80024A0C:
/* 80024A0C  3B BD 00 01 */	addi r29, r29, 1
lbl_80024A10:
/* 80024A10  2C 1D 00 20 */	cmpwi r29, 0x20
/* 80024A14  41 80 FF 74 */	blt lbl_80024988
/* 80024A18  38 60 00 01 */	li r3, 1
lbl_80024A1C:
/* 80024A1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80024A20  48 33 D8 05 */	bl _restgpr_28
/* 80024A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80024A28  7C 08 03 A6 */	mtlr r0
/* 80024A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80024A30  4E 80 00 20 */	blr 

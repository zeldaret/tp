lbl_80026DF8:
/* 80026DF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80026DFC  7C 08 02 A6 */	mflr r0
/* 80026E00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80026E04  39 61 00 20 */	addi r11, r1, 0x20
/* 80026E08  48 33 B3 D5 */	bl _savegpr_29
/* 80026E0C  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 80026E10  8C 03 61 94 */	lbzu r0, mDemoArcName__20dStage_roomControl_c@l(r3)
/* 80026E14  7C 00 07 75 */	extsb. r0, r0
/* 80026E18  41 82 00 1C */	beq lbl_80026E34
/* 80026E1C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80026E20  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80026E24  3C 84 00 02 */	addis r4, r4, 2
/* 80026E28  38 A0 00 80 */	li r5, 0x80
/* 80026E2C  38 84 C2 F8 */	addi r4, r4, -15624
/* 80026E30  48 01 53 65 */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
lbl_80026E34:
/* 80026E34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80026E38  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80026E3C  3B DF 4E 20 */	addi r30, r31, 0x4e20
/* 80026E40  7F C3 F3 78 */	mr r3, r30
/* 80026E44  81 9E 00 00 */	lwz r12, 0(r30)
/* 80026E48  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80026E4C  7D 89 03 A6 */	mtctr r12
/* 80026E50  4E 80 04 21 */	bctrl 
/* 80026E54  88 03 00 09 */	lbz r0, 9(r3)
/* 80026E58  54 04 FE FE */	rlwinm r4, r0, 0x1f, 0x1b, 0x1f
/* 80026E5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80026E60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80026E64  48 00 E2 8D */	bl putSave__10dSv_info_cFi
/* 80026E68  38 6D 87 F4 */	la r3, m_roomDzs__20dStage_roomControl_c(r13) /* 80450D74-_SDA_BASE_ */
/* 80026E6C  4B FF DC 51 */	bl remove__Q220dStage_roomControl_c9roomDzs_cFv
/* 80026E70  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80026E74  80 03 00 00 */	lwz r0, 0(r3)
/* 80026E78  2C 00 00 00 */	cmpwi r0, 0
/* 80026E7C  40 82 00 2C */	bne lbl_80026EA8
/* 80026E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80026E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80026E88  88 03 4E 1C */	lbz r0, 0x4e1c(r3)
/* 80026E8C  7C 00 07 75 */	extsb. r0, r0
/* 80026E90  41 82 00 18 */	beq lbl_80026EA8
/* 80026E94  38 7F 4E 0E */	addi r3, r31, 0x4e0e
/* 80026E98  38 9F 4E 00 */	addi r4, r31, 0x4e00
/* 80026E9C  48 34 1A F9 */	bl strcmp
/* 80026EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80026EA4  41 82 00 C4 */	beq lbl_80026F68
lbl_80026EA8:
/* 80026EA8  4B FF DA 01 */	bl destroyMemoryBlock__20dStage_roomControl_cFv
/* 80026EAC  7F C3 F3 78 */	mr r3, r30
/* 80026EB0  81 9E 00 00 */	lwz r12, 0(r30)
/* 80026EB4  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80026EB8  7D 89 03 A6 */	mtctr r12
/* 80026EBC  4E 80 04 21 */	bctrl 
/* 80026EC0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80026EC4  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 80026EC8  28 00 00 01 */	cmplwi r0, 1
/* 80026ECC  40 82 00 48 */	bne lbl_80026F14
/* 80026ED0  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80026ED4  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80026ED8  38 63 01 32 */	addi r3, r3, 0x132
/* 80026EDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80026EE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80026EE4  3C 84 00 02 */	addis r4, r4, 2
/* 80026EE8  38 84 D4 F8 */	addi r4, r4, -11016
/* 80026EEC  38 A0 00 40 */	li r5, 0x40
/* 80026EF0  48 01 52 F5 */	bl getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 80026EF4  38 00 00 58 */	li r0, 0x58
/* 80026EF8  98 03 00 00 */	stb r0, 0(r3)
/* 80026EFC  7F C3 F3 78 */	mr r3, r30
/* 80026F00  81 9E 00 00 */	lwz r12, 0(r30)
/* 80026F04  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80026F08  7D 89 03 A6 */	mtctr r12
/* 80026F0C  4E 80 04 21 */	bctrl 
/* 80026F10  48 00 00 58 */	b lbl_80026F68
lbl_80026F14:
/* 80026F14  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80026F18  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80026F1C  38 63 01 32 */	addi r3, r3, 0x132
/* 80026F20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80026F24  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80026F28  3C 84 00 02 */	addis r4, r4, 2
/* 80026F2C  3B A4 D4 F8 */	addi r29, r4, -11016
/* 80026F30  7F A4 EB 78 */	mr r4, r29
/* 80026F34  38 A0 00 40 */	li r5, 0x40
/* 80026F38  48 01 52 5D */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
/* 80026F3C  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80026F40  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80026F44  38 63 00 E3 */	addi r3, r3, 0xe3
/* 80026F48  7F A4 EB 78 */	mr r4, r29
/* 80026F4C  38 A0 00 40 */	li r5, 0x40
/* 80026F50  48 01 52 45 */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
/* 80026F54  7F C3 F3 78 */	mr r3, r30
/* 80026F58  81 9E 00 00 */	lwz r12, 0(r30)
/* 80026F5C  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 80026F60  7D 89 03 A6 */	mtctr r12
/* 80026F64  4E 80 04 21 */	bctrl 
lbl_80026F68:
/* 80026F68  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80026F6C  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80026F70  38 63 01 39 */	addi r3, r3, 0x139
/* 80026F74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80026F78  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80026F7C  3F A4 00 02 */	addis r29, r4, 2
/* 80026F80  3B BD C2 F8 */	addi r29, r29, -15624
/* 80026F84  7F A4 EB 78 */	mr r4, r29
/* 80026F88  38 A0 00 80 */	li r5, 0x80
/* 80026F8C  48 01 52 09 */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
/* 80026F90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80026F94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80026F98  80 63 5D 88 */	lwz r3, 0x5d88(r3)
/* 80026F9C  7F A4 EB 78 */	mr r4, r29
/* 80026FA0  38 A0 00 80 */	li r5, 0x80
/* 80026FA4  48 01 51 F1 */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
/* 80026FA8  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80026FAC  48 01 FC 61 */	bl remove__16dEvent_manager_cFv
/* 80026FB0  7F C3 F3 78 */	mr r3, r30
/* 80026FB4  81 9E 00 00 */	lwz r12, 0(r30)
/* 80026FB8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80026FBC  7D 89 03 A6 */	mtctr r12
/* 80026FC0  4E 80 04 21 */	bctrl 
/* 80026FC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80026FC8  48 33 B2 61 */	bl _restgpr_29
/* 80026FCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80026FD0  7C 08 03 A6 */	mtlr r0
/* 80026FD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80026FD8  4E 80 00 20 */	blr 

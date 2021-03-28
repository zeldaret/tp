lbl_80CC7D14:
/* 80CC7D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC7D18  7C 08 02 A6 */	mflr r0
/* 80CC7D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC7D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC7D24  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC7D28  7C 7F 1B 78 */	mr r31, r3
/* 80CC7D2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC7D30  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80CC7D34  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80CC7D38  A8 9F 06 10 */	lha r4, 0x610(r31)
/* 80CC7D3C  4B 37 FD 3C */	b endCheck__16dEvent_manager_cFs
/* 80CC7D40  2C 03 00 00 */	cmpwi r3, 0
/* 80CC7D44  41 82 01 08 */	beq lbl_80CC7E4C
/* 80CC7D48  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80CC7D4C  4B 37 A7 1C */	b reset__14dEvt_control_cFv
/* 80CC7D50  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80CC7D54  2C 00 00 03 */	cmpwi r0, 3
/* 80CC7D58  41 82 00 0C */	beq lbl_80CC7D64
/* 80CC7D5C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CC7D60  40 82 00 90 */	bne lbl_80CC7DF0
lbl_80CC7D64:
/* 80CC7D64  88 1F 06 18 */	lbz r0, 0x618(r31)
/* 80CC7D68  2C 00 00 02 */	cmpwi r0, 2
/* 80CC7D6C  41 82 00 64 */	beq lbl_80CC7DD0
/* 80CC7D70  40 80 00 10 */	bge lbl_80CC7D80
/* 80CC7D74  2C 00 00 01 */	cmpwi r0, 1
/* 80CC7D78  40 80 00 14 */	bge lbl_80CC7D8C
/* 80CC7D7C  48 00 01 28 */	b lbl_80CC7EA4
lbl_80CC7D80:
/* 80CC7D80  2C 00 00 04 */	cmpwi r0, 4
/* 80CC7D84  40 80 01 20 */	bge lbl_80CC7EA4
/* 80CC7D88  48 00 00 5C */	b lbl_80CC7DE4
lbl_80CC7D8C:
/* 80CC7D8C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC7D90  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC7D94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC7D98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC7D9C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC7DA0  7C 05 07 74 */	extsb r5, r0
/* 80CC7DA4  4B 36 D5 BC */	b isSwitch__10dSv_info_cCFii
/* 80CC7DA8  2C 03 00 00 */	cmpwi r3, 0
/* 80CC7DAC  41 82 00 10 */	beq lbl_80CC7DBC
/* 80CC7DB0  38 00 00 03 */	li r0, 3
/* 80CC7DB4  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80CC7DB8  48 00 00 0C */	b lbl_80CC7DC4
lbl_80CC7DBC:
/* 80CC7DBC  38 00 00 02 */	li r0, 2
/* 80CC7DC0  98 1F 06 18 */	stb r0, 0x618(r31)
lbl_80CC7DC4:
/* 80CC7DC4  38 00 00 00 */	li r0, 0
/* 80CC7DC8  98 1F 06 16 */	stb r0, 0x616(r31)
/* 80CC7DCC  48 00 00 D8 */	b lbl_80CC7EA4
lbl_80CC7DD0:
/* 80CC7DD0  38 00 00 03 */	li r0, 3
/* 80CC7DD4  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80CC7DD8  38 00 00 00 */	li r0, 0
/* 80CC7DDC  98 1F 06 16 */	stb r0, 0x616(r31)
/* 80CC7DE0  48 00 00 C4 */	b lbl_80CC7EA4
lbl_80CC7DE4:
/* 80CC7DE4  38 00 00 03 */	li r0, 3
/* 80CC7DE8  98 1F 06 16 */	stb r0, 0x616(r31)
/* 80CC7DEC  48 00 00 B8 */	b lbl_80CC7EA4
lbl_80CC7DF0:
/* 80CC7DF0  2C 00 00 01 */	cmpwi r0, 1
/* 80CC7DF4  40 82 00 B0 */	bne lbl_80CC7EA4
/* 80CC7DF8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC7DFC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CC7E00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC7E04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC7E08  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC7E0C  7C 05 07 74 */	extsb r5, r0
/* 80CC7E10  4B 36 D5 50 */	b isSwitch__10dSv_info_cCFii
/* 80CC7E14  2C 03 00 00 */	cmpwi r3, 0
/* 80CC7E18  40 82 00 20 */	bne lbl_80CC7E38
/* 80CC7E1C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC7E20  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CC7E24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC7E28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC7E2C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC7E30  7C 05 07 74 */	extsb r5, r0
/* 80CC7E34  4B 36 D3 CC */	b onSwitch__10dSv_info_cFii
lbl_80CC7E38:
/* 80CC7E38  38 00 00 01 */	li r0, 1
/* 80CC7E3C  98 1F 06 1B */	stb r0, 0x61b(r31)
/* 80CC7E40  38 00 00 03 */	li r0, 3
/* 80CC7E44  98 1F 06 16 */	stb r0, 0x616(r31)
/* 80CC7E48  48 00 00 5C */	b lbl_80CC7EA4
lbl_80CC7E4C:
/* 80CC7E4C  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80CC7E50  2C 00 00 03 */	cmpwi r0, 3
/* 80CC7E54  41 82 00 0C */	beq lbl_80CC7E60
/* 80CC7E58  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CC7E5C  40 82 00 40 */	bne lbl_80CC7E9C
lbl_80CC7E60:
/* 80CC7E60  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC7E64  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC7E68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC7E6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC7E70  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC7E74  7C 05 07 74 */	extsb r5, r0
/* 80CC7E78  4B 36 D4 E8 */	b isSwitch__10dSv_info_cCFii
/* 80CC7E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80CC7E80  41 82 00 1C */	beq lbl_80CC7E9C
/* 80CC7E84  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80CC7E88  7F E4 FB 78 */	mr r4, r31
/* 80CC7E8C  3C A0 80 CC */	lis r5, eventCallBack__FPvi@ha
/* 80CC7E90  38 A5 6A 98 */	addi r5, r5, eventCallBack__FPvi@l
/* 80CC7E94  38 C0 00 00 */	li r6, 0
/* 80CC7E98  4B 37 AA 7C */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80CC7E9C:
/* 80CC7E9C  7F E3 FB 78 */	mr r3, r31
/* 80CC7EA0  48 00 00 21 */	bl demoExe__11daSCannon_cFv
lbl_80CC7EA4:
/* 80CC7EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC7EA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC7EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC7EB0  7C 08 03 A6 */	mtlr r0
/* 80CC7EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC7EB8  4E 80 00 20 */	blr 

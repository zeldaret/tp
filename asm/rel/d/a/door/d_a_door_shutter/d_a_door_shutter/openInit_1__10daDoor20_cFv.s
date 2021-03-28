lbl_80461D24:
/* 80461D24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80461D28  7C 08 02 A6 */	mflr r0
/* 80461D2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80461D30  39 61 00 40 */	addi r11, r1, 0x40
/* 80461D34  4B F0 04 98 */	b _savegpr_25
/* 80461D38  7C 7E 1B 78 */	mr r30, r3
/* 80461D3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80461D40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80461D44  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80461D48  80 04 05 74 */	lwz r0, 0x574(r4)
/* 80461D4C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80461D50  41 82 00 34 */	beq lbl_80461D84
/* 80461D54  4B FF EE 51 */	bl getArcName__10daDoor20_cFv
/* 80461D58  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80461D5C  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80461D60  38 84 01 0A */	addi r4, r4, 0x10a
/* 80461D64  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80461D68  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80461D6C  3C A5 00 02 */	addis r5, r5, 2
/* 80461D70  38 C0 00 80 */	li r6, 0x80
/* 80461D74  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80461D78  4B BD A6 04 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80461D7C  7C 64 1B 78 */	mr r4, r3
/* 80461D80  48 00 00 30 */	b lbl_80461DB0
lbl_80461D84:
/* 80461D84  4B FF EE 21 */	bl getArcName__10daDoor20_cFv
/* 80461D88  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80461D8C  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80461D90  38 84 00 C1 */	addi r4, r4, 0xc1
/* 80461D94  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80461D98  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80461D9C  3C A5 00 02 */	addis r5, r5, 2
/* 80461DA0  38 C0 00 80 */	li r6, 0x80
/* 80461DA4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80461DA8  4B BD A5 D4 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80461DAC  7C 64 1B 78 */	mr r4, r3
lbl_80461DB0:
/* 80461DB0  38 7E 05 84 */	addi r3, r30, 0x584
/* 80461DB4  38 A0 00 01 */	li r5, 1
/* 80461DB8  38 C0 00 00 */	li r6, 0
/* 80461DBC  3C E0 80 46 */	lis r7, lit_4124@ha
/* 80461DC0  C0 27 68 24 */	lfs f1, lit_4124@l(r7)
/* 80461DC4  38 E0 00 00 */	li r7, 0
/* 80461DC8  39 00 FF FF */	li r8, -1
/* 80461DCC  39 20 00 01 */	li r9, 1
/* 80461DD0  4B BA BA 0C */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80461DD4  7F C3 F3 78 */	mr r3, r30
/* 80461DD8  4B BD 84 10 */	b getSwbit3__13door_param2_cFP10fopAc_ac_c
/* 80461DDC  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80461DE0  28 1F 00 FF */	cmplwi r31, 0xff
/* 80461DE4  41 82 00 C0 */	beq lbl_80461EA4
/* 80461DE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461DEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80461DF0  7F E4 FB 78 */	mr r4, r31
/* 80461DF4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80461DF8  7C 05 07 74 */	extsb r5, r0
/* 80461DFC  4B BD 35 64 */	b isSwitch__10dSv_info_cCFii
/* 80461E00  2C 03 00 00 */	cmpwi r3, 0
/* 80461E04  40 82 00 A0 */	bne lbl_80461EA4
/* 80461E08  3B 20 00 00 */	li r25, 0
/* 80461E0C  3B A0 00 00 */	li r29, 0
/* 80461E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461E14  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80461E18  3C 60 80 46 */	lis r3, l_eff_id@ha
/* 80461E1C  3B 63 68 64 */	addi r27, r3, l_eff_id@l
/* 80461E20  3C 60 80 46 */	lis r3, lit_4124@ha
/* 80461E24  3B 83 68 24 */	addi r28, r3, lit_4124@l
lbl_80461E28:
/* 80461E28  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80461E2C  7C 04 07 74 */	extsb r4, r0
/* 80461E30  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80461E34  38 00 00 00 */	li r0, 0
/* 80461E38  90 01 00 08 */	stw r0, 8(r1)
/* 80461E3C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80461E40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80461E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80461E48  90 01 00 18 */	stw r0, 0x18(r1)
/* 80461E4C  38 80 00 00 */	li r4, 0
/* 80461E50  7C BB EA 2E */	lhzx r5, r27, r29
/* 80461E54  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80461E58  38 E0 00 00 */	li r7, 0
/* 80461E5C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80461E60  39 20 00 00 */	li r9, 0
/* 80461E64  39 40 00 FF */	li r10, 0xff
/* 80461E68  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80461E6C  4B BE AC 24 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80461E70  3B 39 00 01 */	addi r25, r25, 1
/* 80461E74  2C 19 00 02 */	cmpwi r25, 2
/* 80461E78  3B BD 00 02 */	addi r29, r29, 2
/* 80461E7C  41 80 FF AC */	blt lbl_80461E28
/* 80461E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80461E88  7F E4 FB 78 */	mr r4, r31
/* 80461E8C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80461E90  7C 05 07 74 */	extsb r5, r0
/* 80461E94  4B BD 33 6C */	b onSwitch__10dSv_info_cFii
/* 80461E98  38 00 00 01 */	li r0, 1
/* 80461E9C  98 1E 06 72 */	stb r0, 0x672(r30)
/* 80461EA0  48 00 00 0C */	b lbl_80461EAC
lbl_80461EA4:
/* 80461EA4  38 00 00 00 */	li r0, 0
/* 80461EA8  98 1E 06 72 */	stb r0, 0x672(r30)
lbl_80461EAC:
/* 80461EAC  39 61 00 40 */	addi r11, r1, 0x40
/* 80461EB0  4B F0 03 68 */	b _restgpr_25
/* 80461EB4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80461EB8  7C 08 03 A6 */	mtlr r0
/* 80461EBC  38 21 00 40 */	addi r1, r1, 0x40
/* 80461EC0  4E 80 00 20 */	blr 

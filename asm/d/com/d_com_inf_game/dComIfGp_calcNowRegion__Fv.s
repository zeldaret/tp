lbl_8002E9F0:
/* 8002E9F0  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 8002E9F4  21 6B F7 A0 */	subfic r11, r11, -2144
/* 8002E9F8  7C 2C 0B 78 */	mr r12, r1
/* 8002E9FC  7C 21 59 6E */	stwux r1, r1, r11
/* 8002EA00  7C 08 02 A6 */	mflr r0
/* 8002EA04  90 0C 00 04 */	stw r0, 4(r12)
/* 8002EA08  7D 8B 63 78 */	mr r11, r12
/* 8002EA0C  48 33 37 C1 */	bl _savegpr_25
/* 8002EA10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EA14  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8002EA18  80 7F 5C 68 */	lwz r3, 0x5c68(r31)
/* 8002EA1C  38 81 00 40 */	addi r4, r1, 0x40
/* 8002EA20  38 A0 08 00 */	li r5, 0x800
/* 8002EA24  3C C0 80 38 */	lis r6, d_com_d_com_inf_game__stringBase0@ha
/* 8002EA28  38 C6 8F 38 */	addi r6, r6, d_com_d_com_inf_game__stringBase0@l
/* 8002EA2C  38 C6 01 52 */	addi r6, r6, 0x152
/* 8002EA30  81 83 00 00 */	lwz r12, 0(r3)
/* 8002EA34  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8002EA38  7D 89 03 A6 */	mtctr r12
/* 8002EA3C  4E 80 04 21 */	bctrl 
/* 8002EA40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8002EA44  3B A1 00 40 */	addi r29, r1, 0x40
/* 8002EA48  7F BD 02 14 */	add r29, r29, r0
/* 8002EA4C  3B 9D 00 04 */	addi r28, r29, 4
/* 8002EA50  38 60 00 00 */	li r3, 0
/* 8002EA54  38 C0 00 FF */	li r6, 0xff
/* 8002EA58  3C 80 80 3F */	lis r4, mStatus__20dStage_roomControl_c@ha
/* 8002EA5C  38 A4 60 94 */	addi r5, r4, mStatus__20dStage_roomControl_c@l
/* 8002EA60  38 00 00 40 */	li r0, 0x40
/* 8002EA64  7C 09 03 A6 */	mtctr r0
lbl_8002EA68:
/* 8002EA68  7C 85 1A 14 */	add r4, r5, r3
/* 8002EA6C  98 C4 03 F9 */	stb r6, 0x3f9(r4)
/* 8002EA70  38 63 04 04 */	addi r3, r3, 0x404
/* 8002EA74  42 00 FF F4 */	bdnz lbl_8002EA68
/* 8002EA78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EA7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EA80  3B C3 00 64 */	addi r30, r3, 0x64
/* 8002EA84  38 00 00 00 */	li r0, 0
/* 8002EA88  98 03 00 7C */	stb r0, 0x7c(r3)
/* 8002EA8C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8002EA90  38 80 13 01 */	li r4, 0x1301
/* 8002EA94  48 00 5F 29 */	bl isEventBit__11dSv_event_cCFUs
/* 8002EA98  2C 03 00 00 */	cmpwi r3, 0
/* 8002EA9C  40 82 01 54 */	bne lbl_8002EBF0
/* 8002EAA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EAA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EAA8  3B 43 4E 00 */	addi r26, r3, 0x4e00
/* 8002EAAC  7F 43 D3 78 */	mr r3, r26
/* 8002EAB0  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002EAB4  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002EAB8  38 84 00 9E */	addi r4, r4, 0x9e
/* 8002EABC  48 33 9E D9 */	bl strcmp
/* 8002EAC0  2C 03 00 00 */	cmpwi r3, 0
/* 8002EAC4  40 82 00 14 */	bne lbl_8002EAD8
/* 8002EAC8  38 60 00 00 */	li r3, 0
/* 8002EACC  4B FF DE B1 */	bl getLayerNo__14dComIfG_play_cFi
/* 8002EAD0  2C 03 00 0C */	cmpwi r3, 0xc
/* 8002EAD4  41 82 01 1C */	beq lbl_8002EBF0
lbl_8002EAD8:
/* 8002EAD8  7F 43 D3 78 */	mr r3, r26
/* 8002EADC  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002EAE0  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002EAE4  38 84 00 4F */	addi r4, r4, 0x4f
/* 8002EAE8  48 33 9E AD */	bl strcmp
/* 8002EAEC  2C 03 00 00 */	cmpwi r3, 0
/* 8002EAF0  40 82 00 60 */	bne lbl_8002EB50
/* 8002EAF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EAF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EAFC  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8002EB00  2C 00 00 01 */	cmpwi r0, 1
/* 8002EB04  40 82 00 4C */	bne lbl_8002EB50
/* 8002EB08  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8002EB0C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8002EB10  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8002EB14  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8002EB18  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8002EB1C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8002EB20  C0 02 83 18 */	lfs f0, lit_6980(r2)
/* 8002EB24  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8002EB28  C0 02 83 1C */	lfs f0, lit_6981(r2)
/* 8002EB2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8002EB30  7F C3 F3 78 */	mr r3, r30
/* 8002EB34  7F 44 D3 78 */	mr r4, r26
/* 8002EB38  38 A1 00 20 */	addi r5, r1, 0x20
/* 8002EB3C  38 C0 00 00 */	li r6, 0
/* 8002EB40  38 E0 00 00 */	li r7, 0
/* 8002EB44  39 00 00 04 */	li r8, 4
/* 8002EB48  48 00 42 99 */	bl set__33dSv_player_field_last_stay_info_cFPCcRC4cXyzsScUc
/* 8002EB4C  48 00 00 A4 */	b lbl_8002EBF0
lbl_8002EB50:
/* 8002EB50  3B 60 00 00 */	li r27, 0
/* 8002EB54  3B 40 00 00 */	li r26, 0
/* 8002EB58  48 00 00 8C */	b lbl_8002EBE4
lbl_8002EB5C:
/* 8002EB5C  38 61 00 40 */	addi r3, r1, 0x40
/* 8002EB60  48 19 7A CD */	bl dMenuFmap_getStartStageName__FPv
/* 8002EB64  7F 3C D2 14 */	add r25, r28, r26
/* 8002EB68  7F 24 CB 78 */	mr r4, r25
/* 8002EB6C  48 33 9E 29 */	bl strcmp
/* 8002EB70  2C 03 00 00 */	cmpwi r3, 0
/* 8002EB74  40 82 00 68 */	bne lbl_8002EBDC
/* 8002EB78  88 19 00 08 */	lbz r0, 8(r25)
/* 8002EB7C  28 00 00 FF */	cmplwi r0, 0xff
/* 8002EB80  40 82 00 3C */	bne lbl_8002EBBC
/* 8002EB84  38 60 00 00 */	li r3, 0
/* 8002EB88  3C 80 80 3F */	lis r4, mStatus__20dStage_roomControl_c@ha
/* 8002EB8C  38 A4 60 94 */	addi r5, r4, mStatus__20dStage_roomControl_c@l
/* 8002EB90  38 00 00 40 */	li r0, 0x40
/* 8002EB94  7C 09 03 A6 */	mtctr r0
lbl_8002EB98:
/* 8002EB98  7C 85 1A 14 */	add r4, r5, r3
/* 8002EB9C  8C 04 03 F9 */	lbzu r0, 0x3f9(r4)
/* 8002EBA0  28 00 00 FF */	cmplwi r0, 0xff
/* 8002EBA4  40 82 00 0C */	bne lbl_8002EBB0
/* 8002EBA8  88 19 00 09 */	lbz r0, 9(r25)
/* 8002EBAC  98 04 00 00 */	stb r0, 0(r4)
lbl_8002EBB0:
/* 8002EBB0  38 63 04 04 */	addi r3, r3, 0x404
/* 8002EBB4  42 00 FF E4 */	bdnz lbl_8002EB98
/* 8002EBB8  48 00 00 1C */	b lbl_8002EBD4
lbl_8002EBBC:
/* 8002EBBC  88 B9 00 09 */	lbz r5, 9(r25)
/* 8002EBC0  1C 80 04 04 */	mulli r4, r0, 0x404
/* 8002EBC4  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 8002EBC8  38 03 60 94 */	addi r0, r3, mStatus__20dStage_roomControl_c@l
/* 8002EBCC  7C 60 22 14 */	add r3, r0, r4
/* 8002EBD0  98 A3 03 F9 */	stb r5, 0x3f9(r3)
lbl_8002EBD4:
/* 8002EBD4  38 00 00 01 */	li r0, 1
/* 8002EBD8  98 1E 00 18 */	stb r0, 0x18(r30)
lbl_8002EBDC:
/* 8002EBDC  3B 7B 00 01 */	addi r27, r27, 1
/* 8002EBE0  3B 5A 00 14 */	addi r26, r26, 0x14
lbl_8002EBE4:
/* 8002EBE4  88 1D 00 00 */	lbz r0, 0(r29)
/* 8002EBE8  7C 1B 00 00 */	cmpw r27, r0
/* 8002EBEC  41 80 FF 70 */	blt lbl_8002EB5C
lbl_8002EBF0:
/* 8002EBF0  88 1E 00 18 */	lbz r0, 0x18(r30)
/* 8002EBF4  28 00 00 00 */	cmplwi r0, 0
/* 8002EBF8  40 82 00 2C */	bne lbl_8002EC24
/* 8002EBFC  38 60 00 00 */	li r3, 0
/* 8002EC00  88 DE 00 17 */	lbz r6, 0x17(r30)
/* 8002EC04  3C 80 80 3F */	lis r4, mStatus__20dStage_roomControl_c@ha
/* 8002EC08  38 A4 60 94 */	addi r5, r4, mStatus__20dStage_roomControl_c@l
/* 8002EC0C  38 00 00 40 */	li r0, 0x40
/* 8002EC10  7C 09 03 A6 */	mtctr r0
lbl_8002EC14:
/* 8002EC14  7C 85 1A 14 */	add r4, r5, r3
/* 8002EC18  98 C4 03 F9 */	stb r6, 0x3f9(r4)
/* 8002EC1C  38 63 04 04 */	addi r3, r3, 0x404
/* 8002EC20  42 00 FF F4 */	bdnz lbl_8002EC14
lbl_8002EC24:
/* 8002EC24  80 7F 5C 68 */	lwz r3, 0x5c68(r31)
/* 8002EC28  81 83 00 00 */	lwz r12, 0(r3)
/* 8002EC2C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8002EC30  7D 89 03 A6 */	mtctr r12
/* 8002EC34  4E 80 04 21 */	bctrl 
/* 8002EC38  81 41 00 00 */	lwz r10, 0(r1)
/* 8002EC3C  7D 4B 53 78 */	mr r11, r10
/* 8002EC40  48 33 35 D9 */	bl _restgpr_25
/* 8002EC44  80 0A 00 04 */	lwz r0, 4(r10)
/* 8002EC48  7C 08 03 A6 */	mtlr r0
/* 8002EC4C  7D 41 53 78 */	mr r1, r10
/* 8002EC50  4E 80 00 20 */	blr 

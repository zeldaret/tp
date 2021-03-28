lbl_80A86BEC:
/* 80A86BEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A86BF0  7C 08 02 A6 */	mflr r0
/* 80A86BF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A86BF8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A86BFC  4B 8D B5 D4 */	b _savegpr_26
/* 80A86C00  7C 7C 1B 78 */	mr r28, r3
/* 80A86C04  7C 9A 23 78 */	mr r26, r4
/* 80A86C08  3C 60 80 A9 */	lis r3, m__19daNpc_myna2_Param_c@ha
/* 80A86C0C  3B E3 84 34 */	addi r31, r3, m__19daNpc_myna2_Param_c@l
/* 80A86C10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A86C14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A86C18  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A86C1C  3B C0 00 00 */	li r30, 0
/* 80A86C20  3B A0 FF FF */	li r29, -1
/* 80A86C24  38 7C 0B E8 */	addi r3, r28, 0xbe8
/* 80A86C28  38 80 00 00 */	li r4, 0
/* 80A86C2C  4B 83 AF F8 */	b playSumomoBgm__16Z2CreatureSumomoFUl
/* 80A86C30  7F 63 DB 78 */	mr r3, r27
/* 80A86C34  7F 44 D3 78 */	mr r4, r26
/* 80A86C38  3C A0 80 A9 */	lis r5, struct_80A88654+0x0@ha
/* 80A86C3C  38 A5 86 54 */	addi r5, r5, struct_80A88654+0x0@l
/* 80A86C40  38 A5 00 5C */	addi r5, r5, 0x5c
/* 80A86C44  38 C0 00 03 */	li r6, 3
/* 80A86C48  4B 5C 14 A4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A86C4C  28 03 00 00 */	cmplwi r3, 0
/* 80A86C50  41 82 00 08 */	beq lbl_80A86C58
/* 80A86C54  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A86C58:
/* 80A86C58  7F 63 DB 78 */	mr r3, r27
/* 80A86C5C  7F 44 D3 78 */	mr r4, r26
/* 80A86C60  4B 5C 10 EC */	b getIsAddvance__16dEvent_manager_cFi
/* 80A86C64  2C 03 00 00 */	cmpwi r3, 0
/* 80A86C68  41 82 00 C0 */	beq lbl_80A86D28
/* 80A86C6C  28 1D 00 1E */	cmplwi r29, 0x1e
/* 80A86C70  41 81 00 B8 */	bgt lbl_80A86D28
/* 80A86C74  3C 60 80 A9 */	lis r3, lit_5497@ha
/* 80A86C78  38 63 89 48 */	addi r3, r3, lit_5497@l
/* 80A86C7C  57 A0 10 3A */	slwi r0, r29, 2
/* 80A86C80  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A86C84  7C 09 03 A6 */	mtctr r0
/* 80A86C88  4E 80 04 20 */	bctr 
lbl_80A86C8C:
/* 80A86C8C  38 60 00 0F */	li r3, 0xf
/* 80A86C90  4B 6C EA A4 */	b daNpcF_offTmpBit__FUl
/* 80A86C94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A86C98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A86C9C  80 03 09 48 */	lwz r0, 0x948(r3)
/* 80A86CA0  80 83 5E 0C */	lwz r4, 0x5e0c(r3)
/* 80A86CA4  7C 04 00 40 */	cmplw r4, r0
/* 80A86CA8  40 81 00 80 */	ble lbl_80A86D28
/* 80A86CAC  90 83 09 48 */	stw r4, 0x948(r3)
/* 80A86CB0  38 60 00 4B */	li r3, 0x4b
/* 80A86CB4  4B 6C EA 40 */	b daNpcF_onTmpBit__FUl
/* 80A86CB8  48 00 00 70 */	b lbl_80A86D28
lbl_80A86CBC:
/* 80A86CBC  7F 83 E3 78 */	mr r3, r28
/* 80A86CC0  80 9C 0E 04 */	lwz r4, 0xe04(r28)
/* 80A86CC4  38 A0 00 00 */	li r5, 0
/* 80A86CC8  4B 6C D0 54 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A86CCC  48 00 00 5C */	b lbl_80A86D28
lbl_80A86CD0:
/* 80A86CD0  38 00 00 00 */	li r0, 0
/* 80A86CD4  90 01 00 08 */	stw r0, 8(r1)
/* 80A86CD8  38 7C 09 F8 */	addi r3, r28, 0x9f8
/* 80A86CDC  38 81 00 08 */	addi r4, r1, 8
/* 80A86CE0  4B 7C 38 48 */	b getEventId__10dMsgFlow_cFPi
/* 80A86CE4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A86CE8  28 00 00 01 */	cmplwi r0, 1
/* 80A86CEC  40 82 00 3C */	bne lbl_80A86D28
/* 80A86CF0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80A86CF4  80 81 00 08 */	lwz r4, 8(r1)
/* 80A86CF8  38 A0 00 00 */	li r5, 0
/* 80A86CFC  38 C0 FF FF */	li r6, -1
/* 80A86D00  38 E0 FF FF */	li r7, -1
/* 80A86D04  39 00 00 00 */	li r8, 0
/* 80A86D08  39 20 00 00 */	li r9, 0
/* 80A86D0C  4B 59 4E DC */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80A86D10  90 7C 0D F0 */	stw r3, 0xdf0(r28)
/* 80A86D14  48 00 00 14 */	b lbl_80A86D28
lbl_80A86D18:
/* 80A86D18  7F 83 E3 78 */	mr r3, r28
/* 80A86D1C  80 9C 0E 04 */	lwz r4, 0xe04(r28)
/* 80A86D20  38 A0 00 00 */	li r5, 0
/* 80A86D24  4B 6C CF F8 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80A86D28:
/* 80A86D28  28 1D 00 1E */	cmplwi r29, 0x1e
/* 80A86D2C  41 81 01 40 */	bgt lbl_80A86E6C
/* 80A86D30  3C 60 80 A9 */	lis r3, lit_5498@ha
/* 80A86D34  38 63 88 CC */	addi r3, r3, lit_5498@l
/* 80A86D38  57 A0 10 3A */	slwi r0, r29, 2
/* 80A86D3C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A86D40  7C 09 03 A6 */	mtctr r0
/* 80A86D44  4E 80 04 20 */	bctr 
lbl_80A86D48:
/* 80A86D48  7F 83 E3 78 */	mr r3, r28
/* 80A86D4C  38 80 00 00 */	li r4, 0
/* 80A86D50  38 A0 00 01 */	li r5, 1
/* 80A86D54  48 00 01 39 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86D58  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80A86D5C  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 80A86D60  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A86D64  EC 01 00 2A */	fadds f0, f1, f0
/* 80A86D68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A86D6C  4C 40 13 82 */	cror 2, 0, 2
/* 80A86D70  40 82 01 00 */	bne lbl_80A86E70
/* 80A86D74  3B C0 00 01 */	li r30, 1
/* 80A86D78  48 00 00 F8 */	b lbl_80A86E70
lbl_80A86D7C:
/* 80A86D7C  7F 83 E3 78 */	mr r3, r28
/* 80A86D80  38 80 00 00 */	li r4, 0
/* 80A86D84  38 A0 00 01 */	li r5, 1
/* 80A86D88  48 00 01 05 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86D8C  7F 83 E3 78 */	mr r3, r28
/* 80A86D90  38 80 00 00 */	li r4, 0
/* 80A86D94  38 A0 00 01 */	li r5, 1
/* 80A86D98  38 C0 00 00 */	li r6, 0
/* 80A86D9C  4B 6C CF E8 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A86DA0  2C 03 00 00 */	cmpwi r3, 0
/* 80A86DA4  41 82 00 CC */	beq lbl_80A86E70
/* 80A86DA8  3B C0 00 01 */	li r30, 1
/* 80A86DAC  48 00 00 C4 */	b lbl_80A86E70
lbl_80A86DB0:
/* 80A86DB0  38 00 00 01 */	li r0, 1
/* 80A86DB4  98 1C 09 EB */	stb r0, 0x9eb(r28)
/* 80A86DB8  7F 83 E3 78 */	mr r3, r28
/* 80A86DBC  38 80 00 00 */	li r4, 0
/* 80A86DC0  38 A0 00 01 */	li r5, 1
/* 80A86DC4  48 00 00 C9 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86DC8  3B C0 00 01 */	li r30, 1
/* 80A86DCC  48 00 00 A4 */	b lbl_80A86E70
lbl_80A86DD0:
/* 80A86DD0  7F 83 E3 78 */	mr r3, r28
/* 80A86DD4  38 80 00 00 */	li r4, 0
/* 80A86DD8  38 A0 00 01 */	li r5, 1
/* 80A86DDC  48 00 00 B1 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86DE0  7F 83 E3 78 */	mr r3, r28
/* 80A86DE4  38 80 00 00 */	li r4, 0
/* 80A86DE8  38 A0 00 01 */	li r5, 1
/* 80A86DEC  38 C0 00 00 */	li r6, 0
/* 80A86DF0  4B 6C CF 94 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A86DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80A86DF8  41 82 00 78 */	beq lbl_80A86E70
/* 80A86DFC  A0 1C 0A 32 */	lhz r0, 0xa32(r28)
/* 80A86E00  7C 00 07 35 */	extsh. r0, r0
/* 80A86E04  40 82 00 28 */	bne lbl_80A86E2C
/* 80A86E08  38 60 00 0B */	li r3, 0xb
/* 80A86E0C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A86E10  38 80 00 0A */	li r4, 0xa
/* 80A86E14  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80A86E18  7C 05 07 74 */	extsb r5, r0
/* 80A86E1C  38 C0 00 00 */	li r6, 0
/* 80A86E20  38 E0 FF FF */	li r7, -1
/* 80A86E24  4B 5A 03 4C */	b dStage_changeScene__FifUlScsi
/* 80A86E28  48 00 00 48 */	b lbl_80A86E70
lbl_80A86E2C:
/* 80A86E2C  3B C0 00 01 */	li r30, 1
/* 80A86E30  48 00 00 40 */	b lbl_80A86E70
lbl_80A86E34:
/* 80A86E34  38 00 00 01 */	li r0, 1
/* 80A86E38  98 1C 09 EB */	stb r0, 0x9eb(r28)
/* 80A86E3C  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80A86E40  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 80A86E44  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A86E48  EC 01 00 2A */	fadds f0, f1, f0
/* 80A86E4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A86E50  40 81 00 08 */	ble lbl_80A86E58
/* 80A86E54  3B C0 00 01 */	li r30, 1
lbl_80A86E58:
/* 80A86E58  7F 83 E3 78 */	mr r3, r28
/* 80A86E5C  38 80 00 01 */	li r4, 1
/* 80A86E60  38 A0 00 00 */	li r5, 0
/* 80A86E64  48 00 00 29 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86E68  48 00 00 08 */	b lbl_80A86E70
lbl_80A86E6C:
/* 80A86E6C  3B C0 00 01 */	li r30, 1
lbl_80A86E70:
/* 80A86E70  7F C3 F3 78 */	mr r3, r30
/* 80A86E74  39 61 00 30 */	addi r11, r1, 0x30
/* 80A86E78  4B 8D B3 A4 */	b _restgpr_26
/* 80A86E7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A86E80  7C 08 03 A6 */	mtlr r0
/* 80A86E84  38 21 00 30 */	addi r1, r1, 0x30
/* 80A86E88  4E 80 00 20 */	blr 

lbl_80A04CDC:
/* 80A04CDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A04CE0  7C 08 02 A6 */	mflr r0
/* 80A04CE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A04CE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A04CEC  4B 95 D4 E9 */	bl _savegpr_27
/* 80A04CF0  7C 7B 1B 78 */	mr r27, r3
/* 80A04CF4  7C 9C 23 78 */	mr r28, r4
/* 80A04CF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A04CFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A04D00  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A04D04  3B C0 00 00 */	li r30, 0
/* 80A04D08  3B A0 FF FF */	li r29, -1
/* 80A04D0C  7F E3 FB 78 */	mr r3, r31
/* 80A04D10  3C A0 80 A0 */	lis r5, d_a_npc_hoz__stringBase0@ha /* 0x80A06764@ha */
/* 80A04D14  38 A5 67 64 */	addi r5, r5, d_a_npc_hoz__stringBase0@l /* 0x80A06764@l */
/* 80A04D18  38 A5 00 9C */	addi r5, r5, 0x9c
/* 80A04D1C  38 C0 00 03 */	li r6, 3
/* 80A04D20  4B 64 33 CD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A04D24  28 03 00 00 */	cmplwi r3, 0
/* 80A04D28  41 82 00 08 */	beq lbl_80A04D30
/* 80A04D2C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A04D30:
/* 80A04D30  7F E3 FB 78 */	mr r3, r31
/* 80A04D34  7F 84 E3 78 */	mr r4, r28
/* 80A04D38  4B 64 30 15 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A04D3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A04D40  41 82 00 2C */	beq lbl_80A04D6C
/* 80A04D44  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A04D48  41 82 00 14 */	beq lbl_80A04D5C
/* 80A04D4C  40 80 00 20 */	bge lbl_80A04D6C
/* 80A04D50  2C 1D 00 00 */	cmpwi r29, 0
/* 80A04D54  41 82 00 18 */	beq lbl_80A04D6C
/* 80A04D58  48 00 00 14 */	b lbl_80A04D6C
lbl_80A04D5C:
/* 80A04D5C  7F 63 DB 78 */	mr r3, r27
/* 80A04D60  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80A04D64  38 A0 00 00 */	li r5, 0
/* 80A04D68  4B 74 6E 89 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A04D6C:
/* 80A04D6C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A04D70  41 82 00 6C */	beq lbl_80A04DDC
/* 80A04D74  40 80 00 90 */	bge lbl_80A04E04
/* 80A04D78  2C 1D 00 00 */	cmpwi r29, 0
/* 80A04D7C  41 82 00 08 */	beq lbl_80A04D84
/* 80A04D80  48 00 00 84 */	b lbl_80A04E04
lbl_80A04D84:
/* 80A04D84  7F 63 DB 78 */	mr r3, r27
/* 80A04D88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A04D8C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A04D90  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A04D94  4B 61 59 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A04D98  A8 9B 0D 7A */	lha r4, 0xd7a(r27)
/* 80A04D9C  7C 60 07 34 */	extsh r0, r3
/* 80A04DA0  7C 04 00 00 */	cmpw r4, r0
/* 80A04DA4  41 82 00 30 */	beq lbl_80A04DD4
/* 80A04DA8  7F 63 DB 78 */	mr r3, r27
/* 80A04DAC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A04DB0  4B 61 59 61 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A04DB4  7C 64 1B 78 */	mr r4, r3
/* 80A04DB8  7F 63 DB 78 */	mr r3, r27
/* 80A04DBC  38 A0 FF FF */	li r5, -1
/* 80A04DC0  38 C0 FF FF */	li r6, -1
/* 80A04DC4  38 E0 00 0F */	li r7, 0xf
/* 80A04DC8  39 00 00 00 */	li r8, 0
/* 80A04DCC  4B 74 68 7D */	bl step__8daNpcT_cFsiiii
/* 80A04DD0  48 00 00 38 */	b lbl_80A04E08
lbl_80A04DD4:
/* 80A04DD4  3B C0 00 01 */	li r30, 1
/* 80A04DD8  48 00 00 30 */	b lbl_80A04E08
lbl_80A04DDC:
/* 80A04DDC  7F 63 DB 78 */	mr r3, r27
/* 80A04DE0  38 80 00 00 */	li r4, 0
/* 80A04DE4  38 A0 00 00 */	li r5, 0
/* 80A04DE8  38 C0 00 00 */	li r6, 0
/* 80A04DEC  38 E0 00 00 */	li r7, 0
/* 80A04DF0  4B 74 6E 89 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A04DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80A04DF8  41 82 00 10 */	beq lbl_80A04E08
/* 80A04DFC  3B C0 00 01 */	li r30, 1
/* 80A04E00  48 00 00 08 */	b lbl_80A04E08
lbl_80A04E04:
/* 80A04E04  3B C0 00 01 */	li r30, 1
lbl_80A04E08:
/* 80A04E08  7F C3 F3 78 */	mr r3, r30
/* 80A04E0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A04E10  4B 95 D4 11 */	bl _restgpr_27
/* 80A04E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A04E18  7C 08 03 A6 */	mtlr r0
/* 80A04E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A04E20  4E 80 00 20 */	blr 

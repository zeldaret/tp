lbl_80539CF4:
/* 80539CF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80539CF8  7C 08 02 A6 */	mflr r0
/* 80539CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80539D00  39 61 00 20 */	addi r11, r1, 0x20
/* 80539D04  4B E2 84 D1 */	bl _savegpr_27
/* 80539D08  7C 7E 1B 78 */	mr r30, r3
/* 80539D0C  7C 9B 23 78 */	mr r27, r4
/* 80539D10  3B E0 00 00 */	li r31, 0
/* 80539D14  3B 80 FF FF */	li r28, -1
/* 80539D18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80539D1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80539D20  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80539D24  7F A3 EB 78 */	mr r3, r29
/* 80539D28  3C A0 80 54 */	lis r5, d_a_npc_besu__stringBase0@ha /* 0x8053E908@ha */
/* 80539D2C  38 A5 E9 08 */	addi r5, r5, d_a_npc_besu__stringBase0@l /* 0x8053E908@l */
/* 80539D30  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 80539D34  38 C0 00 03 */	li r6, 3
/* 80539D38  4B B0 E3 B5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80539D3C  28 03 00 00 */	cmplwi r3, 0
/* 80539D40  41 82 00 08 */	beq lbl_80539D48
/* 80539D44  83 83 00 00 */	lwz r28, 0(r3)
lbl_80539D48:
/* 80539D48  7F A3 EB 78 */	mr r3, r29
/* 80539D4C  7F 64 DB 78 */	mr r4, r27
/* 80539D50  4B B0 DF FD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80539D54  2C 03 00 00 */	cmpwi r3, 0
/* 80539D58  41 82 00 48 */	beq lbl_80539DA0
/* 80539D5C  2C 1C 00 01 */	cmpwi r28, 1
/* 80539D60  41 82 00 40 */	beq lbl_80539DA0
/* 80539D64  40 80 00 3C */	bge lbl_80539DA0
/* 80539D68  2C 1C 00 00 */	cmpwi r28, 0
/* 80539D6C  40 80 00 08 */	bge lbl_80539D74
/* 80539D70  48 00 00 30 */	b lbl_80539DA0
lbl_80539D74:
/* 80539D74  7F C3 F3 78 */	mr r3, r30
/* 80539D78  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80539D7C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80539D80  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80539D84  4B AE 09 8D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80539D88  B0 7E 0D C8 */	sth r3, 0xdc8(r30)
/* 80539D8C  A8 1E 0D D8 */	lha r0, 0xdd8(r30)
/* 80539D90  2C 00 00 01 */	cmpwi r0, 1
/* 80539D94  40 82 00 0C */	bne lbl_80539DA0
/* 80539D98  38 00 00 00 */	li r0, 0
/* 80539D9C  B0 1E 0D D8 */	sth r0, 0xdd8(r30)
lbl_80539DA0:
/* 80539DA0  2C 1C 00 01 */	cmpwi r28, 1
/* 80539DA4  41 82 00 1C */	beq lbl_80539DC0
/* 80539DA8  40 80 00 84 */	bge lbl_80539E2C
/* 80539DAC  2C 1C 00 00 */	cmpwi r28, 0
/* 80539DB0  40 80 00 08 */	bge lbl_80539DB8
/* 80539DB4  48 00 00 78 */	b lbl_80539E2C
lbl_80539DB8:
/* 80539DB8  3B E0 00 01 */	li r31, 1
/* 80539DBC  48 00 00 70 */	b lbl_80539E2C
lbl_80539DC0:
/* 80539DC0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80539DC4  2C 00 00 01 */	cmpwi r0, 1
/* 80539DC8  41 82 00 2C */	beq lbl_80539DF4
/* 80539DCC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80539DD0  4B C0 B9 2D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80539DD4  38 00 00 00 */	li r0, 0
/* 80539DD8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80539DDC  3C 60 80 54 */	lis r3, lit_4337@ha /* 0x8053E844@ha */
/* 80539DE0  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)  /* 0x8053E844@l */
/* 80539DE4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80539DE8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80539DEC  38 00 00 01 */	li r0, 1
/* 80539DF0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80539DF4:
/* 80539DF4  38 00 00 00 */	li r0, 0
/* 80539DF8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80539DFC  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 80539E00  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80539E04  7C 04 00 00 */	cmpw r4, r0
/* 80539E08  41 82 00 20 */	beq lbl_80539E28
/* 80539E0C  7F C3 F3 78 */	mr r3, r30
/* 80539E10  38 A0 00 1C */	li r5, 0x1c
/* 80539E14  38 C0 00 11 */	li r6, 0x11
/* 80539E18  38 E0 00 0F */	li r7, 0xf
/* 80539E1C  39 00 00 00 */	li r8, 0
/* 80539E20  4B C1 18 29 */	bl step__8daNpcT_cFsiiii
/* 80539E24  48 00 00 08 */	b lbl_80539E2C
lbl_80539E28:
/* 80539E28  3B E0 00 01 */	li r31, 1
lbl_80539E2C:
/* 80539E2C  7F E3 FB 78 */	mr r3, r31
/* 80539E30  39 61 00 20 */	addi r11, r1, 0x20
/* 80539E34  4B E2 83 ED */	bl _restgpr_27
/* 80539E38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80539E3C  7C 08 03 A6 */	mtlr r0
/* 80539E40  38 21 00 20 */	addi r1, r1, 0x20
/* 80539E44  4E 80 00 20 */	blr 

lbl_80557D04:
/* 80557D04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80557D08  7C 08 02 A6 */	mflr r0
/* 80557D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80557D10  39 61 00 20 */	addi r11, r1, 0x20
/* 80557D14  4B E0 A4 C1 */	bl _savegpr_27
/* 80557D18  7C 7B 1B 78 */	mr r27, r3
/* 80557D1C  7C 9C 23 78 */	mr r28, r4
/* 80557D20  3B C0 00 00 */	li r30, 0
/* 80557D24  3B A0 FF FF */	li r29, -1
/* 80557D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80557D2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80557D30  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80557D34  7F E3 FB 78 */	mr r3, r31
/* 80557D38  3C A0 80 56 */	lis r5, d_a_npc_kolin__stringBase0@ha /* 0x8055A77C@ha */
/* 80557D3C  38 A5 A7 7C */	addi r5, r5, d_a_npc_kolin__stringBase0@l /* 0x8055A77C@l */
/* 80557D40  38 A5 01 39 */	addi r5, r5, 0x139
/* 80557D44  38 C0 00 03 */	li r6, 3
/* 80557D48  4B AF 03 A5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80557D4C  28 03 00 00 */	cmplwi r3, 0
/* 80557D50  41 82 00 08 */	beq lbl_80557D58
/* 80557D54  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80557D58:
/* 80557D58  7F E3 FB 78 */	mr r3, r31
/* 80557D5C  7F 84 E3 78 */	mr r4, r28
/* 80557D60  4B AE FF ED */	bl getIsAddvance__16dEvent_manager_cFi
/* 80557D64  2C 03 00 00 */	cmpwi r3, 0
/* 80557D68  41 82 00 2C */	beq lbl_80557D94
/* 80557D6C  2C 1D 00 01 */	cmpwi r29, 1
/* 80557D70  41 82 00 24 */	beq lbl_80557D94
/* 80557D74  40 80 00 20 */	bge lbl_80557D94
/* 80557D78  2C 1D 00 00 */	cmpwi r29, 0
/* 80557D7C  40 80 00 08 */	bge lbl_80557D84
/* 80557D80  48 00 00 14 */	b lbl_80557D94
lbl_80557D84:
/* 80557D84  7F 63 DB 78 */	mr r3, r27
/* 80557D88  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80557D8C  38 A0 00 00 */	li r5, 0
/* 80557D90  4B BF 3E 61 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80557D94:
/* 80557D94  2C 1D 00 01 */	cmpwi r29, 1
/* 80557D98  41 82 00 80 */	beq lbl_80557E18
/* 80557D9C  40 80 00 80 */	bge lbl_80557E1C
/* 80557DA0  2C 1D 00 00 */	cmpwi r29, 0
/* 80557DA4  40 80 00 08 */	bge lbl_80557DAC
/* 80557DA8  48 00 00 74 */	b lbl_80557E1C
lbl_80557DAC:
/* 80557DAC  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80557DB0  2C 00 00 00 */	cmpwi r0, 0
/* 80557DB4  41 82 00 28 */	beq lbl_80557DDC
/* 80557DB8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80557DBC  4B BE D9 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80557DC0  38 00 00 00 */	li r0, 0
/* 80557DC4  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80557DC8  3C 60 80 56 */	lis r3, lit_4110@ha /* 0x8055A6A0@ha */
/* 80557DCC  C0 03 A6 A0 */	lfs f0, lit_4110@l(r3)  /* 0x8055A6A0@l */
/* 80557DD0  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80557DD4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80557DD8  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80557DDC:
/* 80557DDC  38 00 00 00 */	li r0, 0
/* 80557DE0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80557DE4  7F 63 DB 78 */	mr r3, r27
/* 80557DE8  38 80 00 00 */	li r4, 0
/* 80557DEC  38 A0 00 00 */	li r5, 0
/* 80557DF0  38 C0 00 00 */	li r6, 0
/* 80557DF4  38 E0 00 00 */	li r7, 0
/* 80557DF8  4B BF 3E 81 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80557DFC  2C 03 00 00 */	cmpwi r3, 0
/* 80557E00  41 82 00 1C */	beq lbl_80557E1C
/* 80557E04  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80557E08  28 00 00 01 */	cmplwi r0, 1
/* 80557E0C  40 82 00 10 */	bne lbl_80557E1C
/* 80557E10  3B C0 00 01 */	li r30, 1
/* 80557E14  48 00 00 08 */	b lbl_80557E1C
lbl_80557E18:
/* 80557E18  3B C0 00 01 */	li r30, 1
lbl_80557E1C:
/* 80557E1C  7F C3 F3 78 */	mr r3, r30
/* 80557E20  39 61 00 20 */	addi r11, r1, 0x20
/* 80557E24  4B E0 A3 FD */	bl _restgpr_27
/* 80557E28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80557E2C  7C 08 03 A6 */	mtlr r0
/* 80557E30  38 21 00 20 */	addi r1, r1, 0x20
/* 80557E34  4E 80 00 20 */	blr 

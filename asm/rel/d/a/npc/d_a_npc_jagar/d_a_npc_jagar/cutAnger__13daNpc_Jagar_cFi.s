lbl_80A16CD8:
/* 80A16CD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A16CDC  7C 08 02 A6 */	mflr r0
/* 80A16CE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A16CE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A16CE8  4B 94 B4 ED */	bl _savegpr_27
/* 80A16CEC  7C 7D 1B 78 */	mr r29, r3
/* 80A16CF0  7C 9B 23 78 */	mr r27, r4
/* 80A16CF4  3B E0 00 00 */	li r31, 0
/* 80A16CF8  3B C0 FF FF */	li r30, -1
/* 80A16CFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A16D00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A16D04  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A16D08  7F 83 E3 78 */	mr r3, r28
/* 80A16D0C  3C A0 80 A2 */	lis r5, d_a_npc_jagar__stringBase0@ha /* 0x80A1A49C@ha */
/* 80A16D10  38 A5 A4 9C */	addi r5, r5, d_a_npc_jagar__stringBase0@l /* 0x80A1A49C@l */
/* 80A16D14  38 A5 00 8E */	addi r5, r5, 0x8e
/* 80A16D18  38 C0 00 03 */	li r6, 3
/* 80A16D1C  4B 63 13 D1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A16D20  28 03 00 00 */	cmplwi r3, 0
/* 80A16D24  41 82 00 08 */	beq lbl_80A16D2C
/* 80A16D28  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A16D2C:
/* 80A16D2C  7F 83 E3 78 */	mr r3, r28
/* 80A16D30  7F 64 DB 78 */	mr r4, r27
/* 80A16D34  4B 63 10 19 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A16D38  2C 03 00 00 */	cmpwi r3, 0
/* 80A16D3C  41 82 00 B4 */	beq lbl_80A16DF0
/* 80A16D40  2C 1E 00 01 */	cmpwi r30, 1
/* 80A16D44  41 82 00 AC */	beq lbl_80A16DF0
/* 80A16D48  40 80 00 A8 */	bge lbl_80A16DF0
/* 80A16D4C  2C 1E 00 00 */	cmpwi r30, 0
/* 80A16D50  40 80 00 08 */	bge lbl_80A16D58
/* 80A16D54  48 00 00 9C */	b lbl_80A16DF0
lbl_80A16D58:
/* 80A16D58  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A16D5C  2C 00 00 08 */	cmpwi r0, 8
/* 80A16D60  41 82 00 28 */	beq lbl_80A16D88
/* 80A16D64  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A16D68  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A16D6C  4B 72 EB 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A16D70  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A16D74  38 00 00 08 */	li r0, 8
/* 80A16D78  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A16D7C  3C 60 80 A2 */	lis r3, lit_4169@ha /* 0x80A1A3F0@ha */
/* 80A16D80  C0 03 A3 F0 */	lfs f0, lit_4169@l(r3)  /* 0x80A1A3F0@l */
/* 80A16D84  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A16D88:
/* 80A16D88  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A16D8C  2C 00 00 00 */	cmpwi r0, 0
/* 80A16D90  41 82 00 28 */	beq lbl_80A16DB8
/* 80A16D94  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A16D98  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A16D9C  4B 72 EA FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A16DA0  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A16DA4  38 00 00 00 */	li r0, 0
/* 80A16DA8  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A16DAC  3C 60 80 A2 */	lis r3, lit_4169@ha /* 0x80A1A3F0@ha */
/* 80A16DB0  C0 03 A3 F0 */	lfs f0, lit_4169@l(r3)  /* 0x80A1A3F0@l */
/* 80A16DB4  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A16DB8:
/* 80A16DB8  38 00 00 00 */	li r0, 0
/* 80A16DBC  98 1D 10 03 */	stb r0, 0x1003(r29)
/* 80A16DC0  7F A3 EB 78 */	mr r3, r29
/* 80A16DC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A16DC8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A16DCC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A16DD0  4B 60 39 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A16DD4  7C 64 1B 78 */	mr r4, r3
/* 80A16DD8  7F A3 EB 78 */	mr r3, r29
/* 80A16DDC  4B 73 3C 3D */	bl setAngle__8daNpcT_cFs
/* 80A16DE0  7F A3 EB 78 */	mr r3, r29
/* 80A16DE4  80 9D 0A 7C */	lwz r4, 0xa7c(r29)
/* 80A16DE8  38 A0 00 00 */	li r5, 0
/* 80A16DEC  4B 73 4E 05 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A16DF0:
/* 80A16DF0  2C 1E 00 01 */	cmpwi r30, 1
/* 80A16DF4  41 82 00 84 */	beq lbl_80A16E78
/* 80A16DF8  40 80 00 E8 */	bge lbl_80A16EE0
/* 80A16DFC  2C 1E 00 00 */	cmpwi r30, 0
/* 80A16E00  40 80 00 08 */	bge lbl_80A16E08
/* 80A16E04  48 00 00 DC */	b lbl_80A16EE0
lbl_80A16E08:
/* 80A16E08  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80A16E0C  2C 00 00 01 */	cmpwi r0, 1
/* 80A16E10  41 82 00 2C */	beq lbl_80A16E3C
/* 80A16E14  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A16E18  4B 72 E8 E5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A16E1C  38 00 00 00 */	li r0, 0
/* 80A16E20  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80A16E24  3C 60 80 A2 */	lis r3, lit_4169@ha /* 0x80A1A3F0@ha */
/* 80A16E28  C0 03 A3 F0 */	lfs f0, lit_4169@l(r3)  /* 0x80A1A3F0@l */
/* 80A16E2C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80A16E30  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A16E34  38 00 00 01 */	li r0, 1
/* 80A16E38  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80A16E3C:
/* 80A16E3C  38 00 00 00 */	li r0, 0
/* 80A16E40  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A16E44  7F A3 EB 78 */	mr r3, r29
/* 80A16E48  38 80 00 00 */	li r4, 0
/* 80A16E4C  38 A0 00 00 */	li r5, 0
/* 80A16E50  38 C0 00 00 */	li r6, 0
/* 80A16E54  38 E0 00 00 */	li r7, 0
/* 80A16E58  4B 73 4E 21 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A16E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80A16E60  41 82 00 80 */	beq lbl_80A16EE0
/* 80A16E64  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 80A16E68  28 00 00 01 */	cmplwi r0, 1
/* 80A16E6C  40 82 00 74 */	bne lbl_80A16EE0
/* 80A16E70  3B E0 00 01 */	li r31, 1
/* 80A16E74  48 00 00 6C */	b lbl_80A16EE0
lbl_80A16E78:
/* 80A16E78  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80A16E7C  2C 00 00 00 */	cmpwi r0, 0
/* 80A16E80  41 82 00 28 */	beq lbl_80A16EA8
/* 80A16E84  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A16E88  4B 72 E8 75 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A16E8C  38 00 00 00 */	li r0, 0
/* 80A16E90  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80A16E94  3C 60 80 A2 */	lis r3, lit_4169@ha /* 0x80A1A3F0@ha */
/* 80A16E98  C0 03 A3 F0 */	lfs f0, lit_4169@l(r3)  /* 0x80A1A3F0@l */
/* 80A16E9C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80A16EA0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A16EA4  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80A16EA8:
/* 80A16EA8  38 00 00 00 */	li r0, 0
/* 80A16EAC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A16EB0  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80A16EB4  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80A16EB8  7C 04 00 00 */	cmpw r4, r0
/* 80A16EBC  40 82 00 0C */	bne lbl_80A16EC8
/* 80A16EC0  3B E0 00 01 */	li r31, 1
/* 80A16EC4  48 00 00 1C */	b lbl_80A16EE0
lbl_80A16EC8:
/* 80A16EC8  7F A3 EB 78 */	mr r3, r29
/* 80A16ECC  38 A0 00 08 */	li r5, 8
/* 80A16ED0  38 C0 00 0E */	li r6, 0xe
/* 80A16ED4  38 E0 00 0F */	li r7, 0xf
/* 80A16ED8  39 00 00 00 */	li r8, 0
/* 80A16EDC  4B 73 47 6D */	bl step__8daNpcT_cFsiiii
lbl_80A16EE0:
/* 80A16EE0  7F E3 FB 78 */	mr r3, r31
/* 80A16EE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A16EE8  4B 94 B3 39 */	bl _restgpr_27
/* 80A16EEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A16EF0  7C 08 03 A6 */	mtlr r0
/* 80A16EF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A16EF8  4E 80 00 20 */	blr 

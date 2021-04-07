lbl_80A6D998:
/* 80A6D998  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A6D99C  7C 08 02 A6 */	mflr r0
/* 80A6D9A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A6D9A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A6D9A8  4B 8F 48 29 */	bl _savegpr_26
/* 80A6D9AC  7C 7A 1B 78 */	mr r26, r3
/* 80A6D9B0  7C 9B 23 78 */	mr r27, r4
/* 80A6D9B4  3C 60 80 A7 */	lis r3, m__17daNpc_Lud_Param_c@ha /* 0x80A6FD7C@ha */
/* 80A6D9B8  3B E3 FD 7C */	addi r31, r3, m__17daNpc_Lud_Param_c@l /* 0x80A6FD7C@l */
/* 80A6D9BC  3B A0 00 00 */	li r29, 0
/* 80A6D9C0  3B 80 FF FF */	li r28, -1
/* 80A6D9C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A6D9C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6D9CC  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A6D9D0  7F C3 F3 78 */	mr r3, r30
/* 80A6D9D4  3C A0 80 A7 */	lis r5, d_a_npc_lud__stringBase0@ha /* 0x80A6FECC@ha */
/* 80A6D9D8  38 A5 FE CC */	addi r5, r5, d_a_npc_lud__stringBase0@l /* 0x80A6FECC@l */
/* 80A6D9DC  38 A5 00 A5 */	addi r5, r5, 0xa5
/* 80A6D9E0  38 C0 00 03 */	li r6, 3
/* 80A6D9E4  4B 5D A7 09 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6D9E8  28 03 00 00 */	cmplwi r3, 0
/* 80A6D9EC  41 82 00 08 */	beq lbl_80A6D9F4
/* 80A6D9F0  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A6D9F4:
/* 80A6D9F4  7F C3 F3 78 */	mr r3, r30
/* 80A6D9F8  7F 64 DB 78 */	mr r4, r27
/* 80A6D9FC  3C A0 80 A7 */	lis r5, d_a_npc_lud__stringBase0@ha /* 0x80A6FECC@ha */
/* 80A6DA00  38 A5 FE CC */	addi r5, r5, d_a_npc_lud__stringBase0@l /* 0x80A6FECC@l */
/* 80A6DA04  38 A5 00 BD */	addi r5, r5, 0xbd
/* 80A6DA08  38 C0 00 03 */	li r6, 3
/* 80A6DA0C  4B 5D A6 E1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6DA10  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 80A6DA14  80 1F 01 3C */	lwz r0, 0x13c(r31)
/* 80A6DA18  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A6DA1C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A6DA20  80 1F 01 40 */	lwz r0, 0x140(r31)
/* 80A6DA24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A6DA28  93 41 00 14 */	stw r26, 0x14(r1)
/* 80A6DA2C  38 7A 0F 90 */	addi r3, r26, 0xf90
/* 80A6DA30  4B 6D 7C D9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A6DA34  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A6DA38  38 7A 0F 98 */	addi r3, r26, 0xf98
/* 80A6DA3C  4B 6D 7C CD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A6DA40  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80A6DA44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6DA48  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A6DA4C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6DA50  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80A6DA54  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A6DA58  90 04 5E F4 */	stw r0, 0x5ef4(r4)
/* 80A6DA5C  90 64 5E F8 */	stw r3, 0x5ef8(r4)
/* 80A6DA60  38 00 00 00 */	li r0, 0
/* 80A6DA64  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80A6DA68  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80A6DA6C  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80A6DA70  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80A6DA74  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80A6DA78  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80A6DA7C  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80A6DA80  7F C3 F3 78 */	mr r3, r30
/* 80A6DA84  7F 64 DB 78 */	mr r4, r27
/* 80A6DA88  4B 5D A2 C5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A6DA8C  2C 03 00 00 */	cmpwi r3, 0
/* 80A6DA90  41 82 00 D8 */	beq lbl_80A6DB68
/* 80A6DA94  2C 1C 00 01 */	cmpwi r28, 1
/* 80A6DA98  41 82 00 34 */	beq lbl_80A6DACC
/* 80A6DA9C  40 80 00 10 */	bge lbl_80A6DAAC
/* 80A6DAA0  2C 1C 00 00 */	cmpwi r28, 0
/* 80A6DAA4  40 80 00 14 */	bge lbl_80A6DAB8
/* 80A6DAA8  48 00 00 C0 */	b lbl_80A6DB68
lbl_80A6DAAC:
/* 80A6DAAC  2C 1C 00 03 */	cmpwi r28, 3
/* 80A6DAB0  40 80 00 B8 */	bge lbl_80A6DB68
/* 80A6DAB4  48 00 00 74 */	b lbl_80A6DB28
lbl_80A6DAB8:
/* 80A6DAB8  7F 43 D3 78 */	mr r3, r26
/* 80A6DABC  80 9A 0A 7C */	lwz r4, 0xa7c(r26)
/* 80A6DAC0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A6DAC4  4B 6D E1 2D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A6DAC8  48 00 00 A0 */	b lbl_80A6DB68
lbl_80A6DACC:
/* 80A6DACC  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80A6DAD0  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A6DAD4  41 82 00 24 */	beq lbl_80A6DAF8
/* 80A6DAD8  83 7A 0B 5C */	lwz r27, 0xb5c(r26)
/* 80A6DADC  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80A6DAE0  4B 6D 7D B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DAE4  93 7A 0B 5C */	stw r27, 0xb5c(r26)
/* 80A6DAE8  38 00 00 0E */	li r0, 0xe
/* 80A6DAEC  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80A6DAF0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A6DAF4  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80A6DAF8:
/* 80A6DAF8  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80A6DAFC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A6DB00  41 82 00 68 */	beq lbl_80A6DB68
/* 80A6DB04  83 7A 0B 80 */	lwz r27, 0xb80(r26)
/* 80A6DB08  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80A6DB0C  4B 6D 7D 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DB10  93 7A 0B 80 */	stw r27, 0xb80(r26)
/* 80A6DB14  38 00 00 0F */	li r0, 0xf
/* 80A6DB18  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80A6DB1C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A6DB20  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
/* 80A6DB24  48 00 00 44 */	b lbl_80A6DB68
lbl_80A6DB28:
/* 80A6DB28  83 7A 0B 5C */	lwz r27, 0xb5c(r26)
/* 80A6DB2C  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80A6DB30  4B 6D 7D 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DB34  93 7A 0B 5C */	stw r27, 0xb5c(r26)
/* 80A6DB38  38 00 00 02 */	li r0, 2
/* 80A6DB3C  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80A6DB40  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80A6DB44  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
/* 80A6DB48  83 7A 0B 80 */	lwz r27, 0xb80(r26)
/* 80A6DB4C  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80A6DB50  4B 6D 7D 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DB54  93 7A 0B 80 */	stw r27, 0xb80(r26)
/* 80A6DB58  38 00 00 04 */	li r0, 4
/* 80A6DB5C  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80A6DB60  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80A6DB64  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80A6DB68:
/* 80A6DB68  80 7F 01 44 */	lwz r3, 0x144(r31)
/* 80A6DB6C  80 1F 01 48 */	lwz r0, 0x148(r31)
/* 80A6DB70  90 61 00 08 */	stw r3, 8(r1)
/* 80A6DB74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A6DB78  80 1F 01 4C */	lwz r0, 0x14c(r31)
/* 80A6DB7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A6DB80  2C 1C 00 01 */	cmpwi r28, 1
/* 80A6DB84  41 82 00 60 */	beq lbl_80A6DBE4
/* 80A6DB88  40 80 00 10 */	bge lbl_80A6DB98
/* 80A6DB8C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A6DB90  40 80 00 14 */	bge lbl_80A6DBA4
/* 80A6DB94  48 00 00 98 */	b lbl_80A6DC2C
lbl_80A6DB98:
/* 80A6DB98  2C 1C 00 03 */	cmpwi r28, 3
/* 80A6DB9C  40 80 00 90 */	bge lbl_80A6DC2C
/* 80A6DBA0  48 00 00 80 */	b lbl_80A6DC20
lbl_80A6DBA4:
/* 80A6DBA4  38 00 00 00 */	li r0, 0
/* 80A6DBA8  98 1A 0E 26 */	stb r0, 0xe26(r26)
/* 80A6DBAC  38 00 13 C2 */	li r0, 0x13c2
/* 80A6DBB0  90 01 00 08 */	stw r0, 8(r1)
/* 80A6DBB4  38 00 13 C6 */	li r0, 0x13c6
/* 80A6DBB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A6DBBC  7F 43 D3 78 */	mr r3, r26
/* 80A6DBC0  38 81 00 08 */	addi r4, r1, 8
/* 80A6DBC4  38 A0 00 00 */	li r5, 0
/* 80A6DBC8  38 C1 00 14 */	addi r6, r1, 0x14
/* 80A6DBCC  38 E0 00 00 */	li r7, 0
/* 80A6DBD0  4B 6D E0 A9 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A6DBD4  2C 03 00 00 */	cmpwi r3, 0
/* 80A6DBD8  41 82 00 54 */	beq lbl_80A6DC2C
/* 80A6DBDC  3B A0 00 01 */	li r29, 1
/* 80A6DBE0  48 00 00 4C */	b lbl_80A6DC2C
lbl_80A6DBE4:
/* 80A6DBE4  38 00 00 00 */	li r0, 0
/* 80A6DBE8  98 1A 0E 26 */	stb r0, 0xe26(r26)
/* 80A6DBEC  7F 43 D3 78 */	mr r3, r26
/* 80A6DBF0  38 80 00 00 */	li r4, 0
/* 80A6DBF4  38 A0 00 00 */	li r5, 0
/* 80A6DBF8  38 C1 00 14 */	addi r6, r1, 0x14
/* 80A6DBFC  38 E0 00 00 */	li r7, 0
/* 80A6DC00  4B 6D E0 79 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A6DC04  2C 03 00 00 */	cmpwi r3, 0
/* 80A6DC08  41 82 00 24 */	beq lbl_80A6DC2C
/* 80A6DC0C  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80A6DC10  28 00 00 01 */	cmplwi r0, 1
/* 80A6DC14  40 82 00 18 */	bne lbl_80A6DC2C
/* 80A6DC18  3B A0 00 01 */	li r29, 1
/* 80A6DC1C  48 00 00 10 */	b lbl_80A6DC2C
lbl_80A6DC20:
/* 80A6DC20  38 00 00 00 */	li r0, 0
/* 80A6DC24  98 1A 0E 26 */	stb r0, 0xe26(r26)
/* 80A6DC28  3B A0 00 01 */	li r29, 1
lbl_80A6DC2C:
/* 80A6DC2C  7F A3 EB 78 */	mr r3, r29
/* 80A6DC30  39 61 00 40 */	addi r11, r1, 0x40
/* 80A6DC34  4B 8F 45 E9 */	bl _restgpr_26
/* 80A6DC38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A6DC3C  7C 08 03 A6 */	mtlr r0
/* 80A6DC40  38 21 00 40 */	addi r1, r1, 0x40
/* 80A6DC44  4E 80 00 20 */	blr 

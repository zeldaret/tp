lbl_80569AFC:
/* 80569AFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80569B00  7C 08 02 A6 */	mflr r0
/* 80569B04  90 01 00 44 */	stw r0, 0x44(r1)
/* 80569B08  39 61 00 40 */	addi r11, r1, 0x40
/* 80569B0C  4B DF 86 BD */	bl _savegpr_24
/* 80569B10  7C 7A 1B 78 */	mr r26, r3
/* 80569B14  7C 98 23 78 */	mr r24, r4
/* 80569B18  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 80569B1C  3B E3 16 C8 */	addi r31, r3, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 80569B20  3B C0 00 00 */	li r30, 0
/* 80569B24  3B A0 FF FF */	li r29, -1
/* 80569B28  3B 80 00 00 */	li r28, 0
/* 80569B2C  3B 60 00 00 */	li r27, 0
/* 80569B30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80569B34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80569B38  3B 23 4F F8 */	addi r25, r3, 0x4ff8
/* 80569B3C  7F 23 CB 78 */	mr r3, r25
/* 80569B40  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80569B44  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80569B48  38 A5 02 9C */	addi r5, r5, 0x29c
/* 80569B4C  38 C0 00 03 */	li r6, 3
/* 80569B50  4B AD E5 9D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80569B54  28 03 00 00 */	cmplwi r3, 0
/* 80569B58  41 82 00 08 */	beq lbl_80569B60
/* 80569B5C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80569B60:
/* 80569B60  7F 23 CB 78 */	mr r3, r25
/* 80569B64  7F 04 C3 78 */	mr r4, r24
/* 80569B68  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80569B6C  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80569B70  38 A5 02 A0 */	addi r5, r5, 0x2a0
/* 80569B74  38 C0 00 03 */	li r6, 3
/* 80569B78  4B AD E5 75 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80569B7C  28 03 00 00 */	cmplwi r3, 0
/* 80569B80  41 82 00 08 */	beq lbl_80569B88
/* 80569B84  83 83 00 00 */	lwz r28, 0(r3)
lbl_80569B88:
/* 80569B88  7F 23 CB 78 */	mr r3, r25
/* 80569B8C  7F 04 C3 78 */	mr r4, r24
/* 80569B90  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80569B94  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80569B98  38 A5 02 A6 */	addi r5, r5, 0x2a6
/* 80569B9C  38 C0 00 03 */	li r6, 3
/* 80569BA0  4B AD E5 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80569BA4  28 03 00 00 */	cmplwi r3, 0
/* 80569BA8  41 82 00 08 */	beq lbl_80569BB0
/* 80569BAC  83 63 00 00 */	lwz r27, 0(r3)
lbl_80569BB0:
/* 80569BB0  7F 23 CB 78 */	mr r3, r25
/* 80569BB4  7F 04 C3 78 */	mr r4, r24
/* 80569BB8  4B AD E1 95 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80569BBC  2C 03 00 00 */	cmpwi r3, 0
/* 80569BC0  41 82 00 E4 */	beq lbl_80569CA4
/* 80569BC4  28 1D 00 06 */	cmplwi r29, 6
/* 80569BC8  41 81 00 DC */	bgt lbl_80569CA4
/* 80569BCC  3C 60 80 57 */	lis r3, lit_6435@ha /* 0x80573008@ha */
/* 80569BD0  38 63 30 08 */	addi r3, r3, lit_6435@l /* 0x80573008@l */
/* 80569BD4  57 A0 10 3A */	slwi r0, r29, 2
/* 80569BD8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80569BDC  7C 09 03 A6 */	mtctr r0
/* 80569BE0  4E 80 04 20 */	bctr 
lbl_80569BE4:
/* 80569BE4  38 60 00 0B */	li r3, 0xb
/* 80569BE8  4B BE 2F 45 */	bl daNpcT_offTmpBit__FUl
/* 80569BEC  38 60 00 0C */	li r3, 0xc
/* 80569BF0  4B BE 2F 3D */	bl daNpcT_offTmpBit__FUl
/* 80569BF4  7F 43 D3 78 */	mr r3, r26
/* 80569BF8  38 80 01 F7 */	li r4, 0x1f7
/* 80569BFC  38 A0 00 00 */	li r5, 0
/* 80569C00  4B BE 1F F1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80569C04  38 60 02 5C */	li r3, 0x25c
/* 80569C08  4B BE 2E 25 */	bl daNpcT_onEvtBit__FUl
/* 80569C0C  48 00 00 98 */	b lbl_80569CA4
lbl_80569C10:
/* 80569C10  93 9A 0D C4 */	stw r28, 0xdc4(r26)
/* 80569C14  48 00 00 90 */	b lbl_80569CA4
lbl_80569C18:
/* 80569C18  7F 43 D3 78 */	mr r3, r26
/* 80569C1C  38 80 01 F7 */	li r4, 0x1f7
/* 80569C20  38 A0 00 00 */	li r5, 0
/* 80569C24  4B BE 1F CD */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80569C28  48 00 00 7C */	b lbl_80569CA4
lbl_80569C2C:
/* 80569C2C  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80569C30  2C 00 00 25 */	cmpwi r0, 0x25
/* 80569C34  41 82 00 24 */	beq lbl_80569C58
/* 80569C38  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80569C3C  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80569C40  4B BD BC 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80569C44  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80569C48  38 00 00 25 */	li r0, 0x25
/* 80569C4C  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80569C50  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80569C54  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80569C58:
/* 80569C58  93 9A 0D C4 */	stw r28, 0xdc4(r26)
/* 80569C5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80569C60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80569C64  80 63 00 00 */	lwz r3, 0(r3)
/* 80569C68  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80569C6C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100009F@ha */
/* 80569C70  38 84 00 9F */	addi r4, r4, 0x009F /* 0x0100009F@l */
/* 80569C74  38 A0 00 00 */	li r5, 0
/* 80569C78  38 C0 00 00 */	li r6, 0
/* 80569C7C  4B D4 53 95 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 80569C80  48 00 00 24 */	b lbl_80569CA4
lbl_80569C84:
/* 80569C84  38 00 00 01 */	li r0, 1
/* 80569C88  98 1A 0E 25 */	stb r0, 0xe25(r26)
/* 80569C8C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569C90  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80569C94  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 80569C98  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80569C9C  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 80569CA0  93 9A 0D C4 */	stw r28, 0xdc4(r26)
lbl_80569CA4:
/* 80569CA4  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80569CA8  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 80569CAC  90 61 00 08 */	stw r3, 8(r1)
/* 80569CB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80569CB4  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 80569CB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80569CBC  28 1D 00 06 */	cmplwi r29, 6
/* 80569CC0  41 81 04 44 */	bgt lbl_8056A104
/* 80569CC4  3C 60 80 57 */	lis r3, lit_6436@ha /* 0x80572FEC@ha */
/* 80569CC8  38 63 2F EC */	addi r3, r3, lit_6436@l /* 0x80572FEC@l */
/* 80569CCC  57 A0 10 3A */	slwi r0, r29, 2
/* 80569CD0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80569CD4  7C 09 03 A6 */	mtctr r0
/* 80569CD8  4E 80 04 20 */	bctr 
lbl_80569CDC:
/* 80569CDC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80569CE0  2C 00 00 01 */	cmpwi r0, 1
/* 80569CE4  41 82 00 28 */	beq lbl_80569D0C
/* 80569CE8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569CEC  4B BD BA 11 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80569CF0  38 00 00 00 */	li r0, 0
/* 80569CF4  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80569CF8  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569CFC  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80569D00  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80569D04  38 00 00 01 */	li r0, 1
/* 80569D08  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80569D0C:
/* 80569D0C  38 00 00 00 */	li r0, 0
/* 80569D10  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80569D14  93 61 00 08 */	stw r27, 8(r1)
/* 80569D18  7F 43 D3 78 */	mr r3, r26
/* 80569D1C  38 81 00 08 */	addi r4, r1, 8
/* 80569D20  38 A0 00 00 */	li r5, 0
/* 80569D24  38 C0 00 00 */	li r6, 0
/* 80569D28  38 E0 00 00 */	li r7, 0
/* 80569D2C  4B BE 1F 4D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80569D30  2C 03 00 00 */	cmpwi r3, 0
/* 80569D34  41 82 03 D0 */	beq lbl_8056A104
/* 80569D38  2C 1B 00 00 */	cmpwi r27, 0
/* 80569D3C  40 82 00 18 */	bne lbl_80569D54
/* 80569D40  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80569D44  28 00 00 01 */	cmplwi r0, 1
/* 80569D48  40 82 03 BC */	bne lbl_8056A104
/* 80569D4C  3B C0 00 01 */	li r30, 1
/* 80569D50  48 00 03 B4 */	b lbl_8056A104
lbl_80569D54:
/* 80569D54  3B C0 00 01 */	li r30, 1
/* 80569D58  48 00 03 AC */	b lbl_8056A104
lbl_80569D5C:
/* 80569D5C  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80569D60  48 00 74 A9 */	bl func_80571208
/* 80569D64  2C 03 00 00 */	cmpwi r3, 0
/* 80569D68  40 82 00 A4 */	bne lbl_80569E0C
/* 80569D6C  38 7A 11 68 */	addi r3, r26, 0x1168
/* 80569D70  4B BD B9 99 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80569D74  7C 79 1B 78 */	mr r25, r3
/* 80569D78  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569D7C  4B BD B9 8D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80569D80  7C 63 C8 50 */	subf r3, r3, r25
/* 80569D84  30 03 FF FF */	addic r0, r3, -1
/* 80569D88  7C 00 19 10 */	subfe r0, r0, r3
/* 80569D8C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80569D90  40 82 00 10 */	bne lbl_80569DA0
/* 80569D94  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80569D98  2C 00 00 02 */	cmpwi r0, 2
/* 80569D9C  41 82 00 30 */	beq lbl_80569DCC
lbl_80569DA0:
/* 80569DA0  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569DA4  4B BD B9 59 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80569DA8  38 00 00 00 */	li r0, 0
/* 80569DAC  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80569DB0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569DB4  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80569DB8  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80569DBC  38 00 00 02 */	li r0, 2
/* 80569DC0  90 1A 0C E0 */	stw r0, 0xce0(r26)
/* 80569DC4  38 00 00 01 */	li r0, 1
/* 80569DC8  48 00 00 08 */	b lbl_80569DD0
lbl_80569DCC:
/* 80569DCC  38 00 00 00 */	li r0, 0
lbl_80569DD0:
/* 80569DD0  2C 00 00 00 */	cmpwi r0, 0
/* 80569DD4  41 82 00 28 */	beq lbl_80569DFC
/* 80569DD8  7F 23 CB 78 */	mr r3, r25
/* 80569DDC  4B AA EF 05 */	bl fopAc_IsActor__FPv
/* 80569DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80569DE4  41 82 00 18 */	beq lbl_80569DFC
/* 80569DE8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569DEC  7F 24 CB 78 */	mr r4, r25
/* 80569DF0  4B BD B8 F1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80569DF4  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80569DF8  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
lbl_80569DFC:
/* 80569DFC  38 00 00 00 */	li r0, 0
/* 80569E00  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80569E04  3B C0 00 01 */	li r30, 1
/* 80569E08  48 00 02 FC */	b lbl_8056A104
lbl_80569E0C:
/* 80569E0C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80569E10  2C 00 00 01 */	cmpwi r0, 1
/* 80569E14  41 82 00 28 */	beq lbl_80569E3C
/* 80569E18  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569E1C  4B BD B8 E1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80569E20  38 00 00 00 */	li r0, 0
/* 80569E24  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80569E28  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569E2C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80569E30  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80569E34  38 00 00 01 */	li r0, 1
/* 80569E38  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80569E3C:
/* 80569E3C  38 00 00 00 */	li r0, 0
/* 80569E40  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80569E44  48 00 02 C0 */	b lbl_8056A104
lbl_80569E48:
/* 80569E48  38 7A 11 68 */	addi r3, r26, 0x1168
/* 80569E4C  4B BD B8 BD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80569E50  7C 79 1B 78 */	mr r25, r3
/* 80569E54  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569E58  4B BD B8 B1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80569E5C  7C 63 C8 50 */	subf r3, r3, r25
/* 80569E60  30 03 FF FF */	addic r0, r3, -1
/* 80569E64  7C 00 19 10 */	subfe r0, r0, r3
/* 80569E68  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80569E6C  40 82 00 10 */	bne lbl_80569E7C
/* 80569E70  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80569E74  2C 00 00 02 */	cmpwi r0, 2
/* 80569E78  41 82 00 30 */	beq lbl_80569EA8
lbl_80569E7C:
/* 80569E7C  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569E80  4B BD B8 7D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80569E84  38 00 00 00 */	li r0, 0
/* 80569E88  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80569E8C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569E90  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80569E94  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80569E98  38 00 00 02 */	li r0, 2
/* 80569E9C  90 1A 0C E0 */	stw r0, 0xce0(r26)
/* 80569EA0  38 00 00 01 */	li r0, 1
/* 80569EA4  48 00 00 08 */	b lbl_80569EAC
lbl_80569EA8:
/* 80569EA8  38 00 00 00 */	li r0, 0
lbl_80569EAC:
/* 80569EAC  2C 00 00 00 */	cmpwi r0, 0
/* 80569EB0  41 82 00 28 */	beq lbl_80569ED8
/* 80569EB4  7F 23 CB 78 */	mr r3, r25
/* 80569EB8  4B AA EE 29 */	bl fopAc_IsActor__FPv
/* 80569EBC  2C 03 00 00 */	cmpwi r3, 0
/* 80569EC0  41 82 00 18 */	beq lbl_80569ED8
/* 80569EC4  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569EC8  7F 24 CB 78 */	mr r4, r25
/* 80569ECC  4B BD B8 15 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80569ED0  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80569ED4  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
lbl_80569ED8:
/* 80569ED8  38 00 00 00 */	li r0, 0
/* 80569EDC  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80569EE0  3B C0 00 01 */	li r30, 1
/* 80569EE4  48 00 02 20 */	b lbl_8056A104
lbl_80569EE8:
/* 80569EE8  38 7A 11 68 */	addi r3, r26, 0x1168
/* 80569EEC  4B BD B8 1D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80569EF0  7C 79 1B 78 */	mr r25, r3
/* 80569EF4  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569EF8  4B BD B8 11 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80569EFC  7C 63 C8 50 */	subf r3, r3, r25
/* 80569F00  30 03 FF FF */	addic r0, r3, -1
/* 80569F04  7C 00 19 10 */	subfe r0, r0, r3
/* 80569F08  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80569F0C  40 82 00 10 */	bne lbl_80569F1C
/* 80569F10  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80569F14  2C 00 00 02 */	cmpwi r0, 2
/* 80569F18  41 82 00 30 */	beq lbl_80569F48
lbl_80569F1C:
/* 80569F1C  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569F20  4B BD B7 DD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80569F24  38 00 00 00 */	li r0, 0
/* 80569F28  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80569F2C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569F30  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80569F34  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80569F38  38 00 00 02 */	li r0, 2
/* 80569F3C  90 1A 0C E0 */	stw r0, 0xce0(r26)
/* 80569F40  38 00 00 01 */	li r0, 1
/* 80569F44  48 00 00 08 */	b lbl_80569F4C
lbl_80569F48:
/* 80569F48  38 00 00 00 */	li r0, 0
lbl_80569F4C:
/* 80569F4C  2C 00 00 00 */	cmpwi r0, 0
/* 80569F50  41 82 00 28 */	beq lbl_80569F78
/* 80569F54  7F 23 CB 78 */	mr r3, r25
/* 80569F58  4B AA ED 89 */	bl fopAc_IsActor__FPv
/* 80569F5C  2C 03 00 00 */	cmpwi r3, 0
/* 80569F60  41 82 00 18 */	beq lbl_80569F78
/* 80569F64  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569F68  7F 24 CB 78 */	mr r4, r25
/* 80569F6C  4B BD B7 75 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80569F70  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80569F74  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
lbl_80569F78:
/* 80569F78  38 00 00 00 */	li r0, 0
/* 80569F7C  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80569F80  7F 43 D3 78 */	mr r3, r26
/* 80569F84  38 81 00 08 */	addi r4, r1, 8
/* 80569F88  38 A0 00 00 */	li r5, 0
/* 80569F8C  38 C0 00 00 */	li r6, 0
/* 80569F90  38 E0 00 00 */	li r7, 0
/* 80569F94  4B BE 1C E5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80569F98  2C 03 00 00 */	cmpwi r3, 0
/* 80569F9C  41 82 01 68 */	beq lbl_8056A104
/* 80569FA0  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80569FA4  28 00 00 01 */	cmplwi r0, 1
/* 80569FA8  40 82 01 5C */	bne lbl_8056A104
/* 80569FAC  3B C0 00 01 */	li r30, 1
/* 80569FB0  48 00 01 54 */	b lbl_8056A104
lbl_80569FB4:
/* 80569FB4  38 7A 11 68 */	addi r3, r26, 0x1168
/* 80569FB8  4B BD B7 51 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80569FBC  7C 79 1B 78 */	mr r25, r3
/* 80569FC0  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569FC4  4B BD B7 45 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80569FC8  7C 63 C8 50 */	subf r3, r3, r25
/* 80569FCC  30 03 FF FF */	addic r0, r3, -1
/* 80569FD0  7C 00 19 10 */	subfe r0, r0, r3
/* 80569FD4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80569FD8  40 82 00 10 */	bne lbl_80569FE8
/* 80569FDC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80569FE0  2C 00 00 02 */	cmpwi r0, 2
/* 80569FE4  41 82 00 30 */	beq lbl_8056A014
lbl_80569FE8:
/* 80569FE8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80569FEC  4B BD B7 11 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80569FF0  38 00 00 00 */	li r0, 0
/* 80569FF4  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80569FF8  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569FFC  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056A000  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056A004  38 00 00 02 */	li r0, 2
/* 8056A008  90 1A 0C E0 */	stw r0, 0xce0(r26)
/* 8056A00C  38 00 00 01 */	li r0, 1
/* 8056A010  48 00 00 08 */	b lbl_8056A018
lbl_8056A014:
/* 8056A014  38 00 00 00 */	li r0, 0
lbl_8056A018:
/* 8056A018  2C 00 00 00 */	cmpwi r0, 0
/* 8056A01C  41 82 00 28 */	beq lbl_8056A044
/* 8056A020  7F 23 CB 78 */	mr r3, r25
/* 8056A024  4B AA EC BD */	bl fopAc_IsActor__FPv
/* 8056A028  2C 03 00 00 */	cmpwi r3, 0
/* 8056A02C  41 82 00 18 */	beq lbl_8056A044
/* 8056A030  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056A034  7F 24 CB 78 */	mr r4, r25
/* 8056A038  4B BD B6 A9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056A03C  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8056A040  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
lbl_8056A044:
/* 8056A044  38 00 00 00 */	li r0, 0
/* 8056A048  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056A04C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056A050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056A054  83 23 5D B8 */	lwz r25, 0x5db8(r3)
/* 8056A058  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 8056A05C  48 00 71 AD */	bl func_80571208
/* 8056A060  2C 03 00 00 */	cmpwi r3, 0
/* 8056A064  40 82 00 08 */	bne lbl_8056A06C
/* 8056A068  3B C0 00 01 */	li r30, 1
lbl_8056A06C:
/* 8056A06C  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 8056A070  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8056A074  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 8056A078  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8056A07C  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 8056A080  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8056A084  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8056A088  38 81 00 14 */	addi r4, r1, 0x14
/* 8056A08C  4B DD D3 11 */	bl PSVECSquareDistance
/* 8056A090  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 8056A094  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8056A098  40 80 00 48 */	bge lbl_8056A0E0
/* 8056A09C  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8056A0A0  38 81 00 14 */	addi r4, r1, 0x14
/* 8056A0A4  4B D0 6B 61 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8056A0A8  7C 64 1B 78 */	mr r4, r3
/* 8056A0AC  38 7A 04 DE */	addi r3, r26, 0x4de
/* 8056A0B0  38 A0 00 04 */	li r5, 4
/* 8056A0B4  38 C0 08 00 */	li r6, 0x800
/* 8056A0B8  4B D0 65 51 */	bl cLib_addCalcAngleS2__FPssss
/* 8056A0BC  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 8056A0C0  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 8056A0C4  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 8056A0C8  B0 1A 0D 7A */	sth r0, 0xd7a(r26)
/* 8056A0CC  38 7A 05 2C */	addi r3, r26, 0x52c
/* 8056A0D0  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 8056A0D4  C0 5F 01 90 */	lfs f2, 0x190(r31)
/* 8056A0D8  4B D0 66 69 */	bl cLib_chaseF__FPfff
/* 8056A0DC  48 00 00 28 */	b lbl_8056A104
lbl_8056A0E0:
/* 8056A0E0  3B C0 00 01 */	li r30, 1
/* 8056A0E4  48 00 00 20 */	b lbl_8056A104
lbl_8056A0E8:
/* 8056A0E8  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 8056A0EC  48 00 71 1D */	bl func_80571208
/* 8056A0F0  2C 03 00 00 */	cmpwi r3, 0
/* 8056A0F4  40 82 00 10 */	bne lbl_8056A104
/* 8056A0F8  3B C0 00 01 */	li r30, 1
/* 8056A0FC  48 00 00 08 */	b lbl_8056A104
lbl_8056A100:
/* 8056A100  3B C0 00 01 */	li r30, 1
lbl_8056A104:
/* 8056A104  7F C3 F3 78 */	mr r3, r30
/* 8056A108  39 61 00 40 */	addi r11, r1, 0x40
/* 8056A10C  4B DF 81 09 */	bl _restgpr_24
/* 8056A110  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8056A114  7C 08 03 A6 */	mtlr r0
/* 8056A118  38 21 00 40 */	addi r1, r1, 0x40
/* 8056A11C  4E 80 00 20 */	blr 

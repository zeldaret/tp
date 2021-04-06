lbl_80A77BA0:
/* 80A77BA0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80A77BA4  7C 08 02 A6 */	mflr r0
/* 80A77BA8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80A77BAC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80A77BB0  4B 8E A6 15 */	bl _savegpr_23
/* 80A77BB4  7C 7F 1B 78 */	mr r31, r3
/* 80A77BB8  7C 97 23 78 */	mr r23, r4
/* 80A77BBC  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha /* 0x80A7AEF0@ha */
/* 80A77BC0  3B A3 AE F0 */	addi r29, r3, m__17daNpc_Moi_Param_c@l /* 0x80A7AEF0@l */
/* 80A77BC4  3B 60 00 00 */	li r27, 0
/* 80A77BC8  3B 40 FF FF */	li r26, -1
/* 80A77BCC  3B 20 00 00 */	li r25, 0
/* 80A77BD0  3B 00 00 00 */	li r24, 0
/* 80A77BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A77BD8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A77BDC  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80A77BE0  7F 83 E3 78 */	mr r3, r28
/* 80A77BE4  3C A0 80 A8 */	lis r5, d_a_npc_moi__stringBase0@ha /* 0x80A7B0D8@ha */
/* 80A77BE8  38 A5 B0 D8 */	addi r5, r5, d_a_npc_moi__stringBase0@l /* 0x80A7B0D8@l */
/* 80A77BEC  38 A5 00 73 */	addi r5, r5, 0x73
/* 80A77BF0  38 C0 00 03 */	li r6, 3
/* 80A77BF4  4B 5D 04 F9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A77BF8  28 03 00 00 */	cmplwi r3, 0
/* 80A77BFC  41 82 00 08 */	beq lbl_80A77C04
/* 80A77C00  83 43 00 00 */	lwz r26, 0(r3)
lbl_80A77C04:
/* 80A77C04  7F 83 E3 78 */	mr r3, r28
/* 80A77C08  7E E4 BB 78 */	mr r4, r23
/* 80A77C0C  3C A0 80 A8 */	lis r5, d_a_npc_moi__stringBase0@ha /* 0x80A7B0D8@ha */
/* 80A77C10  38 A5 B0 D8 */	addi r5, r5, d_a_npc_moi__stringBase0@l /* 0x80A7B0D8@l */
/* 80A77C14  38 A5 00 77 */	addi r5, r5, 0x77
/* 80A77C18  38 C0 00 03 */	li r6, 3
/* 80A77C1C  4B 5D 04 D1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A77C20  28 03 00 00 */	cmplwi r3, 0
/* 80A77C24  41 82 00 08 */	beq lbl_80A77C2C
/* 80A77C28  83 23 00 00 */	lwz r25, 0(r3)
lbl_80A77C2C:
/* 80A77C2C  7F 83 E3 78 */	mr r3, r28
/* 80A77C30  7E E4 BB 78 */	mr r4, r23
/* 80A77C34  3C A0 80 A8 */	lis r5, d_a_npc_moi__stringBase0@ha /* 0x80A7B0D8@ha */
/* 80A77C38  38 A5 B0 D8 */	addi r5, r5, d_a_npc_moi__stringBase0@l /* 0x80A7B0D8@l */
/* 80A77C3C  38 A5 00 7D */	addi r5, r5, 0x7d
/* 80A77C40  38 C0 00 03 */	li r6, 3
/* 80A77C44  4B 5D 04 A9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A77C48  28 03 00 00 */	cmplwi r3, 0
/* 80A77C4C  41 82 00 08 */	beq lbl_80A77C54
/* 80A77C50  83 03 00 00 */	lwz r24, 0(r3)
lbl_80A77C54:
/* 80A77C54  80 7D 01 CC */	lwz r3, 0x1cc(r29)
/* 80A77C58  80 1D 01 D0 */	lwz r0, 0x1d0(r29)
/* 80A77C5C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A77C60  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A77C64  38 7F 15 E0 */	addi r3, r31, 0x15e0
/* 80A77C68  4B 6C DA A1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A77C6C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A77C70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A77C74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A77C78  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A77C7C  90 64 5E F0 */	stw r3, 0x5ef0(r4)
/* 80A77C80  93 E4 5E F4 */	stw r31, 0x5ef4(r4)
/* 80A77C84  38 00 00 00 */	li r0, 0
/* 80A77C88  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80A77C8C  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80A77C90  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80A77C94  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80A77C98  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80A77C9C  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80A77CA0  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80A77CA4  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80A77CA8  7F 83 E3 78 */	mr r3, r28
/* 80A77CAC  7E E4 BB 78 */	mr r4, r23
/* 80A77CB0  4B 5D 00 9D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A77CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80A77CB8  41 82 01 B4 */	beq lbl_80A77E6C
/* 80A77CBC  28 1A 00 06 */	cmplwi r26, 6
/* 80A77CC0  41 81 01 AC */	bgt lbl_80A77E6C
/* 80A77CC4  3C 60 80 A8 */	lis r3, lit_6275@ha /* 0x80A7BDB0@ha */
/* 80A77CC8  38 63 BD B0 */	addi r3, r3, lit_6275@l /* 0x80A7BDB0@l */
/* 80A77CCC  57 40 10 3A */	slwi r0, r26, 2
/* 80A77CD0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A77CD4  7C 09 03 A6 */	mtctr r0
/* 80A77CD8  4E 80 04 20 */	bctr 
lbl_80A77CDC:
/* 80A77CDC  7F E3 FB 78 */	mr r3, r31
/* 80A77CE0  38 80 00 78 */	li r4, 0x78
/* 80A77CE4  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A77CE8  4B 6D 3F 09 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A77CEC  A8 1F 0D C8 */	lha r0, 0xdc8(r31)
/* 80A77CF0  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 80A77CF4  7F E3 FB 78 */	mr r3, r31
/* 80A77CF8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A77CFC  4B 6D 2D 1D */	bl setAngle__8daNpcT_cFs
/* 80A77D00  48 00 01 6C */	b lbl_80A77E6C
lbl_80A77D04:
/* 80A77D04  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A77D08  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A77D0C  41 82 00 24 */	beq lbl_80A77D30
/* 80A77D10  82 FF 0B 5C */	lwz r23, 0xb5c(r31)
/* 80A77D14  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A77D18  4B 6C DB 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77D1C  92 FF 0B 5C */	stw r23, 0xb5c(r31)
/* 80A77D20  38 00 00 15 */	li r0, 0x15
/* 80A77D24  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A77D28  C0 1D 01 24 */	lfs f0, 0x124(r29)
/* 80A77D2C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A77D30:
/* 80A77D30  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A77D34  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80A77D38  41 82 00 24 */	beq lbl_80A77D5C
/* 80A77D3C  82 FF 0B 80 */	lwz r23, 0xb80(r31)
/* 80A77D40  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A77D44  4B 6C DB 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77D48  92 FF 0B 80 */	stw r23, 0xb80(r31)
/* 80A77D4C  38 00 00 2D */	li r0, 0x2d
/* 80A77D50  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A77D54  C0 1D 01 24 */	lfs f0, 0x124(r29)
/* 80A77D58  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A77D5C:
/* 80A77D5C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80A77D60  7F E4 FB 78 */	mr r4, r31
/* 80A77D64  4B 5C B8 F9 */	bl setPt2__14dEvt_control_cFPv
/* 80A77D68  93 3F 0D C4 */	stw r25, 0xdc4(r31)
/* 80A77D6C  48 00 01 00 */	b lbl_80A77E6C
lbl_80A77D70:
/* 80A77D70  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 80A77D74  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80A77D78  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80A77D7C  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80A77D80  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80A77D84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A77D88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A77D8C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A77D90  4B 59 46 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 80A77D94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A77D98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A77D9C  38 81 00 80 */	addi r4, r1, 0x80
/* 80A77DA0  7C 85 23 78 */	mr r5, r4
/* 80A77DA4  4B 8C EF C9 */	bl PSMTXMultVec
/* 80A77DA8  38 61 00 74 */	addi r3, r1, 0x74
/* 80A77DAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A77DB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A77DB4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A77DB8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80A77DBC  38 A1 00 80 */	addi r5, r1, 0x80
/* 80A77DC0  4B 7E ED 75 */	bl __mi__4cXyzCFRC3Vec
/* 80A77DC4  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 80A77DC8  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80A77DCC  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80A77DD0  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80A77DD4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80A77DD8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80A77DDC  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80A77DE0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80A77DE4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A77DE8  7F E3 FB 78 */	mr r3, r31
/* 80A77DEC  38 81 00 68 */	addi r4, r1, 0x68
/* 80A77DF0  4B 6D 2B 19 */	bl setPos__8daNpcT_cF4cXyz
/* 80A77DF4  48 00 00 78 */	b lbl_80A77E6C
lbl_80A77DF8:
/* 80A77DF8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A77DFC  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A77E00  41 82 00 24 */	beq lbl_80A77E24
/* 80A77E04  82 FF 0B 5C */	lwz r23, 0xb5c(r31)
/* 80A77E08  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A77E0C  4B 6C DA 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77E10  92 FF 0B 5C */	stw r23, 0xb5c(r31)
/* 80A77E14  38 00 00 15 */	li r0, 0x15
/* 80A77E18  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A77E1C  C0 1D 01 24 */	lfs f0, 0x124(r29)
/* 80A77E20  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A77E24:
/* 80A77E24  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A77E28  2C 00 00 00 */	cmpwi r0, 0
/* 80A77E2C  41 82 00 24 */	beq lbl_80A77E50
/* 80A77E30  82 FF 0B 80 */	lwz r23, 0xb80(r31)
/* 80A77E34  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A77E38  4B 6C DA 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77E3C  92 FF 0B 80 */	stw r23, 0xb80(r31)
/* 80A77E40  38 00 00 00 */	li r0, 0
/* 80A77E44  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A77E48  C0 1D 01 24 */	lfs f0, 0x124(r29)
/* 80A77E4C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A77E50:
/* 80A77E50  7F E3 FB 78 */	mr r3, r31
/* 80A77E54  38 80 00 78 */	li r4, 0x78
/* 80A77E58  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A77E5C  4B 6D 3D 95 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A77E60  48 00 00 0C */	b lbl_80A77E6C
lbl_80A77E64:
/* 80A77E64  38 60 00 B8 */	li r3, 0xb8
/* 80A77E68  4B 6D 4B C5 */	bl daNpcT_onEvtBit__FUl
lbl_80A77E6C:
/* 80A77E6C  80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 80A77E70  80 1D 01 D8 */	lwz r0, 0x1d8(r29)
/* 80A77E74  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A77E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A77E7C  2C 1A 00 04 */	cmpwi r26, 4
/* 80A77E80  40 80 00 1C */	bge lbl_80A77E9C
/* 80A77E84  2C 1A 00 01 */	cmpwi r26, 1
/* 80A77E88  41 82 00 2C */	beq lbl_80A77EB4
/* 80A77E8C  40 80 00 94 */	bge lbl_80A77F20
/* 80A77E90  2C 1A 00 00 */	cmpwi r26, 0
/* 80A77E94  40 80 00 18 */	bge lbl_80A77EAC
/* 80A77E98  48 00 04 D8 */	b lbl_80A78370
lbl_80A77E9C:
/* 80A77E9C  2C 1A 00 06 */	cmpwi r26, 6
/* 80A77EA0  41 82 04 B0 */	beq lbl_80A78350
/* 80A77EA4  40 80 04 CC */	bge lbl_80A78370
/* 80A77EA8  48 00 04 28 */	b lbl_80A782D0
lbl_80A77EAC:
/* 80A77EAC  3B 60 00 01 */	li r27, 1
/* 80A77EB0  48 00 04 C0 */	b lbl_80A78370
lbl_80A77EB4:
/* 80A77EB4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A77EB8  2C 00 00 01 */	cmpwi r0, 1
/* 80A77EBC  41 82 00 28 */	beq lbl_80A77EE4
/* 80A77EC0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A77EC4  4B 6C D8 39 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A77EC8  38 00 00 00 */	li r0, 0
/* 80A77ECC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A77ED0  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 80A77ED4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A77ED8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A77EDC  38 00 00 01 */	li r0, 1
/* 80A77EE0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A77EE4:
/* 80A77EE4  38 00 00 00 */	li r0, 0
/* 80A77EE8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A77EEC  7F E3 FB 78 */	mr r3, r31
/* 80A77EF0  38 80 00 00 */	li r4, 0
/* 80A77EF4  38 A0 00 00 */	li r5, 0
/* 80A77EF8  38 C1 00 18 */	addi r6, r1, 0x18
/* 80A77EFC  38 E0 00 00 */	li r7, 0
/* 80A77F00  4B 6D 3D 79 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A77F04  2C 03 00 00 */	cmpwi r3, 0
/* 80A77F08  41 82 04 68 */	beq lbl_80A78370
/* 80A77F0C  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80A77F10  28 00 00 01 */	cmplwi r0, 1
/* 80A77F14  40 82 04 5C */	bne lbl_80A78370
/* 80A77F18  3B 60 00 01 */	li r27, 1
/* 80A77F1C  48 00 04 54 */	b lbl_80A78370
lbl_80A77F20:
/* 80A77F20  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A77F24  2C 00 00 01 */	cmpwi r0, 1
/* 80A77F28  41 82 00 28 */	beq lbl_80A77F50
/* 80A77F2C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A77F30  4B 6C D7 CD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A77F34  38 00 00 00 */	li r0, 0
/* 80A77F38  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A77F3C  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 80A77F40  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A77F44  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A77F48  38 00 00 01 */	li r0, 1
/* 80A77F4C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A77F50:
/* 80A77F50  38 00 00 00 */	li r0, 0
/* 80A77F54  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A77F58  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 80A77F5C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80A77F60  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80A77F64  C0 1D 01 14 */	lfs f0, 0x114(r29)
/* 80A77F68  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80A77F6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A77F70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A77F74  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A77F78  4B 59 44 65 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A77F7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A77F80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A77F84  38 81 00 80 */	addi r4, r1, 0x80
/* 80A77F88  7C 85 23 78 */	mr r5, r4
/* 80A77F8C  4B 8C ED E1 */	bl PSMTXMultVec
/* 80A77F90  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A77F94  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A77F98  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A77F9C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A77FA0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80A77FA4  38 A1 00 80 */	addi r5, r1, 0x80
/* 80A77FA8  4B 7E EB 8D */	bl __mi__4cXyzCFRC3Vec
/* 80A77FAC  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 80A77FB0  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80A77FB4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80A77FB8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80A77FBC  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80A77FC0  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80A77FC4  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80A77FC8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A77FCC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80A77FD0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80A77FD4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A77FD8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A77FDC  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 80A77FE0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A77FE4  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80A77FE8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80A77FEC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A77FF0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80A77FF4  38 61 00 38 */	addi r3, r1, 0x38
/* 80A77FF8  38 81 00 44 */	addi r4, r1, 0x44
/* 80A77FFC  4B 8C F3 A1 */	bl PSVECSquareDistance
/* 80A78000  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 80A78004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A78008  40 81 00 58 */	ble lbl_80A78060
/* 80A7800C  FC 00 08 34 */	frsqrte f0, f1
/* 80A78010  C8 9D 01 50 */	lfd f4, 0x150(r29)
/* 80A78014  FC 44 00 32 */	fmul f2, f4, f0
/* 80A78018  C8 7D 01 58 */	lfd f3, 0x158(r29)
/* 80A7801C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A78020  FC 01 00 32 */	fmul f0, f1, f0
/* 80A78024  FC 03 00 28 */	fsub f0, f3, f0
/* 80A78028  FC 02 00 32 */	fmul f0, f2, f0
/* 80A7802C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A78030  FC 00 00 32 */	fmul f0, f0, f0
/* 80A78034  FC 01 00 32 */	fmul f0, f1, f0
/* 80A78038  FC 03 00 28 */	fsub f0, f3, f0
/* 80A7803C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A78040  FC 44 00 32 */	fmul f2, f4, f0
/* 80A78044  FC 00 00 32 */	fmul f0, f0, f0
/* 80A78048  FC 01 00 32 */	fmul f0, f1, f0
/* 80A7804C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A78050  FC 02 00 32 */	fmul f0, f2, f0
/* 80A78054  FC 21 00 32 */	fmul f1, f1, f0
/* 80A78058  FC 20 08 18 */	frsp f1, f1
/* 80A7805C  48 00 00 88 */	b lbl_80A780E4
lbl_80A78060:
/* 80A78060  C8 1D 01 60 */	lfd f0, 0x160(r29)
/* 80A78064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A78068  40 80 00 10 */	bge lbl_80A78078
/* 80A7806C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A78070  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A78074  48 00 00 70 */	b lbl_80A780E4
lbl_80A78078:
/* 80A78078  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A7807C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A78080  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A78084  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A78088  7C 03 00 00 */	cmpw r3, r0
/* 80A7808C  41 82 00 14 */	beq lbl_80A780A0
/* 80A78090  40 80 00 40 */	bge lbl_80A780D0
/* 80A78094  2C 03 00 00 */	cmpwi r3, 0
/* 80A78098  41 82 00 20 */	beq lbl_80A780B8
/* 80A7809C  48 00 00 34 */	b lbl_80A780D0
lbl_80A780A0:
/* 80A780A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A780A4  41 82 00 0C */	beq lbl_80A780B0
/* 80A780A8  38 00 00 01 */	li r0, 1
/* 80A780AC  48 00 00 28 */	b lbl_80A780D4
lbl_80A780B0:
/* 80A780B0  38 00 00 02 */	li r0, 2
/* 80A780B4  48 00 00 20 */	b lbl_80A780D4
lbl_80A780B8:
/* 80A780B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A780BC  41 82 00 0C */	beq lbl_80A780C8
/* 80A780C0  38 00 00 05 */	li r0, 5
/* 80A780C4  48 00 00 10 */	b lbl_80A780D4
lbl_80A780C8:
/* 80A780C8  38 00 00 03 */	li r0, 3
/* 80A780CC  48 00 00 08 */	b lbl_80A780D4
lbl_80A780D0:
/* 80A780D0  38 00 00 04 */	li r0, 4
lbl_80A780D4:
/* 80A780D4  2C 00 00 01 */	cmpwi r0, 1
/* 80A780D8  40 82 00 0C */	bne lbl_80A780E4
/* 80A780DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A780E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A780E4:
/* 80A780E4  7F E3 FB 78 */	mr r3, r31
/* 80A780E8  38 81 00 50 */	addi r4, r1, 0x50
/* 80A780EC  C0 1D 01 70 */	lfs f0, 0x170(r29)
/* 80A780F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A780F4  7C 00 00 26 */	mfcr r0
/* 80A780F8  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80A780FC  38 C0 00 04 */	li r6, 4
/* 80A78100  38 E0 08 00 */	li r7, 0x800
/* 80A78104  4B 6D 37 05 */	bl calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 80A78108  2C 1A 00 02 */	cmpwi r26, 2
/* 80A7810C  40 82 00 78 */	bne lbl_80A78184
/* 80A78110  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80A78114  2C 00 00 00 */	cmpwi r0, 0
/* 80A78118  41 82 00 58 */	beq lbl_80A78170
/* 80A7811C  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80A78120  48 00 2A 45 */	bl func_80A7AB64
/* 80A78124  2C 03 00 00 */	cmpwi r3, 0
/* 80A78128  40 82 00 48 */	bne lbl_80A78170
/* 80A7812C  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80A78130  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A78134  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80A78138  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A7813C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80A78140  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A78144  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80A78148  7F E4 FB 78 */	mr r4, r31
/* 80A7814C  4B 5A 25 C5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A78150  7C 65 1B 78 */	mr r5, r3
/* 80A78154  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80A78158  38 81 00 80 */	addi r4, r1, 0x80
/* 80A7815C  38 C0 00 00 */	li r6, 0
/* 80A78160  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A78164  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A78168  7D 89 03 A6 */	mtctr r12
/* 80A7816C  4E 80 04 21 */	bctrl 
lbl_80A78170:
/* 80A78170  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80A78174  2C 00 00 00 */	cmpwi r0, 0
/* 80A78178  40 82 01 F8 */	bne lbl_80A78370
/* 80A7817C  3B 60 00 01 */	li r27, 1
/* 80A78180  48 00 01 F0 */	b lbl_80A78370
lbl_80A78184:
/* 80A78184  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80A78188  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A7818C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A78190  C0 3D 00 E8 */	lfs f1, 0xe8(r29)
/* 80A78194  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A78198  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80A7819C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80A781A0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A781A4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A781A8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80A781AC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A781B0  38 61 00 20 */	addi r3, r1, 0x20
/* 80A781B4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A781B8  4B 8C F1 E5 */	bl PSVECSquareDistance
/* 80A781BC  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 80A781C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A781C4  40 81 00 58 */	ble lbl_80A7821C
/* 80A781C8  FC 00 08 34 */	frsqrte f0, f1
/* 80A781CC  C8 9D 01 50 */	lfd f4, 0x150(r29)
/* 80A781D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A781D4  C8 7D 01 58 */	lfd f3, 0x158(r29)
/* 80A781D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A781DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A781E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A781E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A781E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A781EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A781F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A781F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A781F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A781FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A78200  FC 00 00 32 */	fmul f0, f0, f0
/* 80A78204  FC 01 00 32 */	fmul f0, f1, f0
/* 80A78208  FC 03 00 28 */	fsub f0, f3, f0
/* 80A7820C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A78210  FC 21 00 32 */	fmul f1, f1, f0
/* 80A78214  FC 20 08 18 */	frsp f1, f1
/* 80A78218  48 00 00 88 */	b lbl_80A782A0
lbl_80A7821C:
/* 80A7821C  C8 1D 01 60 */	lfd f0, 0x160(r29)
/* 80A78220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A78224  40 80 00 10 */	bge lbl_80A78234
/* 80A78228  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A7822C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A78230  48 00 00 70 */	b lbl_80A782A0
lbl_80A78234:
/* 80A78234  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A78238  80 81 00 08 */	lwz r4, 8(r1)
/* 80A7823C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A78240  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A78244  7C 03 00 00 */	cmpw r3, r0
/* 80A78248  41 82 00 14 */	beq lbl_80A7825C
/* 80A7824C  40 80 00 40 */	bge lbl_80A7828C
/* 80A78250  2C 03 00 00 */	cmpwi r3, 0
/* 80A78254  41 82 00 20 */	beq lbl_80A78274
/* 80A78258  48 00 00 34 */	b lbl_80A7828C
lbl_80A7825C:
/* 80A7825C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A78260  41 82 00 0C */	beq lbl_80A7826C
/* 80A78264  38 00 00 01 */	li r0, 1
/* 80A78268  48 00 00 28 */	b lbl_80A78290
lbl_80A7826C:
/* 80A7826C  38 00 00 02 */	li r0, 2
/* 80A78270  48 00 00 20 */	b lbl_80A78290
lbl_80A78274:
/* 80A78274  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A78278  41 82 00 0C */	beq lbl_80A78284
/* 80A7827C  38 00 00 05 */	li r0, 5
/* 80A78280  48 00 00 10 */	b lbl_80A78290
lbl_80A78284:
/* 80A78284  38 00 00 03 */	li r0, 3
/* 80A78288  48 00 00 08 */	b lbl_80A78290
lbl_80A7828C:
/* 80A7828C  38 00 00 04 */	li r0, 4
lbl_80A78290:
/* 80A78290  2C 00 00 01 */	cmpwi r0, 1
/* 80A78294  40 82 00 0C */	bne lbl_80A782A0
/* 80A78298  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A7829C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A782A0:
/* 80A782A0  C0 1D 01 70 */	lfs f0, 0x170(r29)
/* 80A782A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A782A8  40 80 00 C8 */	bge lbl_80A78370
/* 80A782AC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80A782B0  FC 00 02 10 */	fabs f0, f0
/* 80A782B4  FC 20 00 18 */	frsp f1, f0
/* 80A782B8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80A782BC  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80A782C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A782C4  40 80 00 AC */	bge lbl_80A78370
/* 80A782C8  3B 60 00 01 */	li r27, 1
/* 80A782CC  48 00 00 A4 */	b lbl_80A78370
lbl_80A782D0:
/* 80A782D0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A782D4  2C 00 00 01 */	cmpwi r0, 1
/* 80A782D8  41 82 00 28 */	beq lbl_80A78300
/* 80A782DC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A782E0  4B 6C D4 1D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A782E4  38 00 00 00 */	li r0, 0
/* 80A782E8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A782EC  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 80A782F0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A782F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A782F8  38 00 00 01 */	li r0, 1
/* 80A782FC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A78300:
/* 80A78300  38 00 00 00 */	li r0, 0
/* 80A78304  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A78308  93 01 00 10 */	stw r24, 0x10(r1)
/* 80A7830C  7F E3 FB 78 */	mr r3, r31
/* 80A78310  38 81 00 10 */	addi r4, r1, 0x10
/* 80A78314  38 A0 00 00 */	li r5, 0
/* 80A78318  38 C1 00 18 */	addi r6, r1, 0x18
/* 80A7831C  38 E0 00 00 */	li r7, 0
/* 80A78320  4B 6D 39 59 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A78324  2C 03 00 00 */	cmpwi r3, 0
/* 80A78328  41 82 00 48 */	beq lbl_80A78370
/* 80A7832C  2C 18 00 00 */	cmpwi r24, 0
/* 80A78330  40 82 00 18 */	bne lbl_80A78348
/* 80A78334  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80A78338  28 00 00 01 */	cmplwi r0, 1
/* 80A7833C  40 82 00 34 */	bne lbl_80A78370
/* 80A78340  3B 60 00 01 */	li r27, 1
/* 80A78344  48 00 00 2C */	b lbl_80A78370
lbl_80A78348:
/* 80A78348  3B 60 00 01 */	li r27, 1
/* 80A7834C  48 00 00 24 */	b lbl_80A78370
lbl_80A78350:
/* 80A78350  38 60 00 01 */	li r3, 1
/* 80A78354  C0 3D 00 E8 */	lfs f1, 0xe8(r29)
/* 80A78358  38 80 00 00 */	li r4, 0
/* 80A7835C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A78360  7C 05 07 74 */	extsb r5, r0
/* 80A78364  38 C0 00 00 */	li r6, 0
/* 80A78368  38 E0 FF FF */	li r7, -1
/* 80A7836C  4B 5A EE 05 */	bl dStage_changeScene__FifUlScsi
lbl_80A78370:
/* 80A78370  7F 63 DB 78 */	mr r3, r27
/* 80A78374  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80A78378  4B 8E 9E 99 */	bl _restgpr_23
/* 80A7837C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80A78380  7C 08 03 A6 */	mtlr r0
/* 80A78384  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80A78388  4E 80 00 20 */	blr 

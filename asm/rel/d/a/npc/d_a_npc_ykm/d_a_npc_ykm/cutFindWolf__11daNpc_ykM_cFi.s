lbl_80B59500:
/* 80B59500  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B59504  7C 08 02 A6 */	mflr r0
/* 80B59508  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B5950C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B59510  4B 80 8C C1 */	bl _savegpr_26
/* 80B59514  7C 7C 1B 78 */	mr r28, r3
/* 80B59518  7C 9A 23 78 */	mr r26, r4
/* 80B5951C  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B59520  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B59524  3B C0 00 00 */	li r30, 0
/* 80B59528  3B A0 FF FF */	li r29, -1
/* 80B5952C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B59530  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B59534  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80B59538  7F 63 DB 78 */	mr r3, r27
/* 80B5953C  3C A0 80 B6 */	lis r5, d_a_npc_ykm__stringBase0@ha /* 0x80B5DA40@ha */
/* 80B59540  38 A5 DA 40 */	addi r5, r5, d_a_npc_ykm__stringBase0@l /* 0x80B5DA40@l */
/* 80B59544  38 A5 00 97 */	addi r5, r5, 0x97
/* 80B59548  38 C0 00 03 */	li r6, 3
/* 80B5954C  4B 4E EB A1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B59550  28 03 00 00 */	cmplwi r3, 0
/* 80B59554  41 82 00 08 */	beq lbl_80B5955C
/* 80B59558  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B5955C:
/* 80B5955C  80 7F 02 38 */	lwz r3, 0x238(r31)
/* 80B59560  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 80B59564  90 61 00 08 */	stw r3, 8(r1)
/* 80B59568  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B5956C  38 7C 14 A0 */	addi r3, r28, 0x14a0
/* 80B59570  4B 5E C1 99 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B59574  90 61 00 08 */	stw r3, 8(r1)
/* 80B59578  93 81 00 0C */	stw r28, 0xc(r1)
/* 80B5957C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B59580  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B59584  90 64 5E F0 */	stw r3, 0x5ef0(r4)
/* 80B59588  93 84 5E F4 */	stw r28, 0x5ef4(r4)
/* 80B5958C  38 00 00 00 */	li r0, 0
/* 80B59590  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80B59594  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80B59598  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80B5959C  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80B595A0  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80B595A4  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80B595A8  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80B595AC  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80B595B0  7F 63 DB 78 */	mr r3, r27
/* 80B595B4  7F 44 D3 78 */	mr r4, r26
/* 80B595B8  4B 4E E7 95 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B595BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B595C0  41 82 00 5C */	beq lbl_80B5961C
/* 80B595C4  2C 1D 00 01 */	cmpwi r29, 1
/* 80B595C8  41 82 00 30 */	beq lbl_80B595F8
/* 80B595CC  40 80 00 50 */	bge lbl_80B5961C
/* 80B595D0  2C 1D 00 00 */	cmpwi r29, 0
/* 80B595D4  40 80 00 08 */	bge lbl_80B595DC
/* 80B595D8  48 00 00 44 */	b lbl_80B5961C
lbl_80B595DC:
/* 80B595DC  7F 83 E3 78 */	mr r3, r28
/* 80B595E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B595E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B595E8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B595EC  4B 4C 11 25 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B595F0  B0 7C 0D C8 */	sth r3, 0xdc8(r28)
/* 80B595F4  48 00 00 28 */	b lbl_80B5961C
lbl_80B595F8:
/* 80B595F8  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B595FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B59600  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B59604  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B59608  4B 5E C0 D9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B5960C  7F 83 E3 78 */	mr r3, r28
/* 80B59610  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80B59614  38 A0 00 00 */	li r5, 0
/* 80B59618  4B 5F 25 D9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B5961C:
/* 80B5961C  2C 1D 00 01 */	cmpwi r29, 1
/* 80B59620  41 82 00 84 */	beq lbl_80B596A4
/* 80B59624  40 80 01 08 */	bge lbl_80B5972C
/* 80B59628  2C 1D 00 00 */	cmpwi r29, 0
/* 80B5962C  40 80 00 08 */	bge lbl_80B59634
/* 80B59630  48 00 00 FC */	b lbl_80B5972C
lbl_80B59634:
/* 80B59634  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B59638  2C 00 00 01 */	cmpwi r0, 1
/* 80B5963C  41 82 00 28 */	beq lbl_80B59664
/* 80B59640  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B59644  4B 5E C0 B9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B59648  38 00 00 00 */	li r0, 0
/* 80B5964C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B59650  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B59654  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B59658  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5965C  38 00 00 01 */	li r0, 1
/* 80B59660  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B59664:
/* 80B59664  38 00 00 00 */	li r0, 0
/* 80B59668  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5966C  A8 9C 0D C8 */	lha r4, 0xdc8(r28)
/* 80B59670  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 80B59674  7C 04 00 00 */	cmpw r4, r0
/* 80B59678  41 82 00 24 */	beq lbl_80B5969C
/* 80B5967C  7F 83 E3 78 */	mr r3, r28
/* 80B59680  38 A0 00 0F */	li r5, 0xf
/* 80B59684  38 C0 00 1E */	li r6, 0x1e
/* 80B59688  38 FF 00 00 */	addi r7, r31, 0
/* 80B5968C  A8 E7 00 8C */	lha r7, 0x8c(r7)
/* 80B59690  39 00 00 00 */	li r8, 0
/* 80B59694  4B 5F 1F B5 */	bl step__8daNpcT_cFsiiii
/* 80B59698  48 00 00 94 */	b lbl_80B5972C
lbl_80B5969C:
/* 80B5969C  3B C0 00 01 */	li r30, 1
/* 80B596A0  48 00 00 8C */	b lbl_80B5972C
lbl_80B596A4:
/* 80B596A4  7F 83 E3 78 */	mr r3, r28
/* 80B596A8  38 80 00 00 */	li r4, 0
/* 80B596AC  38 A0 00 01 */	li r5, 1
/* 80B596B0  38 C1 00 08 */	addi r6, r1, 8
/* 80B596B4  38 E0 00 00 */	li r7, 0
/* 80B596B8  4B 5F 25 C1 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B596BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B596C0  41 82 00 6C */	beq lbl_80B5972C
/* 80B596C4  88 1C 09 9A */	lbz r0, 0x99a(r28)
/* 80B596C8  28 00 00 01 */	cmplwi r0, 1
/* 80B596CC  40 82 00 60 */	bne lbl_80B5972C
/* 80B596D0  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B596D4  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B596D8  41 82 00 24 */	beq lbl_80B596FC
/* 80B596DC  83 BC 0B 5C */	lwz r29, 0xb5c(r28)
/* 80B596E0  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B596E4  4B 5E C1 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B596E8  93 BC 0B 5C */	stw r29, 0xb5c(r28)
/* 80B596EC  38 00 00 0F */	li r0, 0xf
/* 80B596F0  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B596F4  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B596F8  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B596FC:
/* 80B596FC  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B59700  2C 00 00 00 */	cmpwi r0, 0
/* 80B59704  41 82 00 24 */	beq lbl_80B59728
/* 80B59708  83 BC 0B 80 */	lwz r29, 0xb80(r28)
/* 80B5970C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B59710  4B 5E C1 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B59714  93 BC 0B 80 */	stw r29, 0xb80(r28)
/* 80B59718  38 00 00 00 */	li r0, 0
/* 80B5971C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B59720  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B59724  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B59728:
/* 80B59728  3B C0 00 01 */	li r30, 1
lbl_80B5972C:
/* 80B5972C  7F C3 F3 78 */	mr r3, r30
/* 80B59730  39 61 00 30 */	addi r11, r1, 0x30
/* 80B59734  4B 80 8A E9 */	bl _restgpr_26
/* 80B59738  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B5973C  7C 08 03 A6 */	mtlr r0
/* 80B59740  38 21 00 30 */	addi r1, r1, 0x30
/* 80B59744  4E 80 00 20 */	blr 

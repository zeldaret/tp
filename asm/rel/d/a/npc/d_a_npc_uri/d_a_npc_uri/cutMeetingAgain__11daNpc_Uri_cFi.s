lbl_80B29BA4:
/* 80B29BA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B29BA8  7C 08 02 A6 */	mflr r0
/* 80B29BAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B29BB0  39 61 00 40 */	addi r11, r1, 0x40
/* 80B29BB4  4B 83 86 15 */	bl _savegpr_24
/* 80B29BB8  7C 7A 1B 78 */	mr r26, r3
/* 80B29BBC  7C 98 23 78 */	mr r24, r4
/* 80B29BC0  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B29BC4  3B 23 CE 14 */	addi r25, r3, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B29BC8  3B A0 00 00 */	li r29, 0
/* 80B29BCC  3B 80 FF FF */	li r28, -1
/* 80B29BD0  3B 60 00 00 */	li r27, 0
/* 80B29BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B29BD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B29BDC  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80B29BE0  3B FE 40 C0 */	addi r31, r30, 0x40c0
/* 80B29BE4  7F E3 FB 78 */	mr r3, r31
/* 80B29BE8  3C A0 80 B3 */	lis r5, d_a_npc_uri__stringBase0@ha /* 0x80B2CF74@ha */
/* 80B29BEC  38 A5 CF 74 */	addi r5, r5, d_a_npc_uri__stringBase0@l /* 0x80B2CF74@l */
/* 80B29BF0  38 A5 00 C4 */	addi r5, r5, 0xc4
/* 80B29BF4  38 C0 00 03 */	li r6, 3
/* 80B29BF8  4B 51 E4 F5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B29BFC  28 03 00 00 */	cmplwi r3, 0
/* 80B29C00  41 82 00 08 */	beq lbl_80B29C08
/* 80B29C04  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B29C08:
/* 80B29C08  7F E3 FB 78 */	mr r3, r31
/* 80B29C0C  7F 04 C3 78 */	mr r4, r24
/* 80B29C10  3C A0 80 B3 */	lis r5, d_a_npc_uri__stringBase0@ha /* 0x80B2CF74@ha */
/* 80B29C14  38 A5 CF 74 */	addi r5, r5, d_a_npc_uri__stringBase0@l /* 0x80B2CF74@l */
/* 80B29C18  38 A5 00 CE */	addi r5, r5, 0xce
/* 80B29C1C  38 C0 00 03 */	li r6, 3
/* 80B29C20  4B 51 E4 CD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B29C24  28 03 00 00 */	cmplwi r3, 0
/* 80B29C28  41 82 00 08 */	beq lbl_80B29C30
/* 80B29C2C  83 63 00 00 */	lwz r27, 0(r3)
lbl_80B29C30:
/* 80B29C30  7F E3 FB 78 */	mr r3, r31
/* 80B29C34  7F 04 C3 78 */	mr r4, r24
/* 80B29C38  4B 51 E1 15 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B29C3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B29C40  41 82 01 90 */	beq lbl_80B29DD0
/* 80B29C44  2C 1C 00 02 */	cmpwi r28, 2
/* 80B29C48  41 82 01 88 */	beq lbl_80B29DD0
/* 80B29C4C  40 80 00 14 */	bge lbl_80B29C60
/* 80B29C50  2C 1C 00 00 */	cmpwi r28, 0
/* 80B29C54  41 82 00 18 */	beq lbl_80B29C6C
/* 80B29C58  40 80 00 68 */	bge lbl_80B29CC0
/* 80B29C5C  48 00 01 74 */	b lbl_80B29DD0
lbl_80B29C60:
/* 80B29C60  2C 1C 00 04 */	cmpwi r28, 4
/* 80B29C64  40 80 01 6C */	bge lbl_80B29DD0
/* 80B29C68  48 00 00 58 */	b lbl_80B29CC0
lbl_80B29C6C:
/* 80B29C6C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B29C70  2C 00 00 01 */	cmpwi r0, 1
/* 80B29C74  41 82 00 28 */	beq lbl_80B29C9C
/* 80B29C78  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B29C7C  4B 61 BA 81 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B29C80  38 00 00 00 */	li r0, 0
/* 80B29C84  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B29C88  C0 19 00 D8 */	lfs f0, 0xd8(r25)
/* 80B29C8C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B29C90  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B29C94  38 00 00 01 */	li r0, 1
/* 80B29C98  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B29C9C:
/* 80B29C9C  38 00 00 00 */	li r0, 0
/* 80B29CA0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B29CA4  38 60 00 0B */	li r3, 0xb
/* 80B29CA8  4B 62 2E 85 */	bl daNpcT_offTmpBit__FUl
/* 80B29CAC  7F 43 D3 78 */	mr r3, r26
/* 80B29CB0  80 9A 0A 7C */	lwz r4, 0xa7c(r26)
/* 80B29CB4  38 A0 00 00 */	li r5, 0
/* 80B29CB8  4B 62 1F 39 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B29CBC  48 00 01 14 */	b lbl_80B29DD0
lbl_80B29CC0:
/* 80B29CC0  C0 19 00 D8 */	lfs f0, 0xd8(r25)
/* 80B29CC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B29CC8  C0 19 00 EC */	lfs f0, 0xec(r25)
/* 80B29CCC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B29CD0  C0 19 01 4C */	lfs f0, 0x14c(r25)
/* 80B29CD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B29CD8  7F 43 D3 78 */	mr r3, r26
/* 80B29CDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B29CE0  3B 24 61 C0 */	addi r25, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B29CE4  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 80B29CE8  4B 4F 0A 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B29CEC  7C 60 1B 78 */	mr r0, r3
/* 80B29CF0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80B29CF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B29CF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B29CFC  7C 04 07 34 */	extsh r4, r0
/* 80B29D00  4B 4E 26 DD */	bl mDoMtx_YrotS__FPA4_fs
/* 80B29D04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B29D08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B29D0C  38 81 00 10 */	addi r4, r1, 0x10
/* 80B29D10  7C 85 23 78 */	mr r5, r4
/* 80B29D14  4B 81 D0 59 */	bl PSMTXMultVec
/* 80B29D18  38 61 00 10 */	addi r3, r1, 0x10
/* 80B29D1C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80B29D20  7C 65 1B 78 */	mr r5, r3
/* 80B29D24  4B 81 D3 6D */	bl PSVECAdd
/* 80B29D28  38 7A 09 30 */	addi r3, r26, 0x930
/* 80B29D2C  38 81 00 10 */	addi r4, r1, 0x10
/* 80B29D30  4B 73 DF F9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80B29D34  7F C3 F3 78 */	mr r3, r30
/* 80B29D38  38 9A 09 30 */	addi r4, r26, 0x930
/* 80B29D3C  4B 54 A7 65 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80B29D40  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B29D44  38 61 00 10 */	addi r3, r1, 0x10
/* 80B29D48  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80B29D4C  4B 74 6E B9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B29D50  7C 60 1B 78 */	mr r0, r3
/* 80B29D54  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80B29D58  2C 1C 00 01 */	cmpwi r28, 1
/* 80B29D5C  40 82 00 34 */	bne lbl_80B29D90
/* 80B29D60  80 79 5D AC */	lwz r3, 0x5dac(r25)
/* 80B29D64  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80B29D68  7C 05 07 34 */	extsh r5, r0
/* 80B29D6C  38 C0 00 00 */	li r6, 0
/* 80B29D70  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B29D74  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B29D78  7D 89 03 A6 */	mtctr r12
/* 80B29D7C  4E 80 04 21 */	bctrl 
/* 80B29D80  7F E3 FB 78 */	mr r3, r31
/* 80B29D84  38 81 00 10 */	addi r4, r1, 0x10
/* 80B29D88  4B 51 E6 3D */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 80B29D8C  93 7A 0D C4 */	stw r27, 0xdc4(r26)
lbl_80B29D90:
/* 80B29D90  2C 1C 00 03 */	cmpwi r28, 3
/* 80B29D94  40 82 00 3C */	bne lbl_80B29DD0
/* 80B29D98  80 79 5D AC */	lwz r3, 0x5dac(r25)
/* 80B29D9C  38 81 00 10 */	addi r4, r1, 0x10
/* 80B29DA0  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 80B29DA4  38 C0 00 00 */	li r6, 0
/* 80B29DA8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B29DAC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B29DB0  7D 89 03 A6 */	mtctr r12
/* 80B29DB4  4E 80 04 21 */	bctrl 
/* 80B29DB8  7F 43 D3 78 */	mr r3, r26
/* 80B29DBC  80 9A 0A 7C */	lwz r4, 0xa7c(r26)
/* 80B29DC0  38 A0 00 00 */	li r5, 0
/* 80B29DC4  4B 62 1E 2D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B29DC8  38 00 00 00 */	li r0, 0
/* 80B29DCC  90 1A 0D C4 */	stw r0, 0xdc4(r26)
lbl_80B29DD0:
/* 80B29DD0  2C 1C 00 03 */	cmpwi r28, 3
/* 80B29DD4  41 82 00 80 */	beq lbl_80B29E54
/* 80B29DD8  40 80 00 AC */	bge lbl_80B29E84
/* 80B29DDC  2C 1C 00 00 */	cmpwi r28, 0
/* 80B29DE0  40 80 00 08 */	bge lbl_80B29DE8
/* 80B29DE4  48 00 00 A0 */	b lbl_80B29E84
lbl_80B29DE8:
/* 80B29DE8  7F 43 D3 78 */	mr r3, r26
/* 80B29DEC  38 80 00 00 */	li r4, 0
/* 80B29DF0  38 A0 00 00 */	li r5, 0
/* 80B29DF4  38 C0 00 00 */	li r6, 0
/* 80B29DF8  38 E0 00 00 */	li r7, 0
/* 80B29DFC  4B 62 1E 7D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B29E00  2C 03 00 00 */	cmpwi r3, 0
/* 80B29E04  41 82 00 18 */	beq lbl_80B29E1C
/* 80B29E08  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80B29E0C  28 00 00 01 */	cmplwi r0, 1
/* 80B29E10  40 82 00 74 */	bne lbl_80B29E84
/* 80B29E14  3B A0 00 01 */	li r29, 1
/* 80B29E18  48 00 00 6C */	b lbl_80B29E84
lbl_80B29E1C:
/* 80B29E1C  2C 1C 00 01 */	cmpwi r28, 1
/* 80B29E20  41 82 00 2C */	beq lbl_80B29E4C
/* 80B29E24  40 80 00 60 */	bge lbl_80B29E84
/* 80B29E28  2C 1C 00 00 */	cmpwi r28, 0
/* 80B29E2C  40 80 00 08 */	bge lbl_80B29E34
/* 80B29E30  48 00 00 54 */	b lbl_80B29E84
lbl_80B29E34:
/* 80B29E34  3C 60 80 45 */	lis r3, mBlureFlag__13mDoGph_gInf_c+0x2@ha /* 0x80450BE6@ha */
/* 80B29E38  88 03 0B E6 */	lbz r0, mBlureFlag__13mDoGph_gInf_c+0x2@l(r3)  /* 0x80450BE6@l */
/* 80B29E3C  28 00 00 00 */	cmplwi r0, 0
/* 80B29E40  41 82 00 44 */	beq lbl_80B29E84
/* 80B29E44  3B A0 00 01 */	li r29, 1
/* 80B29E48  48 00 00 3C */	b lbl_80B29E84
lbl_80B29E4C:
/* 80B29E4C  3B A0 00 01 */	li r29, 1
/* 80B29E50  48 00 00 34 */	b lbl_80B29E84
lbl_80B29E54:
/* 80B29E54  7F 43 D3 78 */	mr r3, r26
/* 80B29E58  38 80 00 00 */	li r4, 0
/* 80B29E5C  38 A0 00 00 */	li r5, 0
/* 80B29E60  38 C0 00 00 */	li r6, 0
/* 80B29E64  38 E0 00 00 */	li r7, 0
/* 80B29E68  4B 62 1E 11 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B29E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80B29E70  41 82 00 14 */	beq lbl_80B29E84
/* 80B29E74  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80B29E78  28 00 00 01 */	cmplwi r0, 1
/* 80B29E7C  40 82 00 08 */	bne lbl_80B29E84
/* 80B29E80  3B A0 00 01 */	li r29, 1
lbl_80B29E84:
/* 80B29E84  7F A3 EB 78 */	mr r3, r29
/* 80B29E88  39 61 00 40 */	addi r11, r1, 0x40
/* 80B29E8C  4B 83 83 89 */	bl _restgpr_24
/* 80B29E90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B29E94  7C 08 03 A6 */	mtlr r0
/* 80B29E98  38 21 00 40 */	addi r1, r1, 0x40
/* 80B29E9C  4E 80 00 20 */	blr 

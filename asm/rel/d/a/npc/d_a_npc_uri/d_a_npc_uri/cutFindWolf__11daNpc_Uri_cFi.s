lbl_80B2985C:
/* 80B2985C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B29860  7C 08 02 A6 */	mflr r0
/* 80B29864  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B29868  39 61 00 40 */	addi r11, r1, 0x40
/* 80B2986C  4B 83 89 5D */	bl _savegpr_24
/* 80B29870  7C 7A 1B 78 */	mr r26, r3
/* 80B29874  7C 98 23 78 */	mr r24, r4
/* 80B29878  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B2987C  3B E3 CE 14 */	addi r31, r3, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B29880  3B A0 00 00 */	li r29, 0
/* 80B29884  3B 80 FF FF */	li r28, -1
/* 80B29888  3B 60 00 00 */	li r27, 0
/* 80B2988C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B29890  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B29894  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80B29898  3B 3E 40 C0 */	addi r25, r30, 0x40c0
/* 80B2989C  7F 23 CB 78 */	mr r3, r25
/* 80B298A0  3C A0 80 B3 */	lis r5, d_a_npc_uri__stringBase0@ha /* 0x80B2CF74@ha */
/* 80B298A4  38 A5 CF 74 */	addi r5, r5, d_a_npc_uri__stringBase0@l /* 0x80B2CF74@l */
/* 80B298A8  38 A5 00 C4 */	addi r5, r5, 0xc4
/* 80B298AC  38 C0 00 03 */	li r6, 3
/* 80B298B0  4B 51 E8 3D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B298B4  28 03 00 00 */	cmplwi r3, 0
/* 80B298B8  41 82 00 08 */	beq lbl_80B298C0
/* 80B298BC  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B298C0:
/* 80B298C0  7F 23 CB 78 */	mr r3, r25
/* 80B298C4  7F 04 C3 78 */	mr r4, r24
/* 80B298C8  3C A0 80 B3 */	lis r5, d_a_npc_uri__stringBase0@ha /* 0x80B2CF74@ha */
/* 80B298CC  38 A5 CF 74 */	addi r5, r5, d_a_npc_uri__stringBase0@l /* 0x80B2CF74@l */
/* 80B298D0  38 A5 00 CE */	addi r5, r5, 0xce
/* 80B298D4  38 C0 00 03 */	li r6, 3
/* 80B298D8  4B 51 E8 15 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B298DC  28 03 00 00 */	cmplwi r3, 0
/* 80B298E0  41 82 00 08 */	beq lbl_80B298E8
/* 80B298E4  83 63 00 00 */	lwz r27, 0(r3)
lbl_80B298E8:
/* 80B298E8  7F 23 CB 78 */	mr r3, r25
/* 80B298EC  7F 04 C3 78 */	mr r4, r24
/* 80B298F0  4B 51 E4 5D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B298F4  2C 03 00 00 */	cmpwi r3, 0
/* 80B298F8  41 82 01 AC */	beq lbl_80B29AA4
/* 80B298FC  2C 1C 00 01 */	cmpwi r28, 1
/* 80B29900  41 82 01 8C */	beq lbl_80B29A8C
/* 80B29904  40 80 01 A0 */	bge lbl_80B29AA4
/* 80B29908  2C 1C 00 00 */	cmpwi r28, 0
/* 80B2990C  40 80 00 08 */	bge lbl_80B29914
/* 80B29910  48 00 01 94 */	b lbl_80B29AA4
lbl_80B29914:
/* 80B29914  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80B29918  2C 00 00 0C */	cmpwi r0, 0xc
/* 80B2991C  41 82 00 24 */	beq lbl_80B29940
/* 80B29920  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80B29924  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80B29928  4B 61 BF 71 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2992C  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80B29930  38 00 00 0C */	li r0, 0xc
/* 80B29934  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80B29938  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2993C  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80B29940:
/* 80B29940  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80B29944  2C 00 00 17 */	cmpwi r0, 0x17
/* 80B29948  41 82 00 24 */	beq lbl_80B2996C
/* 80B2994C  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80B29950  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80B29954  4B 61 BF 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B29958  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80B2995C  38 00 00 17 */	li r0, 0x17
/* 80B29960  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80B29964  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B29968  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80B2996C:
/* 80B2996C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500E1@ha */
/* 80B29970  38 03 00 E1 */	addi r0, r3, 0x00E1 /* 0x000500E1@l */
/* 80B29974  90 01 00 08 */	stw r0, 8(r1)
/* 80B29978  38 7A 05 80 */	addi r3, r26, 0x580
/* 80B2997C  38 81 00 08 */	addi r4, r1, 8
/* 80B29980  38 A0 FF FF */	li r5, -1
/* 80B29984  81 9A 05 80 */	lwz r12, 0x580(r26)
/* 80B29988  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B2998C  7D 89 03 A6 */	mtctr r12
/* 80B29990  4E 80 04 21 */	bctrl 
/* 80B29994  93 7A 0D C4 */	stw r27, 0xdc4(r26)
/* 80B29998  7F 43 D3 78 */	mr r3, r26
/* 80B2999C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B299A0  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B299A4  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80B299A8  4B 4F 0D 69 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B299AC  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 80B299B0  7F 24 18 50 */	subf r25, r4, r3
/* 80B299B4  7F 20 07 34 */	extsh r0, r25
/* 80B299B8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80B299BC  40 81 00 0C */	ble lbl_80B299C8
/* 80B299C0  3B 20 40 00 */	li r25, 0x4000
/* 80B299C4  48 00 00 10 */	b lbl_80B299D4
lbl_80B299C8:
/* 80B299C8  2C 00 C0 00 */	cmpwi r0, -16384
/* 80B299CC  40 80 00 08 */	bge lbl_80B299D4
/* 80B299D0  3B 20 C0 00 */	li r25, -16384
lbl_80B299D4:
/* 80B299D4  7F 39 22 14 */	add r25, r25, r4
/* 80B299D8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B299DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B299E0  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80B299E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B299E8  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 80B299EC  38 7F 00 00 */	addi r3, r31, 0
/* 80B299F0  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 80B299F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80B299F8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B299FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B29A00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B29A04  7F 24 CB 78 */	mr r4, r25
/* 80B29A08  4B 4E 29 D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B29A0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B29A10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B29A14  38 81 00 0C */	addi r4, r1, 0xc
/* 80B29A18  7C 85 23 78 */	mr r5, r4
/* 80B29A1C  4B 81 D3 51 */	bl PSMTXMultVec
/* 80B29A20  38 61 00 0C */	addi r3, r1, 0xc
/* 80B29A24  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80B29A28  7C 65 1B 78 */	mr r5, r3
/* 80B29A2C  4B 81 D6 65 */	bl PSVECAdd
/* 80B29A30  38 7A 09 30 */	addi r3, r26, 0x930
/* 80B29A34  38 81 00 0C */	addi r4, r1, 0xc
/* 80B29A38  4B 73 E2 F1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80B29A3C  7F C3 F3 78 */	mr r3, r30
/* 80B29A40  38 9A 09 30 */	addi r4, r26, 0x930
/* 80B29A44  4B 54 AA 5D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80B29A48  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B29A4C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80B29A50  38 81 00 0C */	addi r4, r1, 0xc
/* 80B29A54  3C B9 00 01 */	addis r5, r25, 1
/* 80B29A58  38 05 80 00 */	addi r0, r5, -32768
/* 80B29A5C  7C 05 07 34 */	extsh r5, r0
/* 80B29A60  38 C0 00 00 */	li r6, 0
/* 80B29A64  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B29A68  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B29A6C  7D 89 03 A6 */	mtctr r12
/* 80B29A70  4E 80 04 21 */	bctrl 
/* 80B29A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B29A78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B29A7C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B29A80  38 80 13 08 */	li r4, 0x1308
/* 80B29A84  4B 50 AF 09 */	bl onEventBit__11dSv_event_cFUs
/* 80B29A88  48 00 00 1C */	b lbl_80B29AA4
lbl_80B29A8C:
/* 80B29A8C  38 7A 0F 88 */	addi r3, r26, 0xf88
/* 80B29A90  4B 61 BC 79 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B29A94  7C 64 1B 79 */	or. r4, r3, r3
/* 80B29A98  41 82 00 0C */	beq lbl_80B29AA4
/* 80B29A9C  38 7E 3F 90 */	addi r3, r30, 0x3f90
/* 80B29AA0  4B 51 9B BD */	bl setPt2__14dEvt_control_cFPv
lbl_80B29AA4:
/* 80B29AA4  2C 1C 00 01 */	cmpwi r28, 1
/* 80B29AA8  41 82 00 A8 */	beq lbl_80B29B50
/* 80B29AAC  40 80 00 DC */	bge lbl_80B29B88
/* 80B29AB0  2C 1C 00 00 */	cmpwi r28, 0
/* 80B29AB4  40 80 00 08 */	bge lbl_80B29ABC
/* 80B29AB8  48 00 00 D0 */	b lbl_80B29B88
lbl_80B29ABC:
/* 80B29ABC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B29AC0  2C 00 00 01 */	cmpwi r0, 1
/* 80B29AC4  41 82 00 28 */	beq lbl_80B29AEC
/* 80B29AC8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B29ACC  4B 61 BC 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B29AD0  38 00 00 00 */	li r0, 0
/* 80B29AD4  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B29AD8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B29ADC  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B29AE0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B29AE4  38 00 00 01 */	li r0, 1
/* 80B29AE8  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B29AEC:
/* 80B29AEC  38 00 00 00 */	li r0, 0
/* 80B29AF0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B29AF4  80 1A 0D C4 */	lwz r0, 0xdc4(r26)
/* 80B29AF8  2C 00 00 00 */	cmpwi r0, 0
/* 80B29AFC  41 82 00 18 */	beq lbl_80B29B14
/* 80B29B00  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80B29B04  48 00 30 0D */	bl func_80B2CB10
/* 80B29B08  2C 03 00 00 */	cmpwi r3, 0
/* 80B29B0C  40 82 00 08 */	bne lbl_80B29B14
/* 80B29B10  3B A0 00 01 */	li r29, 1
lbl_80B29B14:
/* 80B29B14  2C 1D 00 00 */	cmpwi r29, 0
/* 80B29B18  41 82 00 70 */	beq lbl_80B29B88
/* 80B29B1C  38 7A 0F 88 */	addi r3, r26, 0xf88
/* 80B29B20  4B 61 BB E9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B29B24  7C 64 1B 79 */	or. r4, r3, r3
/* 80B29B28  41 82 00 60 */	beq lbl_80B29B88
/* 80B29B2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B29B30  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B29B34  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80B29B38  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80B29B3C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B29B40  4B 74 70 C5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B29B44  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80B29B48  B0 64 06 06 */	sth r3, 0x606(r4)
/* 80B29B4C  48 00 00 3C */	b lbl_80B29B88
lbl_80B29B50:
/* 80B29B50  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B29B54  2C 00 00 01 */	cmpwi r0, 1
/* 80B29B58  41 82 00 28 */	beq lbl_80B29B80
/* 80B29B5C  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B29B60  4B 61 BB 9D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B29B64  38 00 00 00 */	li r0, 0
/* 80B29B68  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B29B6C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B29B70  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B29B74  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B29B78  38 00 00 01 */	li r0, 1
/* 80B29B7C  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B29B80:
/* 80B29B80  38 00 00 00 */	li r0, 0
/* 80B29B84  98 1A 0C FF */	stb r0, 0xcff(r26)
lbl_80B29B88:
/* 80B29B88  7F A3 EB 78 */	mr r3, r29
/* 80B29B8C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B29B90  4B 83 86 85 */	bl _restgpr_24
/* 80B29B94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B29B98  7C 08 03 A6 */	mtlr r0
/* 80B29B9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B29BA0  4E 80 00 20 */	blr 

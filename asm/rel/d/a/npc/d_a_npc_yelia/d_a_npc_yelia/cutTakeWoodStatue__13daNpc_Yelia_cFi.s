lbl_80B4F534:
/* 80B4F534  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80B4F538  7C 08 02 A6 */	mflr r0
/* 80B4F53C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80B4F540  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80B4F544  4B 81 2C 7D */	bl _savegpr_22
/* 80B4F548  7C 7F 1B 78 */	mr r31, r3
/* 80B4F54C  7C 96 23 78 */	mr r22, r4
/* 80B4F550  3C 60 80 B5 */	lis r3, m__19daNpc_Yelia_Param_c@ha /* 0x80B522B4@ha */
/* 80B4F554  3B A3 22 B4 */	addi r29, r3, m__19daNpc_Yelia_Param_c@l /* 0x80B522B4@l */
/* 80B4F558  38 00 00 00 */	li r0, 0
/* 80B4F55C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B4F560  3B 60 00 00 */	li r27, 0
/* 80B4F564  3B 40 FF FF */	li r26, -1
/* 80B4F568  3B 20 00 00 */	li r25, 0
/* 80B4F56C  3B 00 00 00 */	li r24, 0
/* 80B4F570  3A E0 00 00 */	li r23, 0
/* 80B4F574  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4F578  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4F57C  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80B4F580  7F 83 E3 78 */	mr r3, r28
/* 80B4F584  3C A0 80 B5 */	lis r5, d_a_npc_yelia__stringBase0@ha /* 0x80B52408@ha */
/* 80B4F588  38 A5 24 08 */	addi r5, r5, d_a_npc_yelia__stringBase0@l /* 0x80B52408@l */
/* 80B4F58C  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B4F590  38 C0 00 03 */	li r6, 3
/* 80B4F594  4B 4F 8B 59 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4F598  28 03 00 00 */	cmplwi r3, 0
/* 80B4F59C  41 82 00 08 */	beq lbl_80B4F5A4
/* 80B4F5A0  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B4F5A4:
/* 80B4F5A4  7F 83 E3 78 */	mr r3, r28
/* 80B4F5A8  7E C4 B3 78 */	mr r4, r22
/* 80B4F5AC  3C A0 80 B5 */	lis r5, d_a_npc_yelia__stringBase0@ha /* 0x80B52408@ha */
/* 80B4F5B0  38 A5 24 08 */	addi r5, r5, d_a_npc_yelia__stringBase0@l /* 0x80B52408@l */
/* 80B4F5B4  38 A5 00 B4 */	addi r5, r5, 0xb4
/* 80B4F5B8  38 C0 00 03 */	li r6, 3
/* 80B4F5BC  4B 4F 8B 31 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4F5C0  28 03 00 00 */	cmplwi r3, 0
/* 80B4F5C4  41 82 00 08 */	beq lbl_80B4F5CC
/* 80B4F5C8  83 23 00 00 */	lwz r25, 0(r3)
lbl_80B4F5CC:
/* 80B4F5CC  7F 83 E3 78 */	mr r3, r28
/* 80B4F5D0  7E C4 B3 78 */	mr r4, r22
/* 80B4F5D4  3C A0 80 B5 */	lis r5, d_a_npc_yelia__stringBase0@ha /* 0x80B52408@ha */
/* 80B4F5D8  38 A5 24 08 */	addi r5, r5, d_a_npc_yelia__stringBase0@l /* 0x80B52408@l */
/* 80B4F5DC  38 A5 00 AE */	addi r5, r5, 0xae
/* 80B4F5E0  38 C0 00 03 */	li r6, 3
/* 80B4F5E4  4B 4F 8B 09 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4F5E8  28 03 00 00 */	cmplwi r3, 0
/* 80B4F5EC  41 82 00 08 */	beq lbl_80B4F5F4
/* 80B4F5F0  83 03 00 00 */	lwz r24, 0(r3)
lbl_80B4F5F4:
/* 80B4F5F4  7F 83 E3 78 */	mr r3, r28
/* 80B4F5F8  7E C4 B3 78 */	mr r4, r22
/* 80B4F5FC  3C A0 80 B5 */	lis r5, d_a_npc_yelia__stringBase0@ha /* 0x80B52408@ha */
/* 80B4F600  38 A5 24 08 */	addi r5, r5, d_a_npc_yelia__stringBase0@l /* 0x80B52408@l */
/* 80B4F604  38 A5 00 BA */	addi r5, r5, 0xba
/* 80B4F608  38 C0 00 03 */	li r6, 3
/* 80B4F60C  4B 4F 8A E1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4F610  28 03 00 00 */	cmplwi r3, 0
/* 80B4F614  41 82 00 08 */	beq lbl_80B4F61C
/* 80B4F618  82 E3 00 00 */	lwz r23, 0(r3)
lbl_80B4F61C:
/* 80B4F61C  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 80B4F620  80 1D 01 2C */	lwz r0, 0x12c(r29)
/* 80B4F624  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B4F628  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B4F62C  93 E1 00 18 */	stw r31, 0x18(r1)
/* 80B4F630  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80B4F634  4B 5F 60 D5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B4F638  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B4F63C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B4F640  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4F644  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4F648  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80B4F64C  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 80B4F650  38 00 00 00 */	li r0, 0
/* 80B4F654  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80B4F658  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80B4F65C  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80B4F660  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80B4F664  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80B4F668  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80B4F66C  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80B4F670  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80B4F674  7F 83 E3 78 */	mr r3, r28
/* 80B4F678  7E C4 B3 78 */	mr r4, r22
/* 80B4F67C  4B 4F 86 D1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B4F680  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F684  41 82 04 F4 */	beq lbl_80B4FB78
/* 80B4F688  2C 1A 00 08 */	cmpwi r26, 8
/* 80B4F68C  41 82 01 98 */	beq lbl_80B4F824
/* 80B4F690  40 80 00 38 */	bge lbl_80B4F6C8
/* 80B4F694  2C 1A 00 04 */	cmpwi r26, 4
/* 80B4F698  41 82 01 A0 */	beq lbl_80B4F838
/* 80B4F69C  40 80 00 1C */	bge lbl_80B4F6B8
/* 80B4F6A0  2C 1A 00 01 */	cmpwi r26, 1
/* 80B4F6A4  41 82 01 80 */	beq lbl_80B4F824
/* 80B4F6A8  40 80 04 70 */	bge lbl_80B4FB18
/* 80B4F6AC  2C 1A 00 00 */	cmpwi r26, 0
/* 80B4F6B0  40 80 00 48 */	bge lbl_80B4F6F8
/* 80B4F6B4  48 00 04 64 */	b lbl_80B4FB18
lbl_80B4F6B8:
/* 80B4F6B8  2C 1A 00 06 */	cmpwi r26, 6
/* 80B4F6BC  41 82 04 5C */	beq lbl_80B4FB18
/* 80B4F6C0  40 80 02 18 */	bge lbl_80B4F8D8
/* 80B4F6C4  48 00 01 B8 */	b lbl_80B4F87C
lbl_80B4F6C8:
/* 80B4F6C8  2C 1A 00 0D */	cmpwi r26, 0xd
/* 80B4F6CC  41 82 03 B4 */	beq lbl_80B4FA80
/* 80B4F6D0  40 80 00 1C */	bge lbl_80B4F6EC
/* 80B4F6D4  2C 1A 00 0B */	cmpwi r26, 0xb
/* 80B4F6D8  41 82 02 50 */	beq lbl_80B4F928
/* 80B4F6DC  40 80 04 3C */	bge lbl_80B4FB18
/* 80B4F6E0  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B4F6E4  40 80 04 34 */	bge lbl_80B4FB18
/* 80B4F6E8  48 00 01 F8 */	b lbl_80B4F8E0
lbl_80B4F6EC:
/* 80B4F6EC  2C 1A 00 63 */	cmpwi r26, 0x63
/* 80B4F6F0  41 82 02 38 */	beq lbl_80B4F928
/* 80B4F6F4  48 00 04 24 */	b lbl_80B4FB18
lbl_80B4F6F8:
/* 80B4F6F8  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 80B4F6FC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4F700  4B 5F 61 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F704  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 80B4F708  38 00 00 13 */	li r0, 0x13
/* 80B4F70C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B4F710  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4F714  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80B4F718  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B4F71C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B4F720  4B 5F 61 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F724  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B4F728  38 00 00 0F */	li r0, 0xf
/* 80B4F72C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B4F730  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4F734  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B4F738  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050110@ha */
/* 80B4F73C  38 03 01 10 */	addi r0, r3, 0x0110 /* 0x00050110@l */
/* 80B4F740  90 01 00 08 */	stw r0, 8(r1)
/* 80B4F744  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B4F748  38 81 00 08 */	addi r4, r1, 8
/* 80B4F74C  38 A0 FF FF */	li r5, -1
/* 80B4F750  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80B4F754  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B4F758  7D 89 03 A6 */	mtctr r12
/* 80B4F75C  4E 80 04 21 */	bctrl 
/* 80B4F760  38 60 00 0B */	li r3, 0xb
/* 80B4F764  4B 5F D3 C9 */	bl daNpcT_offTmpBit__FUl
/* 80B4F768  38 60 00 0C */	li r3, 0xc
/* 80B4F76C  4B 5F D3 C1 */	bl daNpcT_offTmpBit__FUl
/* 80B4F770  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4F774  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4F778  38 63 02 B0 */	addi r3, r3, 0x2b0
/* 80B4F77C  38 80 00 40 */	li r4, 0x40
/* 80B4F780  4B 4E 50 91 */	bl onSwitch__12dSv_memBit_cFi
/* 80B4F784  38 60 00 0A */	li r3, 0xa
/* 80B4F788  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B4F78C  7C 04 07 74 */	extsb r4, r0
/* 80B4F790  38 A1 00 34 */	addi r5, r1, 0x34
/* 80B4F794  38 C1 00 20 */	addi r6, r1, 0x20
/* 80B4F798  4B 5F CD 69 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80B4F79C  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F7A0  41 82 00 38 */	beq lbl_80B4F7D8
/* 80B4F7A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4F7A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4F7AC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B4F7B0  38 81 00 34 */	addi r4, r1, 0x34
/* 80B4F7B4  A8 A1 00 22 */	lha r5, 0x22(r1)
/* 80B4F7B8  38 C0 00 00 */	li r6, 0
/* 80B4F7BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B4F7C0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B4F7C4  7D 89 03 A6 */	mtctr r12
/* 80B4F7C8  4E 80 04 21 */	bctrl 
/* 80B4F7CC  7F 83 E3 78 */	mr r3, r28
/* 80B4F7D0  38 81 00 34 */	addi r4, r1, 0x34
/* 80B4F7D4  4B 4F 8B F1 */	bl setGoal__16dEvent_manager_cFP4cXyz
lbl_80B4F7D8:
/* 80B4F7D8  80 7F 0F E4 */	lwz r3, 0xfe4(r31)
/* 80B4F7DC  38 81 00 0C */	addi r4, r1, 0xc
/* 80B4F7E0  4B 4C A1 DD */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B4F7E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F7E8  41 82 03 30 */	beq lbl_80B4FB18
/* 80B4F7EC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B4F7F0  28 03 00 00 */	cmplwi r3, 0
/* 80B4F7F4  41 82 03 24 */	beq lbl_80B4FB18
/* 80B4F7F8  4B 4C 94 E9 */	bl fopAc_IsActor__FPv
/* 80B4F7FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F800  41 82 03 18 */	beq lbl_80B4FB18
/* 80B4F804  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B4F808  C0 1D 01 38 */	lfs f0, 0x138(r29)
/* 80B4F80C  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 80B4F810  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 80B4F814  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 80B4F818  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B4F81C  4B 4E 82 59 */	bl show__12daItemBase_cFv
/* 80B4F820  48 00 02 F8 */	b lbl_80B4FB18
lbl_80B4F824:
/* 80B4F824  7F E3 FB 78 */	mr r3, r31
/* 80B4F828  38 80 00 26 */	li r4, 0x26
/* 80B4F82C  38 A0 00 00 */	li r5, 0
/* 80B4F830  4B 5F C3 C1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B4F834  48 00 02 E4 */	b lbl_80B4FB18
lbl_80B4F838:
/* 80B4F838  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 80B4F83C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4F840  4B 5F 60 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F844  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 80B4F848  38 00 00 1A */	li r0, 0x1a
/* 80B4F84C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B4F850  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4F854  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80B4F858  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B4F85C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B4F860  4B 5F 60 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F864  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B4F868  38 00 00 11 */	li r0, 0x11
/* 80B4F86C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B4F870  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4F874  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B4F878  48 00 02 A0 */	b lbl_80B4FB18
lbl_80B4F87C:
/* 80B4F87C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B4F880  2C 00 00 15 */	cmpwi r0, 0x15
/* 80B4F884  41 82 00 24 */	beq lbl_80B4F8A8
/* 80B4F888  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 80B4F88C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4F890  4B 5F 60 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F894  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 80B4F898  38 00 00 15 */	li r0, 0x15
/* 80B4F89C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B4F8A0  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B4F8A4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B4F8A8:
/* 80B4F8A8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B4F8AC  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80B4F8B0  41 82 02 68 */	beq lbl_80B4FB18
/* 80B4F8B4  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B4F8B8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B4F8BC  4B 5F 5F DD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F8C0  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B4F8C4  38 00 00 1D */	li r0, 0x1d
/* 80B4F8C8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B4F8CC  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B4F8D0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B4F8D4  48 00 02 44 */	b lbl_80B4FB18
lbl_80B4F8D8:
/* 80B4F8D8  93 3F 0D C4 */	stw r25, 0xdc4(r31)
/* 80B4F8DC  48 00 02 3C */	b lbl_80B4FB18
lbl_80B4F8E0:
/* 80B4F8E0  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 80B4F8E4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4F8E8  4B 5F 5F B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F8EC  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 80B4F8F0  38 00 00 15 */	li r0, 0x15
/* 80B4F8F4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B4F8F8  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4F8FC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80B4F900  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B4F904  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B4F908  4B 5F 5F 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F90C  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B4F910  38 00 00 11 */	li r0, 0x11
/* 80B4F914  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B4F918  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4F91C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B4F920  93 3F 0D C4 */	stw r25, 0xdc4(r31)
/* 80B4F924  48 00 01 F4 */	b lbl_80B4FB18
lbl_80B4F928:
/* 80B4F928  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 80B4F92C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4F930  4B 5F 5F 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F934  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 80B4F938  38 00 00 13 */	li r0, 0x13
/* 80B4F93C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B4F940  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4F944  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80B4F948  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B4F94C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B4F950  4B 5F 5F 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F954  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B4F958  38 00 00 11 */	li r0, 0x11
/* 80B4F95C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B4F960  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4F964  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B4F968  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4F96C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4F970  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B4F974  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B4F978  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B4F97C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B4F980  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B4F984  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B4F988  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B4F98C  38 81 00 34 */	addi r4, r1, 0x34
/* 80B4F990  38 A0 00 00 */	li r5, 0
/* 80B4F994  38 C0 00 00 */	li r6, 0
/* 80B4F998  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B4F99C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B4F9A0  7D 89 03 A6 */	mtctr r12
/* 80B4F9A4  4E 80 04 21 */	bctrl 
/* 80B4F9A8  7F 83 E3 78 */	mr r3, r28
/* 80B4F9AC  38 81 00 34 */	addi r4, r1, 0x34
/* 80B4F9B0  4B 4F 8A 15 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 80B4F9B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B4F9B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B4F9BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B4F9C0  C0 7D 00 D4 */	lfs f3, 0xd4(r29)
/* 80B4F9C4  D0 63 04 04 */	stfs f3, 0x404(r3)
/* 80B4F9C8  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4F9CC  D0 03 04 08 */	stfs f0, 0x408(r3)
/* 80B4F9D0  38 00 00 00 */	li r0, 0
/* 80B4F9D4  90 03 04 10 */	stw r0, 0x410(r3)
/* 80B4F9D8  D0 03 04 0C */	stfs f0, 0x40c(r3)
/* 80B4F9DC  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80B4F9E0  38 00 00 3C */	li r0, 0x3c
/* 80B4F9E4  90 03 04 20 */	stw r0, 0x420(r3)
/* 80B4F9E8  EC 43 00 28 */	fsubs f2, f3, f0
/* 80B4F9EC  80 03 04 20 */	lwz r0, 0x420(r3)
/* 80B4F9F0  C8 3D 01 40 */	lfd f1, 0x140(r29)
/* 80B4F9F4  90 01 00 AC */	stw r0, 0xac(r1)
/* 80B4F9F8  3C 00 43 30 */	lis r0, 0x4330
/* 80B4F9FC  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80B4FA00  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80B4FA04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B4FA08  EC 02 00 24 */	fdivs f0, f2, f0
/* 80B4FA0C  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 80B4FA10  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 80B4FA14  2C 1A 00 63 */	cmpwi r26, 0x63
/* 80B4FA18  40 82 01 00 */	bne lbl_80B4FB18
/* 80B4FA1C  38 60 01 1F */	li r3, 0x11f
/* 80B4FA20  4B 5F D0 0D */	bl daNpcT_onEvtBit__FUl
/* 80B4FA24  38 60 01 7A */	li r3, 0x17a
/* 80B4FA28  4B 5F D0 05 */	bl daNpcT_onEvtBit__FUl
/* 80B4FA2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4FA30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4FA34  38 63 00 9C */	addi r3, r3, 0x9c
/* 80B4FA38  38 80 00 FF */	li r4, 0xff
/* 80B4FA3C  4B 4E 41 F1 */	bl setWarashibeItem__17dSv_player_item_cFUc
/* 80B4FA40  38 60 00 0B */	li r3, 0xb
/* 80B4FA44  4B 5F D0 E9 */	bl daNpcT_offTmpBit__FUl
/* 80B4FA48  38 60 00 0C */	li r3, 0xc
/* 80B4FA4C  4B 5F D0 E1 */	bl daNpcT_offTmpBit__FUl
/* 80B4FA50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4FA54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4FA58  3A C3 02 B0 */	addi r22, r3, 0x2b0
/* 80B4FA5C  7E C3 B3 78 */	mr r3, r22
/* 80B4FA60  38 80 00 40 */	li r4, 0x40
/* 80B4FA64  4B 4E 4D AD */	bl onSwitch__12dSv_memBit_cFi
/* 80B4FA68  7E C3 B3 78 */	mr r3, r22
/* 80B4FA6C  38 80 00 1C */	li r4, 0x1c
/* 80B4FA70  4B 4E 4D A1 */	bl onSwitch__12dSv_memBit_cFi
/* 80B4FA74  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B4FA78  4B 6F AA 4D */	bl remove__10dMsgFlow_cFv
/* 80B4FA7C  48 00 00 9C */	b lbl_80B4FB18
lbl_80B4FA80:
/* 80B4FA80  38 00 FF FF */	li r0, -1
/* 80B4FA84  90 1F 0F E4 */	stw r0, 0xfe4(r31)
/* 80B4FA88  93 3F 0D C4 */	stw r25, 0xdc4(r31)
/* 80B4FA8C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B4FA90  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B4FA94  80 63 00 00 */	lwz r3, 0(r3)
/* 80B4FA98  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80B4FA9C  38 00 00 5A */	li r0, 0x5a
/* 80B4FAA0  90 03 04 20 */	stw r0, 0x420(r3)
/* 80B4FAA4  C0 7D 00 C8 */	lfs f3, 0xc8(r29)
/* 80B4FAA8  EC 43 00 28 */	fsubs f2, f3, f0
/* 80B4FAAC  80 03 04 20 */	lwz r0, 0x420(r3)
/* 80B4FAB0  C8 3D 01 40 */	lfd f1, 0x140(r29)
/* 80B4FAB4  90 01 00 AC */	stw r0, 0xac(r1)
/* 80B4FAB8  3C 00 43 30 */	lis r0, 0x4330
/* 80B4FABC  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80B4FAC0  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80B4FAC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B4FAC8  EC 02 00 24 */	fdivs f0, f2, f0
/* 80B4FACC  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 80B4FAD0  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 80B4FAD4  38 61 00 40 */	addi r3, r1, 0x40
/* 80B4FAD8  3C 80 80 B5 */	lis r4, l_evtList@ha /* 0x80B52514@ha */
/* 80B4FADC  38 84 25 14 */	addi r4, r4, l_evtList@l /* 0x80B52514@l */
/* 80B4FAE0  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80B4FAE4  4B 81 90 49 */	bl strcpy
/* 80B4FAE8  38 61 00 40 */	addi r3, r1, 0x40
/* 80B4FAEC  3C 80 80 B5 */	lis r4, d_a_npc_yelia__stringBase0@ha /* 0x80B52408@ha */
/* 80B4FAF0  38 84 24 08 */	addi r4, r4, d_a_npc_yelia__stringBase0@l /* 0x80B52408@l */
/* 80B4FAF4  38 84 00 BF */	addi r4, r4, 0xbf
/* 80B4FAF8  4B 81 8F C5 */	bl strcat
/* 80B4FAFC  3A DE 4E C8 */	addi r22, r30, 0x4ec8
/* 80B4FB00  7E C3 B3 78 */	mr r3, r22
/* 80B4FB04  7F E4 FB 78 */	mr r4, r31
/* 80B4FB08  38 A1 00 40 */	addi r5, r1, 0x40
/* 80B4FB0C  4B 4F 2E 4D */	bl setSkipZev__14dEvt_control_cFPvPc
/* 80B4FB10  7E C3 B3 78 */	mr r3, r22
/* 80B4FB14  4B 4F 2E 95 */	bl onSkipFade__14dEvt_control_cFv
lbl_80B4FB18:
/* 80B4FB18  2C 1A 00 06 */	cmpwi r26, 6
/* 80B4FB1C  41 82 00 0C */	beq lbl_80B4FB28
/* 80B4FB20  2C 1A 00 63 */	cmpwi r26, 0x63
/* 80B4FB24  40 82 00 54 */	bne lbl_80B4FB78
lbl_80B4FB28:
/* 80B4FB28  80 7F 0F E4 */	lwz r3, 0xfe4(r31)
/* 80B4FB2C  3C 03 00 01 */	addis r0, r3, 1
/* 80B4FB30  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B4FB34  41 82 00 44 */	beq lbl_80B4FB78
/* 80B4FB38  4B 4D 18 65 */	bl fpcEx_IsExist__FUi
/* 80B4FB3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B4FB40  41 82 00 38 */	beq lbl_80B4FB78
/* 80B4FB44  80 7F 0F E4 */	lwz r3, 0xfe4(r31)
/* 80B4FB48  38 81 00 0C */	addi r4, r1, 0xc
/* 80B4FB4C  4B 4C 9E 71 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B4FB50  2C 03 00 00 */	cmpwi r3, 0
/* 80B4FB54  41 82 00 24 */	beq lbl_80B4FB78
/* 80B4FB58  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B4FB5C  28 03 00 00 */	cmplwi r3, 0
/* 80B4FB60  41 82 00 18 */	beq lbl_80B4FB78
/* 80B4FB64  4B 4C 91 7D */	bl fopAc_IsActor__FPv
/* 80B4FB68  2C 03 00 00 */	cmpwi r3, 0
/* 80B4FB6C  41 82 00 0C */	beq lbl_80B4FB78
/* 80B4FB70  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B4FB74  4B 4C A1 09 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B4FB78:
/* 80B4FB78  80 7D 01 30 */	lwz r3, 0x130(r29)
/* 80B4FB7C  80 1D 01 34 */	lwz r0, 0x134(r29)
/* 80B4FB80  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B4FB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4FB88  2C 1A 00 08 */	cmpwi r26, 8
/* 80B4FB8C  41 82 00 CC */	beq lbl_80B4FC58
/* 80B4FB90  40 80 00 38 */	bge lbl_80B4FBC8
/* 80B4FB94  2C 1A 00 04 */	cmpwi r26, 4
/* 80B4FB98  41 82 00 64 */	beq lbl_80B4FBFC
/* 80B4FB9C  40 80 00 1C */	bge lbl_80B4FBB8
/* 80B4FBA0  2C 1A 00 00 */	cmpwi r26, 0
/* 80B4FBA4  41 82 00 50 */	beq lbl_80B4FBF4
/* 80B4FBA8  41 80 02 14 */	blt lbl_80B4FDBC
/* 80B4FBAC  2C 1A 00 03 */	cmpwi r26, 3
/* 80B4FBB0  40 80 00 A8 */	bge lbl_80B4FC58
/* 80B4FBB4  48 00 00 48 */	b lbl_80B4FBFC
lbl_80B4FBB8:
/* 80B4FBB8  2C 1A 00 06 */	cmpwi r26, 6
/* 80B4FBBC  41 82 00 40 */	beq lbl_80B4FBFC
/* 80B4FBC0  40 80 00 CC */	bge lbl_80B4FC8C
/* 80B4FBC4  48 00 00 94 */	b lbl_80B4FC58
lbl_80B4FBC8:
/* 80B4FBC8  2C 1A 00 0D */	cmpwi r26, 0xd
/* 80B4FBCC  41 82 00 C0 */	beq lbl_80B4FC8C
/* 80B4FBD0  40 80 00 18 */	bge lbl_80B4FBE8
/* 80B4FBD4  2C 1A 00 0C */	cmpwi r26, 0xc
/* 80B4FBD8  40 80 01 E0 */	bge lbl_80B4FDB8
/* 80B4FBDC  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B4FBE0  40 80 01 D0 */	bge lbl_80B4FDB0
/* 80B4FBE4  48 00 00 A8 */	b lbl_80B4FC8C
lbl_80B4FBE8:
/* 80B4FBE8  2C 1A 00 63 */	cmpwi r26, 0x63
/* 80B4FBEC  41 82 01 C4 */	beq lbl_80B4FDB0
/* 80B4FBF0  48 00 01 CC */	b lbl_80B4FDBC
lbl_80B4FBF4:
/* 80B4FBF4  3B 60 00 01 */	li r27, 1
/* 80B4FBF8  48 00 01 C4 */	b lbl_80B4FDBC
lbl_80B4FBFC:
/* 80B4FBFC  93 01 00 10 */	stw r24, 0x10(r1)
/* 80B4FC00  7F E3 FB 78 */	mr r3, r31
/* 80B4FC04  38 81 00 10 */	addi r4, r1, 0x10
/* 80B4FC08  7E E5 BB 78 */	mr r5, r23
/* 80B4FC0C  38 C1 00 18 */	addi r6, r1, 0x18
/* 80B4FC10  38 E0 00 00 */	li r7, 0
/* 80B4FC14  4B 5F C0 65 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B4FC18  2C 03 00 00 */	cmpwi r3, 0
/* 80B4FC1C  41 82 00 24 */	beq lbl_80B4FC40
/* 80B4FC20  2C 18 00 00 */	cmpwi r24, 0
/* 80B4FC24  40 82 00 18 */	bne lbl_80B4FC3C
/* 80B4FC28  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B4FC2C  28 00 00 01 */	cmplwi r0, 1
/* 80B4FC30  40 82 00 10 */	bne lbl_80B4FC40
/* 80B4FC34  3B 60 00 01 */	li r27, 1
/* 80B4FC38  48 00 00 08 */	b lbl_80B4FC40
lbl_80B4FC3C:
/* 80B4FC3C  3B 60 00 01 */	li r27, 1
lbl_80B4FC40:
/* 80B4FC40  2C 1A 00 06 */	cmpwi r26, 6
/* 80B4FC44  40 82 01 78 */	bne lbl_80B4FDBC
/* 80B4FC48  2C 17 00 00 */	cmpwi r23, 0
/* 80B4FC4C  40 82 01 70 */	bne lbl_80B4FDBC
/* 80B4FC50  3B 60 00 01 */	li r27, 1
/* 80B4FC54  48 00 01 68 */	b lbl_80B4FDBC
lbl_80B4FC58:
/* 80B4FC58  7F E3 FB 78 */	mr r3, r31
/* 80B4FC5C  38 80 00 00 */	li r4, 0
/* 80B4FC60  7E E5 BB 78 */	mr r5, r23
/* 80B4FC64  38 C1 00 18 */	addi r6, r1, 0x18
/* 80B4FC68  38 E0 00 00 */	li r7, 0
/* 80B4FC6C  4B 5F C0 0D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B4FC70  2C 03 00 00 */	cmpwi r3, 0
/* 80B4FC74  41 82 01 48 */	beq lbl_80B4FDBC
/* 80B4FC78  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B4FC7C  28 00 00 01 */	cmplwi r0, 1
/* 80B4FC80  40 82 01 3C */	bne lbl_80B4FDBC
/* 80B4FC84  3B 60 00 01 */	li r27, 1
/* 80B4FC88  48 00 01 34 */	b lbl_80B4FDBC
lbl_80B4FC8C:
/* 80B4FC8C  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80B4FC90  48 00 23 75 */	bl func_80B52004
/* 80B4FC94  2C 03 00 00 */	cmpwi r3, 0
/* 80B4FC98  40 82 01 24 */	bne lbl_80B4FDBC
/* 80B4FC9C  2C 1A 00 0D */	cmpwi r26, 0xd
/* 80B4FCA0  40 82 01 08 */	bne lbl_80B4FDA8
/* 80B4FCA4  80 7F 0F E4 */	lwz r3, 0xfe4(r31)
/* 80B4FCA8  3C 03 00 01 */	addis r0, r3, 1
/* 80B4FCAC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B4FCB0  40 82 00 2C */	bne lbl_80B4FCDC
/* 80B4FCB4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B4FCB8  38 80 00 82 */	li r4, 0x82
/* 80B4FCBC  38 A0 00 09 */	li r5, 9
/* 80B4FCC0  38 C0 FF FF */	li r6, -1
/* 80B4FCC4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B4FCC8  7C 07 07 74 */	extsb r7, r0
/* 80B4FCCC  39 1F 0D 78 */	addi r8, r31, 0xd78
/* 80B4FCD0  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80B4FCD4  4B 4C BF 15 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80B4FCD8  90 7F 0F E4 */	stw r3, 0xfe4(r31)
lbl_80B4FCDC:
/* 80B4FCDC  80 7F 0F E4 */	lwz r3, 0xfe4(r31)
/* 80B4FCE0  38 81 00 0C */	addi r4, r1, 0xc
/* 80B4FCE4  4B 4C 9C D9 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B4FCE8  2C 03 00 00 */	cmpwi r3, 0
/* 80B4FCEC  41 82 00 D0 */	beq lbl_80B4FDBC
/* 80B4FCF0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B4FCF4  28 03 00 00 */	cmplwi r3, 0
/* 80B4FCF8  41 82 00 C4 */	beq lbl_80B4FDBC
/* 80B4FCFC  4B 4C 8F E5 */	bl fopAc_IsActor__FPv
/* 80B4FD00  2C 03 00 00 */	cmpwi r3, 0
/* 80B4FD04  41 82 00 B8 */	beq lbl_80B4FDBC
/* 80B4FD08  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4FD0C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B4FD10  C0 1D 01 3C */	lfs f0, 0x13c(r29)
/* 80B4FD14  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B4FD18  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 80B4FD1C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B4FD20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B4FD24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4FD28  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B4FD2C  4B 4B C6 B1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B4FD30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B4FD34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4FD38  38 81 00 34 */	addi r4, r1, 0x34
/* 80B4FD3C  7C 85 23 78 */	mr r5, r4
/* 80B4FD40  4B 7F 70 2D */	bl PSMTXMultVec
/* 80B4FD44  38 61 00 34 */	addi r3, r1, 0x34
/* 80B4FD48  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B4FD4C  7C 65 1B 78 */	mr r5, r3
/* 80B4FD50  4B 7F 73 41 */	bl PSVECAdd
/* 80B4FD54  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B4FD58  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B4FD5C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B4FD60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B4FD64  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B4FD68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B4FD6C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B4FD70  38 81 00 28 */	addi r4, r1, 0x28
/* 80B4FD74  48 00 25 11 */	bl setOffsetPos__9daDitem_cF4cXyz
/* 80B4FD78  C0 1D 01 38 */	lfs f0, 0x138(r29)
/* 80B4FD7C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B4FD80  D0 03 09 38 */	stfs f0, 0x938(r3)
/* 80B4FD84  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B4FD88  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B4FD8C  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 80B4FD90  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 80B4FD94  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 80B4FD98  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B4FD9C  4B 4E 7C C9 */	bl hide__12daItemBase_cFv
/* 80B4FDA0  3B 60 00 01 */	li r27, 1
/* 80B4FDA4  48 00 00 18 */	b lbl_80B4FDBC
lbl_80B4FDA8:
/* 80B4FDA8  3B 60 00 01 */	li r27, 1
/* 80B4FDAC  48 00 00 10 */	b lbl_80B4FDBC
lbl_80B4FDB0:
/* 80B4FDB0  3B 60 00 01 */	li r27, 1
/* 80B4FDB4  48 00 00 08 */	b lbl_80B4FDBC
lbl_80B4FDB8:
/* 80B4FDB8  3B 60 00 01 */	li r27, 1
lbl_80B4FDBC:
/* 80B4FDBC  7F 63 DB 78 */	mr r3, r27
/* 80B4FDC0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80B4FDC4  4B 81 24 49 */	bl _restgpr_22
/* 80B4FDC8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80B4FDCC  7C 08 03 A6 */	mtlr r0
/* 80B4FDD0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80B4FDD4  4E 80 00 20 */	blr 

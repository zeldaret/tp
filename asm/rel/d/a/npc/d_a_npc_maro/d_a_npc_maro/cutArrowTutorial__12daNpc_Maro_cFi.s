lbl_8055FAF0:
/* 8055FAF0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8055FAF4  7C 08 02 A6 */	mflr r0
/* 8055FAF8  90 01 00 84 */	stw r0, 0x84(r1)
/* 8055FAFC  39 61 00 80 */	addi r11, r1, 0x80
/* 8055FB00  4B E0 26 B9 */	bl _savegpr_20
/* 8055FB04  7C 7F 1B 78 */	mr r31, r3
/* 8055FB08  7C 97 23 78 */	mr r23, r4
/* 8055FB0C  3C 60 80 56 */	lis r3, m__18daNpc_Maro_Param_c@ha /* 0x80564BAC@ha */
/* 8055FB10  3B C3 4B AC */	addi r30, r3, m__18daNpc_Maro_Param_c@l /* 0x80564BAC@l */
/* 8055FB14  3B A0 00 00 */	li r29, 0
/* 8055FB18  3B 80 FF FF */	li r28, -1
/* 8055FB1C  3A A0 00 00 */	li r21, 0
/* 8055FB20  3B 40 00 00 */	li r26, 0
/* 8055FB24  3A C0 00 00 */	li r22, 0
/* 8055FB28  3B 00 00 00 */	li r24, 0
/* 8055FB2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055FB30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055FB34  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 8055FB38  3B 3B 40 C0 */	addi r25, r27, 0x40c0
/* 8055FB3C  7F 23 CB 78 */	mr r3, r25
/* 8055FB40  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055FB44  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055FB48  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055FB4C  38 C0 00 03 */	li r6, 3
/* 8055FB50  4B AE 85 9D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055FB54  28 03 00 00 */	cmplwi r3, 0
/* 8055FB58  41 82 00 08 */	beq lbl_8055FB60
/* 8055FB5C  83 83 00 00 */	lwz r28, 0(r3)
lbl_8055FB60:
/* 8055FB60  7F 23 CB 78 */	mr r3, r25
/* 8055FB64  7E E4 BB 78 */	mr r4, r23
/* 8055FB68  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055FB6C  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055FB70  38 A5 02 1F */	addi r5, r5, 0x21f
/* 8055FB74  38 C0 00 03 */	li r6, 3
/* 8055FB78  4B AE 85 75 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055FB7C  28 03 00 00 */	cmplwi r3, 0
/* 8055FB80  41 82 00 08 */	beq lbl_8055FB88
/* 8055FB84  82 A3 00 00 */	lwz r21, 0(r3)
lbl_8055FB88:
/* 8055FB88  7F 23 CB 78 */	mr r3, r25
/* 8055FB8C  7E E4 BB 78 */	mr r4, r23
/* 8055FB90  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055FB94  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055FB98  38 A5 02 25 */	addi r5, r5, 0x225
/* 8055FB9C  38 C0 00 03 */	li r6, 3
/* 8055FBA0  4B AE 85 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055FBA4  28 03 00 00 */	cmplwi r3, 0
/* 8055FBA8  41 82 00 08 */	beq lbl_8055FBB0
/* 8055FBAC  83 43 00 00 */	lwz r26, 0(r3)
lbl_8055FBB0:
/* 8055FBB0  7F 23 CB 78 */	mr r3, r25
/* 8055FBB4  7E E4 BB 78 */	mr r4, r23
/* 8055FBB8  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055FBBC  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055FBC0  38 A5 02 2B */	addi r5, r5, 0x22b
/* 8055FBC4  38 C0 00 03 */	li r6, 3
/* 8055FBC8  4B AE 85 25 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055FBCC  28 03 00 00 */	cmplwi r3, 0
/* 8055FBD0  41 82 00 08 */	beq lbl_8055FBD8
/* 8055FBD4  82 C3 00 00 */	lwz r22, 0(r3)
lbl_8055FBD8:
/* 8055FBD8  7F 23 CB 78 */	mr r3, r25
/* 8055FBDC  7E E4 BB 78 */	mr r4, r23
/* 8055FBE0  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055FBE4  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055FBE8  38 A5 02 32 */	addi r5, r5, 0x232
/* 8055FBEC  38 C0 00 03 */	li r6, 3
/* 8055FBF0  4B AE 84 FD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055FBF4  28 03 00 00 */	cmplwi r3, 0
/* 8055FBF8  41 82 00 08 */	beq lbl_8055FC00
/* 8055FBFC  83 03 00 00 */	lwz r24, 0(r3)
lbl_8055FC00:
/* 8055FC00  80 7E 01 88 */	lwz r3, 0x188(r30)
/* 8055FC04  80 1E 01 8C */	lwz r0, 0x18c(r30)
/* 8055FC08  90 61 00 0C */	stw r3, 0xc(r1)
/* 8055FC0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8055FC10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055FC14  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055FC18  4B BE 5A F1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055FC1C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8055FC20  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8055FC24  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055FC28  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055FC2C  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 8055FC30  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 8055FC34  38 00 00 00 */	li r0, 0
/* 8055FC38  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 8055FC3C  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 8055FC40  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 8055FC44  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 8055FC48  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 8055FC4C  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 8055FC50  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 8055FC54  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 8055FC58  7F 23 CB 78 */	mr r3, r25
/* 8055FC5C  7E E4 BB 78 */	mr r4, r23
/* 8055FC60  4B AE 80 ED */	bl getIsAddvance__16dEvent_manager_cFi
/* 8055FC64  2C 03 00 00 */	cmpwi r3, 0
/* 8055FC68  41 82 09 CC */	beq lbl_80560634
/* 8055FC6C  28 1C 00 5D */	cmplwi r28, 0x5d
/* 8055FC70  41 81 09 C4 */	bgt lbl_80560634
/* 8055FC74  3C 60 80 56 */	lis r3, lit_7028@ha /* 0x80565940@ha */
/* 8055FC78  38 63 59 40 */	addi r3, r3, lit_7028@l /* 0x80565940@l */
/* 8055FC7C  57 80 10 3A */	slwi r0, r28, 2
/* 8055FC80  7C 03 00 2E */	lwzx r0, r3, r0
/* 8055FC84  7C 09 03 A6 */	mtctr r0
/* 8055FC88  4E 80 04 20 */	bctr 
lbl_8055FC8C:
/* 8055FC8C  7F E3 FB 78 */	mr r3, r31
/* 8055FC90  38 80 00 01 */	li r4, 1
/* 8055FC94  4B FF C5 B5 */	bl getItaMatoP__12daNpc_Maro_cFi
/* 8055FC98  7C 64 1B 78 */	mr r4, r3
/* 8055FC9C  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 8055FCA0  4B BE 5A 41 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055FCA4  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 8055FCA8  4B BE 5A 61 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055FCAC  7C 64 1B 78 */	mr r4, r3
/* 8055FCB0  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 8055FCB4  4B AE 3A 09 */	bl setPtI__14dEvt_control_cFPv
/* 8055FCB8  48 00 09 7C */	b lbl_80560634
lbl_8055FCBC:
/* 8055FCBC  92 BF 0D C4 */	stw r21, 0xdc4(r31)
/* 8055FCC0  48 00 09 74 */	b lbl_80560634
lbl_8055FCC4:
/* 8055FCC4  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 8055FCC8  4B BE 5A 41 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055FCCC  7C 64 1B 78 */	mr r4, r3
/* 8055FCD0  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 8055FCD4  4B AE 39 89 */	bl setPt2__14dEvt_control_cFPv
/* 8055FCD8  48 00 09 5C */	b lbl_80560634
lbl_8055FCDC:
/* 8055FCDC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8055FCE0  2C 00 00 01 */	cmpwi r0, 1
/* 8055FCE4  41 82 00 28 */	beq lbl_8055FD0C
/* 8055FCE8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8055FCEC  4B BE 5A 11 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055FCF0  38 00 00 00 */	li r0, 0
/* 8055FCF4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8055FCF8  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8055FCFC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8055FD00  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055FD04  38 00 00 01 */	li r0, 1
/* 8055FD08  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8055FD0C:
/* 8055FD0C  38 00 00 00 */	li r0, 0
/* 8055FD10  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 8055FD14  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 8055FD18  38 00 00 01 */	li r0, 1
/* 8055FD1C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055FD20  48 00 09 14 */	b lbl_80560634
lbl_8055FD24:
/* 8055FD24  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8055FD28  2C 00 00 01 */	cmpwi r0, 1
/* 8055FD2C  41 82 00 28 */	beq lbl_8055FD54
/* 8055FD30  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8055FD34  4B BE 59 C9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055FD38  38 00 00 00 */	li r0, 0
/* 8055FD3C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8055FD40  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8055FD44  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8055FD48  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055FD4C  38 00 00 01 */	li r0, 1
/* 8055FD50  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8055FD54:
/* 8055FD54  38 00 00 00 */	li r0, 0
/* 8055FD58  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 8055FD5C  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 8055FD60  38 00 00 01 */	li r0, 1
/* 8055FD64  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055FD68  48 00 08 CC */	b lbl_80560634
lbl_8055FD6C:
/* 8055FD6C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8055FD70  2C 00 00 09 */	cmpwi r0, 9
/* 8055FD74  41 82 00 24 */	beq lbl_8055FD98
/* 8055FD78  82 BF 0B 5C */	lwz r21, 0xb5c(r31)
/* 8055FD7C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8055FD80  4B BE 5B 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055FD84  92 BF 0B 5C */	stw r21, 0xb5c(r31)
/* 8055FD88  38 00 00 09 */	li r0, 9
/* 8055FD8C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8055FD90  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 8055FD94  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8055FD98:
/* 8055FD98  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8055FD9C  2C 00 00 00 */	cmpwi r0, 0
/* 8055FDA0  41 82 00 24 */	beq lbl_8055FDC4
/* 8055FDA4  82 BF 0B 80 */	lwz r21, 0xb80(r31)
/* 8055FDA8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8055FDAC  4B BE 5A ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055FDB0  92 BF 0B 80 */	stw r21, 0xb80(r31)
/* 8055FDB4  38 00 00 00 */	li r0, 0
/* 8055FDB8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8055FDBC  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 8055FDC0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8055FDC4:
/* 8055FDC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8055FDC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8055FDCC  80 63 00 00 */	lwz r3, 0(r3)
/* 8055FDD0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8055FDD4  4B D4 FA B1 */	bl subBgmStop__8Z2SeqMgrFv
/* 8055FDD8  48 00 08 5C */	b lbl_80560634
lbl_8055FDDC:
/* 8055FDDC  7F E3 FB 78 */	mr r3, r31
/* 8055FDE0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8055FDE4  4B BE AC 35 */	bl setAngle__8daNpcT_cFs
/* 8055FDE8  38 00 00 01 */	li r0, 1
/* 8055FDEC  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 8055FDF0  38 00 00 00 */	li r0, 0
/* 8055FDF4  98 1F 11 35 */	stb r0, 0x1135(r31)
/* 8055FDF8  38 60 00 42 */	li r3, 0x42
/* 8055FDFC  88 9F 04 E2 */	lbz r4, 0x4e2(r31)
/* 8055FE00  7C 84 07 74 */	extsb r4, r4
/* 8055FE04  38 A1 00 28 */	addi r5, r1, 0x28
/* 8055FE08  38 C1 00 14 */	addi r6, r1, 0x14
/* 8055FE0C  4B BE C6 F5 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8055FE10  2C 03 00 00 */	cmpwi r3, 0
/* 8055FE14  41 82 00 2C */	beq lbl_8055FE40
/* 8055FE18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055FE1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055FE20  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8055FE24  38 81 00 28 */	addi r4, r1, 0x28
/* 8055FE28  A8 A1 00 16 */	lha r5, 0x16(r1)
/* 8055FE2C  38 C0 00 00 */	li r6, 0
/* 8055FE30  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8055FE34  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8055FE38  7D 89 03 A6 */	mtctr r12
/* 8055FE3C  4E 80 04 21 */	bctrl 
lbl_8055FE40:
/* 8055FE40  80 7F 10 BC */	lwz r3, 0x10bc(r31)
/* 8055FE44  3C 03 00 01 */	addis r0, r3, 1
/* 8055FE48  28 00 FF FF */	cmplwi r0, 0xffff
/* 8055FE4C  41 82 00 14 */	beq lbl_8055FE60
/* 8055FE50  38 60 00 00 */	li r3, 0
/* 8055FE54  4B AC F9 49 */	bl dComIfG_TimerDeleteRequest__Fi
/* 8055FE58  38 00 FF FF */	li r0, -1
/* 8055FE5C  90 1F 10 BC */	stw r0, 0x10bc(r31)
lbl_8055FE60:
/* 8055FE60  38 00 00 03 */	li r0, 3
/* 8055FE64  98 1B 49 1B */	stb r0, 0x491b(r27)
/* 8055FE68  98 1B 4A 93 */	stb r0, 0x4a93(r27)
/* 8055FE6C  38 60 00 3C */	li r3, 0x3c
/* 8055FE70  4B BE CC BD */	bl daNpcT_offTmpBit__FUl
/* 8055FE74  38 60 00 3F */	li r3, 0x3f
/* 8055FE78  4B BE CC B5 */	bl daNpcT_offTmpBit__FUl
/* 8055FE7C  38 60 00 40 */	li r3, 0x40
/* 8055FE80  4B BE CC AD */	bl daNpcT_offTmpBit__FUl
/* 8055FE84  38 60 00 41 */	li r3, 0x41
/* 8055FE88  4B BE CC A5 */	bl daNpcT_offTmpBit__FUl
/* 8055FE8C  38 60 00 42 */	li r3, 0x42
/* 8055FE90  4B BE CC 9D */	bl daNpcT_offTmpBit__FUl
/* 8055FE94  48 00 07 A0 */	b lbl_80560634
lbl_8055FE98:
/* 8055FE98  92 BF 0D C4 */	stw r21, 0xdc4(r31)
/* 8055FE9C  48 00 07 98 */	b lbl_80560634
lbl_8055FEA0:
/* 8055FEA0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8055FEA4  2C 00 00 09 */	cmpwi r0, 9
/* 8055FEA8  41 82 00 24 */	beq lbl_8055FECC
/* 8055FEAC  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 8055FEB0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8055FEB4  4B BE 59 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055FEB8  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 8055FEBC  38 00 00 09 */	li r0, 9
/* 8055FEC0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8055FEC4  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8055FEC8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8055FECC:
/* 8055FECC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8055FED0  2C 00 00 00 */	cmpwi r0, 0
/* 8055FED4  41 82 00 24 */	beq lbl_8055FEF8
/* 8055FED8  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 8055FEDC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8055FEE0  4B BE 59 B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055FEE4  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 8055FEE8  38 00 00 00 */	li r0, 0
/* 8055FEEC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8055FEF0  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8055FEF4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8055FEF8:
/* 8055FEF8  92 BF 0D C4 */	stw r21, 0xdc4(r31)
/* 8055FEFC  3A 9B 3F 90 */	addi r20, r27, 0x3f90
/* 8055FF00  7E 83 A3 78 */	mr r3, r20
/* 8055FF04  7F E4 FB 78 */	mr r4, r31
/* 8055FF08  4B AE 37 85 */	bl setPtT__14dEvt_control_cFPv
/* 8055FF0C  7F E3 FB 78 */	mr r3, r31
/* 8055FF10  38 80 00 01 */	li r4, 1
/* 8055FF14  4B FF C3 35 */	bl getItaMatoP__12daNpc_Maro_cFi
/* 8055FF18  7C 64 1B 78 */	mr r4, r3
/* 8055FF1C  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 8055FF20  4B BE 57 C1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055FF24  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 8055FF28  4B BE 57 E1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055FF2C  7C 64 1B 78 */	mr r4, r3
/* 8055FF30  7E 83 A3 78 */	mr r3, r20
/* 8055FF34  4B AE 37 89 */	bl setPtI__14dEvt_control_cFPv
/* 8055FF38  48 00 06 FC */	b lbl_80560634
lbl_8055FF3C:
/* 8055FF3C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8055FF40  2C 00 00 09 */	cmpwi r0, 9
/* 8055FF44  41 82 00 24 */	beq lbl_8055FF68
/* 8055FF48  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 8055FF4C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8055FF50  4B BE 59 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055FF54  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 8055FF58  38 00 00 09 */	li r0, 9
/* 8055FF5C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8055FF60  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8055FF64  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8055FF68:
/* 8055FF68  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8055FF6C  2C 00 00 00 */	cmpwi r0, 0
/* 8055FF70  41 82 00 24 */	beq lbl_8055FF94
/* 8055FF74  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 8055FF78  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8055FF7C  4B BE 59 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055FF80  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 8055FF84  38 00 00 00 */	li r0, 0
/* 8055FF88  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8055FF8C  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8055FF90  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8055FF94:
/* 8055FF94  7F E3 FB 78 */	mr r3, r31
/* 8055FF98  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 8055FF9C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8055FFA0  4B BE BC 51 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8055FFA4  7F E3 FB 78 */	mr r3, r31
/* 8055FFA8  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 8055FFAC  4B BE AA 6D */	bl setAngle__8daNpcT_cFs
/* 8055FFB0  38 00 00 00 */	li r0, 0
/* 8055FFB4  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 8055FFB8  92 BF 0D C4 */	stw r21, 0xdc4(r31)
/* 8055FFBC  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 8055FFC0  7F E4 FB 78 */	mr r4, r31
/* 8055FFC4  4B AE 36 99 */	bl setPt2__14dEvt_control_cFPv
/* 8055FFC8  48 00 06 6C */	b lbl_80560634
lbl_8055FFCC:
/* 8055FFCC  7F E3 FB 78 */	mr r3, r31
/* 8055FFD0  38 80 00 02 */	li r4, 2
/* 8055FFD4  4B FF C2 75 */	bl getItaMatoP__12daNpc_Maro_cFi
/* 8055FFD8  7C 64 1B 78 */	mr r4, r3
/* 8055FFDC  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 8055FFE0  4B BE 57 01 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055FFE4  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 8055FFE8  4B BE 57 21 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055FFEC  7C 75 1B 78 */	mr r21, r3
/* 8055FFF0  3A 9B 3F 90 */	addi r20, r27, 0x3f90
/* 8055FFF4  7E 83 A3 78 */	mr r3, r20
/* 8055FFF8  7E A4 AB 78 */	mr r4, r21
/* 8055FFFC  4B AE 36 C1 */	bl setPtI__14dEvt_control_cFPv
/* 80560000  7E 83 A3 78 */	mr r3, r20
/* 80560004  7E A4 AB 78 */	mr r4, r21
/* 80560008  4B AE 36 55 */	bl setPt2__14dEvt_control_cFPv
lbl_8056000C:
/* 8056000C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80560010  2C 00 00 01 */	cmpwi r0, 1
/* 80560014  41 82 00 28 */	beq lbl_8056003C
/* 80560018  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056001C  4B BE 56 E1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80560020  38 00 00 00 */	li r0, 0
/* 80560024  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80560028  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8056002C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80560030  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560034  38 00 00 01 */	li r0, 1
/* 80560038  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056003C:
/* 8056003C  38 00 00 00 */	li r0, 0
/* 80560040  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80560044  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80560048  38 00 00 01 */	li r0, 1
/* 8056004C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560050  48 00 05 E4 */	b lbl_80560634
lbl_80560054:
/* 80560054  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80560058  2C 00 00 09 */	cmpwi r0, 9
/* 8056005C  41 82 00 24 */	beq lbl_80560080
/* 80560060  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80560064  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80560068  4B BE 58 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056006C  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 80560070  38 00 00 09 */	li r0, 9
/* 80560074  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80560078  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8056007C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80560080:
/* 80560080  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80560084  2C 00 00 00 */	cmpwi r0, 0
/* 80560088  41 82 00 24 */	beq lbl_805600AC
/* 8056008C  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 80560090  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80560094  4B BE 58 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80560098  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 8056009C  38 00 00 00 */	li r0, 0
/* 805600A0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 805600A4  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805600A8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_805600AC:
/* 805600AC  92 BF 0D C4 */	stw r21, 0xdc4(r31)
/* 805600B0  7F E3 FB 78 */	mr r3, r31
/* 805600B4  38 80 00 02 */	li r4, 2
/* 805600B8  4B FF C1 91 */	bl getItaMatoP__12daNpc_Maro_cFi
/* 805600BC  7C 64 1B 78 */	mr r4, r3
/* 805600C0  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 805600C4  4B BE 56 1D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 805600C8  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 805600CC  4B BE 56 3D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805600D0  7C 75 1B 78 */	mr r21, r3
/* 805600D4  3A 9B 3F 90 */	addi r20, r27, 0x3f90
/* 805600D8  7E 83 A3 78 */	mr r3, r20
/* 805600DC  7E A4 AB 78 */	mr r4, r21
/* 805600E0  4B AE 35 DD */	bl setPtI__14dEvt_control_cFPv
/* 805600E4  7E 83 A3 78 */	mr r3, r20
/* 805600E8  7E A4 AB 78 */	mr r4, r21
/* 805600EC  4B AE 35 71 */	bl setPt2__14dEvt_control_cFPv
/* 805600F0  48 00 05 44 */	b lbl_80560634
lbl_805600F4:
/* 805600F4  7F E3 FB 78 */	mr r3, r31
/* 805600F8  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 805600FC  38 A1 00 0C */	addi r5, r1, 0xc
/* 80560100  4B BE BA F1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80560104  48 00 05 30 */	b lbl_80560634
lbl_80560108:
/* 80560108  38 60 00 4C */	li r3, 0x4c
/* 8056010C  4B BE C9 A1 */	bl daNpcT_chkEvtBit__FUl
/* 80560110  2C 03 00 00 */	cmpwi r3, 0
/* 80560114  41 82 00 28 */	beq lbl_8056013C
/* 80560118  38 60 00 4B */	li r3, 0x4b
/* 8056011C  4B BE C9 91 */	bl daNpcT_chkEvtBit__FUl
/* 80560120  2C 03 00 00 */	cmpwi r3, 0
/* 80560124  41 82 00 18 */	beq lbl_8056013C
/* 80560128  7F E3 FB 78 */	mr r3, r31
/* 8056012C  38 80 00 1D */	li r4, 0x1d
/* 80560130  38 A1 00 0C */	addi r5, r1, 0xc
/* 80560134  4B BE BA BD */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80560138  48 00 00 14 */	b lbl_8056014C
lbl_8056013C:
/* 8056013C  7F E3 FB 78 */	mr r3, r31
/* 80560140  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80560144  38 A1 00 0C */	addi r5, r1, 0xc
/* 80560148  4B BE BA A9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_8056014C:
/* 8056014C  92 BF 0D C4 */	stw r21, 0xdc4(r31)
/* 80560150  48 00 04 E4 */	b lbl_80560634
lbl_80560154:
/* 80560154  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80560158  2C 00 00 09 */	cmpwi r0, 9
/* 8056015C  41 82 00 24 */	beq lbl_80560180
/* 80560160  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80560164  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80560168  4B BE 57 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056016C  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 80560170  38 00 00 09 */	li r0, 9
/* 80560174  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80560178  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8056017C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80560180:
/* 80560180  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80560184  2C 00 00 00 */	cmpwi r0, 0
/* 80560188  41 82 00 24 */	beq lbl_805601AC
/* 8056018C  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 80560190  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80560194  4B BE 57 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80560198  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 8056019C  38 00 00 00 */	li r0, 0
/* 805601A0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 805601A4  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805601A8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_805601AC:
/* 805601AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 805601B0  2C 00 00 00 */	cmpwi r0, 0
/* 805601B4  41 82 00 24 */	beq lbl_805601D8
/* 805601B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805601BC  4B BE 55 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805601C0  38 00 00 00 */	li r0, 0
/* 805601C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 805601C8  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805601CC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 805601D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805601D4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_805601D8:
/* 805601D8  38 00 00 00 */	li r0, 0
/* 805601DC  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 805601E0  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 805601E4  38 00 00 01 */	li r0, 1
/* 805601E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805601EC  48 00 04 48 */	b lbl_80560634
lbl_805601F0:
/* 805601F0  7F E3 FB 78 */	mr r3, r31
/* 805601F4  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 805601F8  38 A1 00 0C */	addi r5, r1, 0xc
/* 805601FC  4B BE B9 F5 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80560200  48 00 04 34 */	b lbl_80560634
lbl_80560204:
/* 80560204  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80560208  4B BE 55 01 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056020C  7C 64 1B 78 */	mr r4, r3
/* 80560210  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 80560214  4B AE 34 49 */	bl setPt2__14dEvt_control_cFPv
/* 80560218  48 00 04 1C */	b lbl_80560634
lbl_8056021C:
/* 8056021C  7F E3 FB 78 */	mr r3, r31
/* 80560220  38 80 00 1D */	li r4, 0x1d
/* 80560224  38 A1 00 0C */	addi r5, r1, 0xc
/* 80560228  4B BE B9 C9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056022C  48 00 04 08 */	b lbl_80560634
lbl_80560230:
/* 80560230  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80560234  2C 00 00 09 */	cmpwi r0, 9
/* 80560238  41 82 00 24 */	beq lbl_8056025C
/* 8056023C  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80560240  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80560244  4B BE 56 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80560248  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 8056024C  38 00 00 09 */	li r0, 9
/* 80560250  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80560254  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560258  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8056025C:
/* 8056025C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80560260  2C 00 00 00 */	cmpwi r0, 0
/* 80560264  41 82 00 24 */	beq lbl_80560288
/* 80560268  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 8056026C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80560270  4B BE 56 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80560274  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 80560278  38 00 00 00 */	li r0, 0
/* 8056027C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80560280  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560284  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80560288:
/* 80560288  7F E3 FB 78 */	mr r3, r31
/* 8056028C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80560290  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80560294  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80560298  4B AB A4 79 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8056029C  B0 7F 0D C8 */	sth r3, 0xdc8(r31)
/* 805602A0  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 805602A4  2C 00 00 01 */	cmpwi r0, 1
/* 805602A8  40 82 03 8C */	bne lbl_80560634
/* 805602AC  38 00 00 00 */	li r0, 0
/* 805602B0  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
/* 805602B4  48 00 03 80 */	b lbl_80560634
lbl_805602B8:
/* 805602B8  7F E3 FB 78 */	mr r3, r31
/* 805602BC  38 80 00 1B */	li r4, 0x1b
/* 805602C0  38 A0 00 00 */	li r5, 0
/* 805602C4  4B BE B9 2D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 805602C8  48 00 03 6C */	b lbl_80560634
lbl_805602CC:
/* 805602CC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 805602D0  2C 00 00 09 */	cmpwi r0, 9
/* 805602D4  41 82 00 24 */	beq lbl_805602F8
/* 805602D8  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 805602DC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 805602E0  4B BE 55 B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805602E4  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 805602E8  38 00 00 09 */	li r0, 9
/* 805602EC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 805602F0  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805602F4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_805602F8:
/* 805602F8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 805602FC  2C 00 00 00 */	cmpwi r0, 0
/* 80560300  41 82 00 24 */	beq lbl_80560324
/* 80560304  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 80560308  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8056030C  4B BE 55 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80560310  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 80560314  38 00 00 00 */	li r0, 0
/* 80560318  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8056031C  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560320  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80560324:
/* 80560324  38 60 00 42 */	li r3, 0x42
/* 80560328  88 9F 04 E2 */	lbz r4, 0x4e2(r31)
/* 8056032C  7C 84 07 74 */	extsb r4, r4
/* 80560330  38 A1 00 28 */	addi r5, r1, 0x28
/* 80560334  38 C1 00 14 */	addi r6, r1, 0x14
/* 80560338  4B BE C1 C9 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8056033C  2C 03 00 00 */	cmpwi r3, 0
/* 80560340  41 82 02 F4 */	beq lbl_80560634
/* 80560344  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560348  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8056034C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80560350  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80560354  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80560358  38 61 00 28 */	addi r3, r1, 0x28
/* 8056035C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80560360  3A A4 61 C0 */	addi r21, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80560364  80 95 5D AC */	lwz r4, 0x5dac(r21)
/* 80560368  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8056036C  4B D1 08 99 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80560370  7C 64 1B 78 */	mr r4, r3
/* 80560374  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80560378  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056037C  4B AA C0 61 */	bl mDoMtx_YrotS__FPA4_fs
/* 80560380  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80560384  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80560388  38 81 00 40 */	addi r4, r1, 0x40
/* 8056038C  7C 85 23 78 */	mr r5, r4
/* 80560390  4B DE 69 DD */	bl PSMTXMultVec
/* 80560394  38 61 00 40 */	addi r3, r1, 0x40
/* 80560398  38 81 00 28 */	addi r4, r1, 0x28
/* 8056039C  7C 65 1B 78 */	mr r5, r3
/* 805603A0  4B DE 6C F1 */	bl PSVECAdd
/* 805603A4  80 75 5D AC */	lwz r3, 0x5dac(r21)
/* 805603A8  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 805603AC  38 81 00 40 */	addi r4, r1, 0x40
/* 805603B0  48 00 41 39 */	bl absXZ__4cXyzCFRC3Vec
/* 805603B4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 805603B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805603BC  40 80 00 5C */	bge lbl_80560418
/* 805603C0  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805603C4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805603C8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805603CC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805603D0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805603D4  38 61 00 28 */	addi r3, r1, 0x28
/* 805603D8  80 95 5D AC */	lwz r4, 0x5dac(r21)
/* 805603DC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 805603E0  4B D1 08 25 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805603E4  7C 64 1B 78 */	mr r4, r3
/* 805603E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805603EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805603F0  4B AA BF ED */	bl mDoMtx_YrotS__FPA4_fs
/* 805603F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805603F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805603FC  38 81 00 40 */	addi r4, r1, 0x40
/* 80560400  7C 85 23 78 */	mr r5, r4
/* 80560404  4B DE 69 69 */	bl PSMTXMultVec
/* 80560408  38 61 00 40 */	addi r3, r1, 0x40
/* 8056040C  38 81 00 28 */	addi r4, r1, 0x28
/* 80560410  7C 65 1B 78 */	mr r5, r3
/* 80560414  4B DE 6C 7D */	bl PSVECAdd
lbl_80560418:
/* 80560418  7F 23 CB 78 */	mr r3, r25
/* 8056041C  38 81 00 40 */	addi r4, r1, 0x40
/* 80560420  4B AE 7F A5 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 80560424  48 00 02 10 */	b lbl_80560634
lbl_80560428:
/* 80560428  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8056042C  2C 00 00 09 */	cmpwi r0, 9
/* 80560430  41 82 00 24 */	beq lbl_80560454
/* 80560434  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80560438  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8056043C  4B BE 54 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80560440  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 80560444  38 00 00 09 */	li r0, 9
/* 80560448  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8056044C  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560450  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80560454:
/* 80560454  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80560458  2C 00 00 00 */	cmpwi r0, 0
/* 8056045C  41 82 00 24 */	beq lbl_80560480
/* 80560460  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 80560464  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80560468  4B BE 54 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056046C  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 80560470  38 00 00 00 */	li r0, 0
/* 80560474  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80560478  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8056047C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80560480:
/* 80560480  7F E3 FB 78 */	mr r3, r31
/* 80560484  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80560488  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056048C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80560490  4B AB A2 81 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80560494  7C 64 1B 78 */	mr r4, r3
/* 80560498  7F E3 FB 78 */	mr r3, r31
/* 8056049C  4B BE A5 7D */	bl setAngle__8daNpcT_cFs
/* 805604A0  38 00 00 00 */	li r0, 0
/* 805604A4  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 805604A8  7F E3 FB 78 */	mr r3, r31
/* 805604AC  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 805604B0  38 A1 00 0C */	addi r5, r1, 0xc
/* 805604B4  4B BE B7 3D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 805604B8  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 805604BC  7F E4 FB 78 */	mr r4, r31
/* 805604C0  4B AE 31 CD */	bl setPtT__14dEvt_control_cFPv
/* 805604C4  48 00 01 70 */	b lbl_80560634
lbl_805604C8:
/* 805604C8  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 805604CC  7F E4 FB 78 */	mr r4, r31
/* 805604D0  4B AE 31 8D */	bl setPt2__14dEvt_control_cFPv
/* 805604D4  48 00 01 60 */	b lbl_80560634
lbl_805604D8:
/* 805604D8  38 60 00 42 */	li r3, 0x42
/* 805604DC  88 9F 04 E2 */	lbz r4, 0x4e2(r31)
/* 805604E0  7C 84 07 74 */	extsb r4, r4
/* 805604E4  38 A1 00 28 */	addi r5, r1, 0x28
/* 805604E8  38 C1 00 14 */	addi r6, r1, 0x14
/* 805604EC  4B BE C0 15 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 805604F0  2C 03 00 00 */	cmpwi r3, 0
/* 805604F4  41 82 01 40 */	beq lbl_80560634
/* 805604F8  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805604FC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80560500  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80560504  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80560508  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8056050C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80560510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80560514  3A A3 61 C0 */	addi r21, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80560518  80 75 5D AC */	lwz r3, 0x5dac(r21)
/* 8056051C  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80560520  4B AA C8 45 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80560524  80 75 5D AC */	lwz r3, 0x5dac(r21)
/* 80560528  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8056052C  38 81 00 28 */	addi r4, r1, 0x28
/* 80560530  4B D1 06 D5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80560534  7C 64 1B 78 */	mr r4, r3
/* 80560538  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8056053C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80560540  4B AA BE F5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80560544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80560548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056054C  38 81 00 40 */	addi r4, r1, 0x40
/* 80560550  38 A1 00 34 */	addi r5, r1, 0x34
/* 80560554  4B DE 68 19 */	bl PSMTXMultVec
/* 80560558  38 7F 09 30 */	addi r3, r31, 0x930
/* 8056055C  38 81 00 34 */	addi r4, r1, 0x34
/* 80560560  4B D0 77 C9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80560564  7F 63 DB 78 */	mr r3, r27
/* 80560568  38 9F 09 30 */	addi r4, r31, 0x930
/* 8056056C  4B B1 3F 35 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80560570  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80560574  7F 23 CB 78 */	mr r3, r25
/* 80560578  38 81 00 34 */	addi r4, r1, 0x34
/* 8056057C  4B AE 7E 49 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 80560580  48 00 00 B4 */	b lbl_80560634
lbl_80560584:
/* 80560584  7F E3 FB 78 */	mr r3, r31
/* 80560588  38 80 00 02 */	li r4, 2
/* 8056058C  4B FF BC BD */	bl getItaMatoP__12daNpc_Maro_cFi
/* 80560590  7C 64 1B 78 */	mr r4, r3
/* 80560594  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80560598  4B BE 51 49 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056059C  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 805605A0  4B BE 51 69 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805605A4  7C 75 1B 78 */	mr r21, r3
/* 805605A8  3A 9B 3F 90 */	addi r20, r27, 0x3f90
/* 805605AC  7E 83 A3 78 */	mr r3, r20
/* 805605B0  7E A4 AB 78 */	mr r4, r21
/* 805605B4  4B AE 31 09 */	bl setPtI__14dEvt_control_cFPv
/* 805605B8  7E 83 A3 78 */	mr r3, r20
/* 805605BC  7E A4 AB 78 */	mr r4, r21
/* 805605C0  4B AE 30 9D */	bl setPt2__14dEvt_control_cFPv
lbl_805605C4:
/* 805605C4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 805605C8  2C 00 00 01 */	cmpwi r0, 1
/* 805605CC  41 82 00 28 */	beq lbl_805605F4
/* 805605D0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805605D4  4B BE 51 29 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805605D8  38 00 00 00 */	li r0, 0
/* 805605DC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 805605E0  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805605E4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 805605E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805605EC  38 00 00 01 */	li r0, 1
/* 805605F0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_805605F4:
/* 805605F4  38 00 00 00 */	li r0, 0
/* 805605F8  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 805605FC  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80560600  38 00 00 01 */	li r0, 1
/* 80560604  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560608  48 00 00 2C */	b lbl_80560634
lbl_8056060C:
/* 8056060C  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80560610  4B BE 50 F9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80560614  7C 64 1B 78 */	mr r4, r3
/* 80560618  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 8056061C  4B AE 30 41 */	bl setPt2__14dEvt_control_cFPv
/* 80560620  48 00 00 14 */	b lbl_80560634
lbl_80560624:
/* 80560624  7F E3 FB 78 */	mr r3, r31
/* 80560628  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 8056062C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80560630  4B BE B5 C1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80560634:
/* 80560634  80 7E 01 90 */	lwz r3, 0x190(r30)
/* 80560638  80 1E 01 94 */	lwz r0, 0x194(r30)
/* 8056063C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80560640  90 01 00 20 */	stw r0, 0x20(r1)
/* 80560644  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 80560648  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056064C  28 1C 00 5D */	cmplwi r28, 0x5d
/* 80560650  41 81 0B 74 */	bgt lbl_805611C4
/* 80560654  3C 60 80 56 */	lis r3, lit_7029@ha /* 0x805657C8@ha */
/* 80560658  38 63 57 C8 */	addi r3, r3, lit_7029@l /* 0x805657C8@l */
/* 8056065C  57 80 10 3A */	slwi r0, r28, 2
/* 80560660  7C 03 00 2E */	lwzx r0, r3, r0
/* 80560664  7C 09 03 A6 */	mtctr r0
/* 80560668  4E 80 04 20 */	bctr 
lbl_8056066C:
/* 8056066C  7F E3 FB 78 */	mr r3, r31
/* 80560670  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80560674  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80560678  7D 89 03 A6 */	mtctr r12
/* 8056067C  4E 80 04 21 */	bctrl 
/* 80560680  3B A0 00 01 */	li r29, 1
/* 80560684  48 00 0B 40 */	b lbl_805611C4
lbl_80560688:
/* 80560688  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056068C  2C 00 00 01 */	cmpwi r0, 1
/* 80560690  41 82 00 28 */	beq lbl_805606B8
/* 80560694  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560698  4B BE 50 65 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056069C  38 00 00 00 */	li r0, 0
/* 805606A0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 805606A4  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805606A8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 805606AC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805606B0  38 00 00 01 */	li r0, 1
/* 805606B4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_805606B8:
/* 805606B8  38 00 00 00 */	li r0, 0
/* 805606BC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805606C0  93 41 00 1C */	stw r26, 0x1c(r1)
/* 805606C4  92 C1 00 20 */	stw r22, 0x20(r1)
/* 805606C8  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 805606CC  48 00 3F D1 */	bl func_8056469C
/* 805606D0  2C 03 00 00 */	cmpwi r3, 0
/* 805606D4  40 82 00 4C */	bne lbl_80560720
/* 805606D8  7F E3 FB 78 */	mr r3, r31
/* 805606DC  38 81 00 1C */	addi r4, r1, 0x1c
/* 805606E0  38 A0 00 00 */	li r5, 0
/* 805606E4  38 C1 00 0C */	addi r6, r1, 0xc
/* 805606E8  38 E0 00 00 */	li r7, 0
/* 805606EC  4B BE B5 8D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 805606F0  2C 03 00 00 */	cmpwi r3, 0
/* 805606F4  41 82 00 2C */	beq lbl_80560720
/* 805606F8  2C 1A 00 00 */	cmpwi r26, 0
/* 805606FC  40 82 00 20 */	bne lbl_8056071C
/* 80560700  2C 16 00 00 */	cmpwi r22, 0
/* 80560704  40 82 00 18 */	bne lbl_8056071C
/* 80560708  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 8056070C  28 00 00 01 */	cmplwi r0, 1
/* 80560710  40 82 00 10 */	bne lbl_80560720
/* 80560714  3B A0 00 01 */	li r29, 1
/* 80560718  48 00 00 08 */	b lbl_80560720
lbl_8056071C:
/* 8056071C  3B A0 00 01 */	li r29, 1
lbl_80560720:
/* 80560720  2C 1C 00 01 */	cmpwi r28, 1
/* 80560724  40 82 0A A0 */	bne lbl_805611C4
/* 80560728  2C 1D 00 00 */	cmpwi r29, 0
/* 8056072C  41 82 0A 98 */	beq lbl_805611C4
/* 80560730  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80560734  4B BE 4F D5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80560738  7C 64 1B 78 */	mr r4, r3
/* 8056073C  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 80560740  4B AE 2F 1D */	bl setPt2__14dEvt_control_cFPv
/* 80560744  48 00 0A 80 */	b lbl_805611C4
lbl_80560748:
/* 80560748  2C 1C 00 05 */	cmpwi r28, 5
/* 8056074C  41 82 00 20 */	beq lbl_8056076C
/* 80560750  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80560754  4B BE 4F B5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80560758  7C 64 1B 78 */	mr r4, r3
/* 8056075C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560760  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80560764  38 A0 00 00 */	li r5, 0
/* 80560768  48 00 3C 9D */	bl lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc
lbl_8056076C:
/* 8056076C  93 41 00 1C */	stw r26, 0x1c(r1)
/* 80560770  7F E3 FB 78 */	mr r3, r31
/* 80560774  38 81 00 1C */	addi r4, r1, 0x1c
/* 80560778  7F 05 C3 78 */	mr r5, r24
/* 8056077C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80560780  38 E0 00 00 */	li r7, 0
/* 80560784  4B BE B4 F5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80560788  2C 03 00 00 */	cmpwi r3, 0
/* 8056078C  41 82 00 94 */	beq lbl_80560820
/* 80560790  2C 1A 00 00 */	cmpwi r26, 0
/* 80560794  40 82 00 88 */	bne lbl_8056081C
/* 80560798  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 8056079C  28 00 00 01 */	cmplwi r0, 1
/* 805607A0  40 82 00 80 */	bne lbl_80560820
/* 805607A4  2C 1C 00 05 */	cmpwi r28, 5
/* 805607A8  41 82 00 64 */	beq lbl_8056080C
/* 805607AC  40 80 00 68 */	bge lbl_80560814
/* 805607B0  2C 1C 00 02 */	cmpwi r28, 2
/* 805607B4  41 82 00 08 */	beq lbl_805607BC
/* 805607B8  48 00 00 5C */	b lbl_80560814
lbl_805607BC:
/* 805607BC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 805607C0  2C 00 00 01 */	cmpwi r0, 1
/* 805607C4  41 82 00 28 */	beq lbl_805607EC
/* 805607C8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805607CC  4B BE 4F 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805607D0  38 00 00 00 */	li r0, 0
/* 805607D4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 805607D8  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805607DC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 805607E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805607E4  38 00 00 01 */	li r0, 1
/* 805607E8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_805607EC:
/* 805607EC  38 00 00 00 */	li r0, 0
/* 805607F0  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 805607F4  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 805607F8  38 00 00 01 */	li r0, 1
/* 805607FC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560800  7F E3 FB 78 */	mr r3, r31
/* 80560804  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80560808  4B BE A2 11 */	bl setAngle__8daNpcT_cFs
lbl_8056080C:
/* 8056080C  38 60 00 4A */	li r3, 0x4a
/* 80560810  4B BE C2 1D */	bl daNpcT_onEvtBit__FUl
lbl_80560814:
/* 80560814  3B A0 00 01 */	li r29, 1
/* 80560818  48 00 00 08 */	b lbl_80560820
lbl_8056081C:
/* 8056081C  3B A0 00 01 */	li r29, 1
lbl_80560820:
/* 80560820  2C 1D 00 01 */	cmpwi r29, 1
/* 80560824  40 82 00 30 */	bne lbl_80560854
/* 80560828  2C 1C 00 03 */	cmpwi r28, 3
/* 8056082C  41 82 00 28 */	beq lbl_80560854
/* 80560830  40 80 00 10 */	bge lbl_80560840
/* 80560834  2C 1C 00 02 */	cmpwi r28, 2
/* 80560838  40 80 00 10 */	bge lbl_80560848
/* 8056083C  48 00 00 18 */	b lbl_80560854
lbl_80560840:
/* 80560840  2C 1C 00 05 */	cmpwi r28, 5
/* 80560844  40 80 00 10 */	bge lbl_80560854
lbl_80560848:
/* 80560848  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 8056084C  7F E4 FB 78 */	mr r4, r31
/* 80560850  4B AE 2E 0D */	bl setPt2__14dEvt_control_cFPv
lbl_80560854:
/* 80560854  2C 1C 00 04 */	cmpwi r28, 4
/* 80560858  40 82 09 6C */	bne lbl_805611C4
/* 8056085C  2C 18 00 00 */	cmpwi r24, 0
/* 80560860  40 82 09 64 */	bne lbl_805611C4
/* 80560864  3B A0 00 01 */	li r29, 1
/* 80560868  48 00 09 5C */	b lbl_805611C4
lbl_8056086C:
/* 8056086C  7F E3 FB 78 */	mr r3, r31
/* 80560870  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80560874  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80560878  7D 89 03 A6 */	mtctr r12
/* 8056087C  4E 80 04 21 */	bctrl 
/* 80560880  3B A0 00 01 */	li r29, 1
/* 80560884  48 00 09 40 */	b lbl_805611C4
lbl_80560888:
/* 80560888  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8056088C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80560890  7C 04 00 00 */	cmpw r4, r0
/* 80560894  41 82 00 20 */	beq lbl_805608B4
/* 80560898  7F E3 FB 78 */	mr r3, r31
/* 8056089C  38 A0 00 09 */	li r5, 9
/* 805608A0  38 C0 00 07 */	li r6, 7
/* 805608A4  38 E0 00 0F */	li r7, 0xf
/* 805608A8  39 00 00 00 */	li r8, 0
/* 805608AC  4B BE AD 9D */	bl step__8daNpcT_cFsiiii
/* 805608B0  48 00 09 14 */	b lbl_805611C4
lbl_805608B4:
/* 805608B4  3B A0 00 01 */	li r29, 1
/* 805608B8  48 00 09 0C */	b lbl_805611C4
lbl_805608BC:
/* 805608BC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 805608C0  2C 00 00 01 */	cmpwi r0, 1
/* 805608C4  41 82 00 28 */	beq lbl_805608EC
/* 805608C8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805608CC  4B BE 4E 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805608D0  38 00 00 00 */	li r0, 0
/* 805608D4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 805608D8  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805608DC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 805608E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805608E4  38 00 00 01 */	li r0, 1
/* 805608E8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_805608EC:
/* 805608EC  38 00 00 00 */	li r0, 0
/* 805608F0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805608F4  3B A0 00 01 */	li r29, 1
/* 805608F8  48 00 08 CC */	b lbl_805611C4
lbl_805608FC:
/* 805608FC  3B A0 00 01 */	li r29, 1
/* 80560900  48 00 08 C4 */	b lbl_805611C4
lbl_80560904:
/* 80560904  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80560908  48 00 3D 95 */	bl func_8056469C
/* 8056090C  2C 03 00 00 */	cmpwi r3, 0
/* 80560910  40 82 08 B4 */	bne lbl_805611C4
/* 80560914  3B A0 00 01 */	li r29, 1
/* 80560918  48 00 08 AC */	b lbl_805611C4
lbl_8056091C:
/* 8056091C  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80560920  4B BE 4D E9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80560924  7C 64 1B 78 */	mr r4, r3
/* 80560928  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056092C  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80560930  38 A0 00 00 */	li r5, 0
/* 80560934  48 00 3A D1 */	bl lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc
/* 80560938  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 8056093C  48 00 3D 61 */	bl func_8056469C
/* 80560940  2C 03 00 00 */	cmpwi r3, 0
/* 80560944  40 82 08 80 */	bne lbl_805611C4
/* 80560948  3B A0 00 01 */	li r29, 1
/* 8056094C  48 00 08 78 */	b lbl_805611C4
lbl_80560950:
/* 80560950  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80560954  4B BE 4D B5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80560958  7C 64 1B 78 */	mr r4, r3
/* 8056095C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560960  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80560964  38 A0 00 00 */	li r5, 0
/* 80560968  48 00 3A 9D */	bl lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc
/* 8056096C  93 41 00 1C */	stw r26, 0x1c(r1)
/* 80560970  7F E3 FB 78 */	mr r3, r31
/* 80560974  38 81 00 1C */	addi r4, r1, 0x1c
/* 80560978  7F 05 C3 78 */	mr r5, r24
/* 8056097C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80560980  38 E0 00 00 */	li r7, 0
/* 80560984  4B BE B2 F5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80560988  2C 03 00 00 */	cmpwi r3, 0
/* 8056098C  41 82 00 2C */	beq lbl_805609B8
/* 80560990  2C 1A 00 00 */	cmpwi r26, 0
/* 80560994  40 82 00 20 */	bne lbl_805609B4
/* 80560998  2C 16 00 00 */	cmpwi r22, 0
/* 8056099C  40 82 00 18 */	bne lbl_805609B4
/* 805609A0  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 805609A4  28 00 00 01 */	cmplwi r0, 1
/* 805609A8  40 82 00 10 */	bne lbl_805609B8
/* 805609AC  3B A0 00 01 */	li r29, 1
/* 805609B0  48 00 00 08 */	b lbl_805609B8
lbl_805609B4:
/* 805609B4  3B A0 00 01 */	li r29, 1
lbl_805609B8:
/* 805609B8  2C 1D 00 00 */	cmpwi r29, 0
/* 805609BC  41 82 00 18 */	beq lbl_805609D4
/* 805609C0  2C 1C 00 5B */	cmpwi r28, 0x5b
/* 805609C4  40 82 00 10 */	bne lbl_805609D4
/* 805609C8  7F E3 FB 78 */	mr r3, r31
/* 805609CC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 805609D0  4B BE A0 49 */	bl setAngle__8daNpcT_cFs
lbl_805609D4:
/* 805609D4  2C 18 00 00 */	cmpwi r24, 0
/* 805609D8  40 82 07 EC */	bne lbl_805611C4
/* 805609DC  3B A0 00 01 */	li r29, 1
/* 805609E0  48 00 07 E4 */	b lbl_805611C4
lbl_805609E4:
/* 805609E4  3B A0 00 01 */	li r29, 1
/* 805609E8  48 00 07 DC */	b lbl_805611C4
lbl_805609EC:
/* 805609EC  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 805609F0  4B BE 4D 19 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805609F4  7C 64 1B 78 */	mr r4, r3
/* 805609F8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805609FC  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80560A00  38 A0 00 00 */	li r5, 0
/* 80560A04  48 00 3A 01 */	bl lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc
/* 80560A08  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80560A0C  48 00 3C 91 */	bl func_8056469C
/* 80560A10  2C 03 00 00 */	cmpwi r3, 0
/* 80560A14  40 82 07 B0 */	bne lbl_805611C4
/* 80560A18  3B A0 00 01 */	li r29, 1
/* 80560A1C  48 00 07 A8 */	b lbl_805611C4
lbl_80560A20:
/* 80560A20  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80560A24  4B BE 4C E5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80560A28  7C 64 1B 78 */	mr r4, r3
/* 80560A2C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560A30  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80560A34  38 A0 00 00 */	li r5, 0
/* 80560A38  48 00 39 CD */	bl lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc
/* 80560A3C  93 41 00 1C */	stw r26, 0x1c(r1)
/* 80560A40  7F E3 FB 78 */	mr r3, r31
/* 80560A44  38 81 00 1C */	addi r4, r1, 0x1c
/* 80560A48  38 A0 00 00 */	li r5, 0
/* 80560A4C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80560A50  38 E0 00 00 */	li r7, 0
/* 80560A54  4B BE B2 25 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80560A58  2C 03 00 00 */	cmpwi r3, 0
/* 80560A5C  41 82 00 24 */	beq lbl_80560A80
/* 80560A60  2C 1A 00 00 */	cmpwi r26, 0
/* 80560A64  40 82 00 18 */	bne lbl_80560A7C
/* 80560A68  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80560A6C  28 00 00 01 */	cmplwi r0, 1
/* 80560A70  40 82 00 10 */	bne lbl_80560A80
/* 80560A74  3B A0 00 01 */	li r29, 1
/* 80560A78  48 00 00 08 */	b lbl_80560A80
lbl_80560A7C:
/* 80560A7C  3B A0 00 01 */	li r29, 1
lbl_80560A80:
/* 80560A80  2C 1D 00 00 */	cmpwi r29, 0
/* 80560A84  41 82 07 40 */	beq lbl_805611C4
/* 80560A88  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80560A8C  4B BE 4C 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80560A90  7C 64 1B 78 */	mr r4, r3
/* 80560A94  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 80560A98  4B AE 2B C5 */	bl setPt2__14dEvt_control_cFPv
/* 80560A9C  48 00 07 28 */	b lbl_805611C4
lbl_80560AA0:
/* 80560AA0  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80560AA4  4B BE 4C 65 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80560AA8  7C 64 1B 78 */	mr r4, r3
/* 80560AAC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560AB0  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 80560AB4  38 A0 00 00 */	li r5, 0
/* 80560AB8  48 00 39 4D */	bl lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc
/* 80560ABC  93 41 00 1C */	stw r26, 0x1c(r1)
/* 80560AC0  7F E3 FB 78 */	mr r3, r31
/* 80560AC4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80560AC8  7F 05 C3 78 */	mr r5, r24
/* 80560ACC  38 C1 00 0C */	addi r6, r1, 0xc
/* 80560AD0  38 E0 00 00 */	li r7, 0
/* 80560AD4  4B BE B1 A5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80560AD8  2C 03 00 00 */	cmpwi r3, 0
/* 80560ADC  41 82 00 24 */	beq lbl_80560B00
/* 80560AE0  2C 1A 00 00 */	cmpwi r26, 0
/* 80560AE4  40 82 00 18 */	bne lbl_80560AFC
/* 80560AE8  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80560AEC  28 00 00 01 */	cmplwi r0, 1
/* 80560AF0  40 82 00 10 */	bne lbl_80560B00
/* 80560AF4  3B A0 00 01 */	li r29, 1
/* 80560AF8  48 00 00 08 */	b lbl_80560B00
lbl_80560AFC:
/* 80560AFC  3B A0 00 01 */	li r29, 1
lbl_80560B00:
/* 80560B00  2C 1D 00 00 */	cmpwi r29, 0
/* 80560B04  41 82 00 50 */	beq lbl_80560B54
/* 80560B08  2C 1C 00 5C */	cmpwi r28, 0x5c
/* 80560B0C  40 82 00 48 */	bne lbl_80560B54
/* 80560B10  7F 63 DB 78 */	mr r3, r27
/* 80560B14  4B AC C0 C9 */	bl getTimerPtr__14dComIfG_play_cFv
/* 80560B18  28 03 00 00 */	cmplwi r3, 0
/* 80560B1C  41 82 00 2C */	beq lbl_80560B48
/* 80560B20  7F 63 DB 78 */	mr r3, r27
/* 80560B24  4B AC C0 99 */	bl getTimerMode__14dComIfG_play_cFv
/* 80560B28  2C 03 00 00 */	cmpwi r3, 0
/* 80560B2C  40 82 00 1C */	bne lbl_80560B48
/* 80560B30  4B D0 06 C1 */	bl dTimer_isStart__Fv
/* 80560B34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80560B38  40 82 00 10 */	bne lbl_80560B48
/* 80560B3C  38 60 00 00 */	li r3, 0
/* 80560B40  38 80 00 00 */	li r4, 0
/* 80560B44  4B AC E9 E9 */	bl dComIfG_TimerStart__Fis
lbl_80560B48:
/* 80560B48  7F E3 FB 78 */	mr r3, r31
/* 80560B4C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80560B50  4B BE 9E C9 */	bl setAngle__8daNpcT_cFs
lbl_80560B54:
/* 80560B54  2C 1C 00 2B */	cmpwi r28, 0x2b
/* 80560B58  40 82 06 6C */	bne lbl_805611C4
/* 80560B5C  2C 18 00 00 */	cmpwi r24, 0
/* 80560B60  40 82 06 64 */	bne lbl_805611C4
/* 80560B64  3B A0 00 01 */	li r29, 1
/* 80560B68  48 00 06 5C */	b lbl_805611C4
lbl_80560B6C:
/* 80560B6C  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80560B70  48 00 3B 2D */	bl func_8056469C
/* 80560B74  2C 03 00 00 */	cmpwi r3, 0
/* 80560B78  40 82 06 4C */	bne lbl_805611C4
/* 80560B7C  7F E3 FB 78 */	mr r3, r31
/* 80560B80  38 80 00 00 */	li r4, 0
/* 80560B84  38 A0 00 00 */	li r5, 0
/* 80560B88  38 C1 00 0C */	addi r6, r1, 0xc
/* 80560B8C  38 E0 00 00 */	li r7, 0
/* 80560B90  4B BE B0 E9 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80560B94  2C 03 00 00 */	cmpwi r3, 0
/* 80560B98  41 82 06 2C */	beq lbl_805611C4
/* 80560B9C  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80560BA0  28 00 00 01 */	cmplwi r0, 1
/* 80560BA4  40 82 06 20 */	bne lbl_805611C4
/* 80560BA8  3B A0 00 01 */	li r29, 1
/* 80560BAC  48 00 06 18 */	b lbl_805611C4
lbl_80560BB0:
/* 80560BB0  3B A0 00 01 */	li r29, 1
/* 80560BB4  48 00 06 10 */	b lbl_805611C4
lbl_80560BB8:
/* 80560BB8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80560BBC  2C 00 00 00 */	cmpwi r0, 0
/* 80560BC0  41 82 00 24 */	beq lbl_80560BE4
/* 80560BC4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560BC8  4B BE 4B 35 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80560BCC  38 00 00 00 */	li r0, 0
/* 80560BD0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80560BD4  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560BD8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80560BDC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560BE0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80560BE4:
/* 80560BE4  38 00 00 00 */	li r0, 0
/* 80560BE8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560BEC  2C 1C 00 3F */	cmpwi r28, 0x3f
/* 80560BF0  40 82 00 5C */	bne lbl_80560C4C
/* 80560BF4  7F 23 CB 78 */	mr r3, r25
/* 80560BF8  7E E4 BB 78 */	mr r4, r23
/* 80560BFC  4B AE 71 51 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80560C00  54 74 06 3E */	clrlwi r20, r3, 0x18
/* 80560C04  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80560C08  2C 00 00 01 */	cmpwi r0, 1
/* 80560C0C  41 82 00 28 */	beq lbl_80560C34
/* 80560C10  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560C14  4B BE 4A E9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80560C18  38 00 00 00 */	li r0, 0
/* 80560C1C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80560C20  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560C24  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80560C28  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560C2C  38 00 00 01 */	li r0, 1
/* 80560C30  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80560C34:
/* 80560C34  28 14 00 00 */	cmplwi r20, 0
/* 80560C38  41 82 00 10 */	beq lbl_80560C48
/* 80560C3C  38 00 00 00 */	li r0, 0
/* 80560C40  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80560C44  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
lbl_80560C48:
/* 80560C48  9A 9F 0C FF */	stb r20, 0xcff(r31)
lbl_80560C4C:
/* 80560C4C  93 41 00 1C */	stw r26, 0x1c(r1)
/* 80560C50  92 C1 00 20 */	stw r22, 0x20(r1)
/* 80560C54  7F E3 FB 78 */	mr r3, r31
/* 80560C58  38 81 00 1C */	addi r4, r1, 0x1c
/* 80560C5C  38 A0 00 00 */	li r5, 0
/* 80560C60  38 C1 00 0C */	addi r6, r1, 0xc
/* 80560C64  38 E0 00 00 */	li r7, 0
/* 80560C68  4B BE B0 11 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80560C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80560C70  41 82 00 2C */	beq lbl_80560C9C
/* 80560C74  2C 1A 00 00 */	cmpwi r26, 0
/* 80560C78  40 82 00 20 */	bne lbl_80560C98
/* 80560C7C  2C 16 00 00 */	cmpwi r22, 0
/* 80560C80  40 82 00 18 */	bne lbl_80560C98
/* 80560C84  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80560C88  28 00 00 01 */	cmplwi r0, 1
/* 80560C8C  40 82 00 10 */	bne lbl_80560C9C
/* 80560C90  3B A0 00 01 */	li r29, 1
/* 80560C94  48 00 00 08 */	b lbl_80560C9C
lbl_80560C98:
/* 80560C98  3B A0 00 01 */	li r29, 1
lbl_80560C9C:
/* 80560C9C  2C 1D 00 00 */	cmpwi r29, 0
/* 80560CA0  41 82 05 24 */	beq lbl_805611C4
/* 80560CA4  2C 1C 00 3D */	cmpwi r28, 0x3d
/* 80560CA8  40 82 00 68 */	bne lbl_80560D10
/* 80560CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80560CB0  3A A3 61 C0 */	addi r21, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80560CB4  80 75 5D AC */	lwz r3, 0x5dac(r21)
/* 80560CB8  7F E4 FB 78 */	mr r4, r31
/* 80560CBC  4B AB 9A 55 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80560CC0  7C 60 1B 78 */	mr r0, r3
/* 80560CC4  B0 01 00 16 */	sth r0, 0x16(r1)
/* 80560CC8  80 75 5D AC */	lwz r3, 0x5dac(r21)
/* 80560CCC  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80560CD0  7C 05 07 34 */	extsh r5, r0
/* 80560CD4  38 C0 00 00 */	li r6, 0
/* 80560CD8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80560CDC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80560CE0  7D 89 03 A6 */	mtctr r12
/* 80560CE4  4E 80 04 21 */	bctrl 
/* 80560CE8  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 80560CEC  7F E4 FB 78 */	mr r4, r31
/* 80560CF0  4B AE 29 6D */	bl setPt2__14dEvt_control_cFPv
/* 80560CF4  7F E3 FB 78 */	mr r3, r31
/* 80560CF8  80 95 5D AC */	lwz r4, 0x5dac(r21)
/* 80560CFC  4B AB 9A 15 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80560D00  7C 64 1B 78 */	mr r4, r3
/* 80560D04  7F E3 FB 78 */	mr r3, r31
/* 80560D08  4B BE 9D 11 */	bl setAngle__8daNpcT_cFs
/* 80560D0C  48 00 04 B8 */	b lbl_805611C4
lbl_80560D10:
/* 80560D10  2C 1C 00 3F */	cmpwi r28, 0x3f
/* 80560D14  40 82 04 B0 */	bne lbl_805611C4
/* 80560D18  38 60 00 4B */	li r3, 0x4b
/* 80560D1C  4B BE BD 91 */	bl daNpcT_chkEvtBit__FUl
/* 80560D20  2C 03 00 00 */	cmpwi r3, 0
/* 80560D24  40 82 00 18 */	bne lbl_80560D3C
/* 80560D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80560D2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80560D30  38 63 09 58 */	addi r3, r3, 0x958
/* 80560D34  38 80 00 6D */	li r4, 0x6d
/* 80560D38  4B AD 3B 01 */	bl offSwitch__12dSv_memBit_cFi
lbl_80560D3C:
/* 80560D3C  38 7F 09 74 */	addi r3, r31, 0x974
/* 80560D40  38 81 00 08 */	addi r4, r1, 8
/* 80560D44  4B CE 97 E5 */	bl getEventId__10dMsgFlow_cFPi
/* 80560D48  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80560D4C  2C 00 00 08 */	cmpwi r0, 8
/* 80560D50  41 82 00 74 */	beq lbl_80560DC4
/* 80560D54  40 80 04 70 */	bge lbl_805611C4
/* 80560D58  2C 00 00 01 */	cmpwi r0, 1
/* 80560D5C  41 82 00 08 */	beq lbl_80560D64
/* 80560D60  48 00 04 64 */	b lbl_805611C4
lbl_80560D64:
/* 80560D64  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80560D68  3C 03 00 01 */	addis r0, r3, 1
/* 80560D6C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80560D70  40 82 00 28 */	bne lbl_80560D98
/* 80560D74  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80560D78  80 81 00 08 */	lwz r4, 8(r1)
/* 80560D7C  38 A0 00 00 */	li r5, 0
/* 80560D80  38 C0 FF FF */	li r6, -1
/* 80560D84  38 E0 FF FF */	li r7, -1
/* 80560D88  39 00 00 00 */	li r8, 0
/* 80560D8C  39 20 00 00 */	li r9, 0
/* 80560D90  4B AB AE 59 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80560D94  90 7F 0D 90 */	stw r3, 0xd90(r31)
lbl_80560D98:
/* 80560D98  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80560D9C  4B AC 06 01 */	bl fpcEx_IsExist__FUi
/* 80560DA0  2C 03 00 00 */	cmpwi r3, 0
/* 80560DA4  41 82 00 18 */	beq lbl_80560DBC
/* 80560DA8  38 00 00 01 */	li r0, 1
/* 80560DAC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80560DB0  98 1F 11 35 */	stb r0, 0x1135(r31)
/* 80560DB4  7F E3 FB 78 */	mr r3, r31
/* 80560DB8  4B BE 94 6D */	bl evtChange__8daNpcT_cFv
lbl_80560DBC:
/* 80560DBC  3B A0 00 00 */	li r29, 0
/* 80560DC0  48 00 04 04 */	b lbl_805611C4
lbl_80560DC4:
/* 80560DC4  80 01 00 08 */	lwz r0, 8(r1)
/* 80560DC8  2C 00 00 01 */	cmpwi r0, 1
/* 80560DCC  40 82 00 14 */	bne lbl_80560DE0
/* 80560DD0  38 00 00 0B */	li r0, 0xb
/* 80560DD4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80560DD8  7F E3 FB 78 */	mr r3, r31
/* 80560DDC  4B BE 94 49 */	bl evtChange__8daNpcT_cFv
lbl_80560DE0:
/* 80560DE0  3B A0 00 00 */	li r29, 0
/* 80560DE4  48 00 03 E0 */	b lbl_805611C4
lbl_80560DE8:
/* 80560DE8  3B A0 00 01 */	li r29, 1
/* 80560DEC  48 00 03 D8 */	b lbl_805611C4
lbl_80560DF0:
/* 80560DF0  7F E3 FB 78 */	mr r3, r31
/* 80560DF4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80560DF8  38 A0 00 00 */	li r5, 0
/* 80560DFC  38 C1 00 0C */	addi r6, r1, 0xc
/* 80560E00  38 E0 00 00 */	li r7, 0
/* 80560E04  4B BE AE 75 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80560E08  2C 03 00 00 */	cmpwi r3, 0
/* 80560E0C  41 82 03 B8 */	beq lbl_805611C4
/* 80560E10  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80560E14  28 00 00 01 */	cmplwi r0, 1
/* 80560E18  40 82 03 AC */	bne lbl_805611C4
/* 80560E1C  3B A0 00 01 */	li r29, 1
/* 80560E20  48 00 03 A4 */	b lbl_805611C4
lbl_80560E24:
/* 80560E24  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80560E28  2C 00 00 01 */	cmpwi r0, 1
/* 80560E2C  41 82 00 28 */	beq lbl_80560E54
/* 80560E30  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560E34  4B BE 48 C9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80560E38  38 00 00 00 */	li r0, 0
/* 80560E3C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80560E40  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560E44  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80560E48  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560E4C  38 00 00 01 */	li r0, 1
/* 80560E50  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80560E54:
/* 80560E54  38 00 00 00 */	li r0, 0
/* 80560E58  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560E5C  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80560E60  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80560E64  7C 04 00 00 */	cmpw r4, r0
/* 80560E68  41 82 00 20 */	beq lbl_80560E88
/* 80560E6C  7F E3 FB 78 */	mr r3, r31
/* 80560E70  38 A0 00 09 */	li r5, 9
/* 80560E74  38 C0 00 07 */	li r6, 7
/* 80560E78  38 E0 00 0F */	li r7, 0xf
/* 80560E7C  39 00 00 00 */	li r8, 0
/* 80560E80  4B BE A7 C9 */	bl step__8daNpcT_cFsiiii
/* 80560E84  48 00 03 40 */	b lbl_805611C4
lbl_80560E88:
/* 80560E88  3B A0 00 01 */	li r29, 1
/* 80560E8C  48 00 03 38 */	b lbl_805611C4
lbl_80560E90:
/* 80560E90  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80560E94  2C 00 00 01 */	cmpwi r0, 1
/* 80560E98  41 82 00 28 */	beq lbl_80560EC0
/* 80560E9C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560EA0  4B BE 48 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80560EA4  38 00 00 00 */	li r0, 0
/* 80560EA8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80560EAC  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560EB0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80560EB4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560EB8  38 00 00 01 */	li r0, 1
/* 80560EBC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80560EC0:
/* 80560EC0  38 00 00 00 */	li r0, 0
/* 80560EC4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560EC8  7F E3 FB 78 */	mr r3, r31
/* 80560ECC  38 80 00 00 */	li r4, 0
/* 80560ED0  38 A0 00 00 */	li r5, 0
/* 80560ED4  38 C0 00 00 */	li r6, 0
/* 80560ED8  38 E0 00 00 */	li r7, 0
/* 80560EDC  4B BE AD 9D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80560EE0  2C 03 00 00 */	cmpwi r3, 0
/* 80560EE4  41 82 02 E0 */	beq lbl_805611C4
/* 80560EE8  38 7F 09 74 */	addi r3, r31, 0x974
/* 80560EEC  38 81 00 08 */	addi r4, r1, 8
/* 80560EF0  4B CE 96 39 */	bl getEventId__10dMsgFlow_cFPi
/* 80560EF4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80560EF8  2C 00 00 08 */	cmpwi r0, 8
/* 80560EFC  40 82 02 C8 */	bne lbl_805611C4
/* 80560F00  80 01 00 08 */	lwz r0, 8(r1)
/* 80560F04  2C 00 00 02 */	cmpwi r0, 2
/* 80560F08  41 82 00 28 */	beq lbl_80560F30
/* 80560F0C  40 80 00 38 */	bge lbl_80560F44
/* 80560F10  2C 00 00 01 */	cmpwi r0, 1
/* 80560F14  40 80 00 08 */	bge lbl_80560F1C
/* 80560F18  48 00 00 2C */	b lbl_80560F44
lbl_80560F1C:
/* 80560F1C  38 00 00 0B */	li r0, 0xb
/* 80560F20  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80560F24  7F E3 FB 78 */	mr r3, r31
/* 80560F28  4B BE 92 FD */	bl evtChange__8daNpcT_cFv
/* 80560F2C  48 00 02 98 */	b lbl_805611C4
lbl_80560F30:
/* 80560F30  38 00 00 0A */	li r0, 0xa
/* 80560F34  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80560F38  7F E3 FB 78 */	mr r3, r31
/* 80560F3C  4B BE 92 E9 */	bl evtChange__8daNpcT_cFv
/* 80560F40  48 00 02 84 */	b lbl_805611C4
lbl_80560F44:
/* 80560F44  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80560F48  28 00 00 01 */	cmplwi r0, 1
/* 80560F4C  40 82 02 78 */	bne lbl_805611C4
/* 80560F50  3B A0 00 01 */	li r29, 1
/* 80560F54  48 00 02 70 */	b lbl_805611C4
lbl_80560F58:
/* 80560F58  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80560F5C  2C 00 00 01 */	cmpwi r0, 1
/* 80560F60  41 82 00 28 */	beq lbl_80560F88
/* 80560F64  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560F68  4B BE 47 95 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80560F6C  38 00 00 00 */	li r0, 0
/* 80560F70  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80560F74  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560F78  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80560F7C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560F80  38 00 00 01 */	li r0, 1
/* 80560F84  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80560F88:
/* 80560F88  38 00 00 00 */	li r0, 0
/* 80560F8C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560F90  3B A0 00 01 */	li r29, 1
/* 80560F94  48 00 02 30 */	b lbl_805611C4
lbl_80560F98:
/* 80560F98  3B A0 00 01 */	li r29, 1
/* 80560F9C  48 00 02 28 */	b lbl_805611C4
lbl_80560FA0:
/* 80560FA0  7F 23 CB 78 */	mr r3, r25
/* 80560FA4  7E E4 BB 78 */	mr r4, r23
/* 80560FA8  4B AE 6D A5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80560FAC  54 74 06 3E */	clrlwi r20, r3, 0x18
/* 80560FB0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80560FB4  2C 00 00 01 */	cmpwi r0, 1
/* 80560FB8  41 82 00 28 */	beq lbl_80560FE0
/* 80560FBC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80560FC0  4B BE 47 3D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80560FC4  38 00 00 00 */	li r0, 0
/* 80560FC8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80560FCC  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80560FD0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80560FD4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80560FD8  38 00 00 01 */	li r0, 1
/* 80560FDC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80560FE0:
/* 80560FE0  28 14 00 00 */	cmplwi r20, 0
/* 80560FE4  41 82 00 10 */	beq lbl_80560FF4
/* 80560FE8  38 00 00 00 */	li r0, 0
/* 80560FEC  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80560FF0  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
lbl_80560FF4:
/* 80560FF4  9A 9F 0C FF */	stb r20, 0xcff(r31)
/* 80560FF8  7F E3 FB 78 */	mr r3, r31
/* 80560FFC  38 80 00 00 */	li r4, 0
/* 80561000  38 A0 00 00 */	li r5, 0
/* 80561004  38 C0 00 00 */	li r6, 0
/* 80561008  38 E0 00 00 */	li r7, 0
/* 8056100C  4B BE AC 6D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80561010  2C 03 00 00 */	cmpwi r3, 0
/* 80561014  41 82 01 B0 */	beq lbl_805611C4
/* 80561018  3B A0 00 01 */	li r29, 1
/* 8056101C  48 00 01 A8 */	b lbl_805611C4
lbl_80561020:
/* 80561020  7F E3 FB 78 */	mr r3, r31
/* 80561024  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80561028  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8056102C  7D 89 03 A6 */	mtctr r12
/* 80561030  4E 80 04 21 */	bctrl 
/* 80561034  3B A0 00 01 */	li r29, 1
/* 80561038  48 00 01 8C */	b lbl_805611C4
lbl_8056103C:
/* 8056103C  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80561040  4B BE 46 C9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80561044  7C 64 1B 78 */	mr r4, r3
/* 80561048  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056104C  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80561050  38 A0 00 00 */	li r5, 0
/* 80561054  48 00 33 B1 */	bl lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc
/* 80561058  93 41 00 1C */	stw r26, 0x1c(r1)
/* 8056105C  7F E3 FB 78 */	mr r3, r31
/* 80561060  38 81 00 1C */	addi r4, r1, 0x1c
/* 80561064  7F 05 C3 78 */	mr r5, r24
/* 80561068  38 C1 00 0C */	addi r6, r1, 0xc
/* 8056106C  38 E0 00 00 */	li r7, 0
/* 80561070  4B BE AC 09 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80561074  2C 03 00 00 */	cmpwi r3, 0
/* 80561078  41 82 00 2C */	beq lbl_805610A4
/* 8056107C  2C 1A 00 00 */	cmpwi r26, 0
/* 80561080  40 82 00 20 */	bne lbl_805610A0
/* 80561084  2C 16 00 00 */	cmpwi r22, 0
/* 80561088  40 82 00 18 */	bne lbl_805610A0
/* 8056108C  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80561090  28 00 00 01 */	cmplwi r0, 1
/* 80561094  40 82 00 10 */	bne lbl_805610A4
/* 80561098  3B A0 00 01 */	li r29, 1
/* 8056109C  48 00 00 08 */	b lbl_805610A4
lbl_805610A0:
/* 805610A0  3B A0 00 01 */	li r29, 1
lbl_805610A4:
/* 805610A4  2C 1D 00 00 */	cmpwi r29, 0
/* 805610A8  41 82 00 18 */	beq lbl_805610C0
/* 805610AC  2C 1C 00 20 */	cmpwi r28, 0x20
/* 805610B0  40 82 00 10 */	bne lbl_805610C0
/* 805610B4  7F E3 FB 78 */	mr r3, r31
/* 805610B8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 805610BC  4B BE 99 5D */	bl setAngle__8daNpcT_cFs
lbl_805610C0:
/* 805610C0  2C 18 00 00 */	cmpwi r24, 0
/* 805610C4  40 82 01 00 */	bne lbl_805611C4
/* 805610C8  3B A0 00 01 */	li r29, 1
/* 805610CC  48 00 00 F8 */	b lbl_805611C4
lbl_805610D0:
/* 805610D0  3B A0 00 01 */	li r29, 1
/* 805610D4  48 00 00 F0 */	b lbl_805611C4
lbl_805610D8:
/* 805610D8  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 805610DC  4B BE 46 2D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805610E0  7C 64 1B 78 */	mr r4, r3
/* 805610E4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805610E8  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 805610EC  38 A0 00 00 */	li r5, 0
/* 805610F0  48 00 33 15 */	bl lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc
/* 805610F4  93 41 00 1C */	stw r26, 0x1c(r1)
/* 805610F8  7F E3 FB 78 */	mr r3, r31
/* 805610FC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80561100  7F 05 C3 78 */	mr r5, r24
/* 80561104  38 C1 00 0C */	addi r6, r1, 0xc
/* 80561108  38 E0 00 00 */	li r7, 0
/* 8056110C  4B BE AB 6D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80561110  2C 03 00 00 */	cmpwi r3, 0
/* 80561114  41 82 00 7C */	beq lbl_80561190
/* 80561118  2C 1C 00 2B */	cmpwi r28, 0x2b
/* 8056111C  40 82 00 48 */	bne lbl_80561164
/* 80561120  7F E3 FB 78 */	mr r3, r31
/* 80561124  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80561128  4B BE 98 F1 */	bl setAngle__8daNpcT_cFs
/* 8056112C  7F 63 DB 78 */	mr r3, r27
/* 80561130  4B AC BA AD */	bl getTimerPtr__14dComIfG_play_cFv
/* 80561134  28 03 00 00 */	cmplwi r3, 0
/* 80561138  41 82 00 2C */	beq lbl_80561164
/* 8056113C  7F 63 DB 78 */	mr r3, r27
/* 80561140  4B AC BA 7D */	bl getTimerMode__14dComIfG_play_cFv
/* 80561144  2C 03 00 00 */	cmpwi r3, 0
/* 80561148  40 82 00 1C */	bne lbl_80561164
/* 8056114C  4B D0 00 A5 */	bl dTimer_isStart__Fv
/* 80561150  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80561154  40 82 00 10 */	bne lbl_80561164
/* 80561158  38 60 00 00 */	li r3, 0
/* 8056115C  38 80 00 00 */	li r4, 0
/* 80561160  4B AC E3 CD */	bl dComIfG_TimerStart__Fis
lbl_80561164:
/* 80561164  2C 1C 00 2C */	cmpwi r28, 0x2c
/* 80561168  40 82 00 24 */	bne lbl_8056118C
/* 8056116C  7F E3 FB 78 */	mr r3, r31
/* 80561170  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80561174  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80561178  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056117C  4B AB 95 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80561180  7C 64 1B 78 */	mr r4, r3
/* 80561184  7F E3 FB 78 */	mr r3, r31
/* 80561188  4B BE 98 91 */	bl setAngle__8daNpcT_cFs
lbl_8056118C:
/* 8056118C  3B A0 00 01 */	li r29, 1
lbl_80561190:
/* 80561190  2C 18 00 00 */	cmpwi r24, 0
/* 80561194  40 82 00 30 */	bne lbl_805611C4
/* 80561198  3B A0 00 01 */	li r29, 1
/* 8056119C  48 00 00 28 */	b lbl_805611C4
lbl_805611A0:
/* 805611A0  7F E3 FB 78 */	mr r3, r31
/* 805611A4  38 80 00 00 */	li r4, 0
/* 805611A8  38 A0 00 00 */	li r5, 0
/* 805611AC  38 C1 00 0C */	addi r6, r1, 0xc
/* 805611B0  38 E0 00 00 */	li r7, 0
/* 805611B4  4B BE AA C5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 805611B8  2C 03 00 00 */	cmpwi r3, 0
/* 805611BC  41 82 00 08 */	beq lbl_805611C4
/* 805611C0  3B A0 00 01 */	li r29, 1
lbl_805611C4:
/* 805611C4  7F A3 EB 78 */	mr r3, r29
/* 805611C8  39 61 00 80 */	addi r11, r1, 0x80
/* 805611CC  4B E0 10 39 */	bl _restgpr_20
/* 805611D0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805611D4  7C 08 03 A6 */	mtlr r0
/* 805611D8  38 21 00 80 */	addi r1, r1, 0x80
/* 805611DC  4E 80 00 20 */	blr 

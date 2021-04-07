lbl_80549300:
/* 80549300  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80549304  7C 08 02 A6 */	mflr r0
/* 80549308  90 01 00 44 */	stw r0, 0x44(r1)
/* 8054930C  39 61 00 40 */	addi r11, r1, 0x40
/* 80549310  4B E1 8E B1 */	bl _savegpr_22
/* 80549314  7C 7F 1B 78 */	mr r31, r3
/* 80549318  3C 60 80 55 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8054AC88@ha */
/* 8054931C  3B C3 AC 88 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x8054AC88@l */
/* 80549320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80549324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80549328  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8054932C  3C 80 80 55 */	lis r4, d_a_npc_henna__stringBase0@ha /* 0x8054AC70@ha */
/* 80549330  38 84 AC 70 */	addi r4, r4, d_a_npc_henna__stringBase0@l /* 0x8054AC70@l */
/* 80549334  38 84 00 06 */	addi r4, r4, 6
/* 80549338  4B E1 F6 5D */	bl strcmp
/* 8054933C  30 03 FF FF */	addic r0, r3, -1
/* 80549340  7C 60 01 10 */	subfe r3, r0, r0
/* 80549344  3A E3 00 26 */	addi r23, r3, 0x26
/* 80549348  38 60 00 54 */	li r3, 0x54
/* 8054934C  4B D8 59 01 */	bl __nw__FUl
/* 80549350  7C 78 1B 79 */	or. r24, r3, r3
/* 80549354  41 82 00 7C */	beq lbl_805493D0
/* 80549358  3C 60 80 55 */	lis r3, d_a_npc_henna__stringBase0@ha /* 0x8054AC70@ha */
/* 8054935C  38 63 AC 70 */	addi r3, r3, d_a_npc_henna__stringBase0@l /* 0x8054AC70@l */
/* 80549360  7E E4 BB 78 */	mr r4, r23
/* 80549364  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80549368  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054936C  3C A5 00 02 */	addis r5, r5, 2
/* 80549370  38 C0 00 80 */	li r6, 0x80
/* 80549374  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80549378  4B AF 2F 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8054937C  7C 64 1B 78 */	mr r4, r3
/* 80549380  38 00 00 01 */	li r0, 1
/* 80549384  90 01 00 08 */	stw r0, 8(r1)
/* 80549388  38 00 00 00 */	li r0, 0
/* 8054938C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80549390  3C 00 00 08 */	lis r0, 8
/* 80549394  90 01 00 10 */	stw r0, 0x10(r1)
/* 80549398  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020284@ha */
/* 8054939C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11020284@l */
/* 805493A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805493A4  7F 03 C3 78 */	mr r3, r24
/* 805493A8  38 A0 00 00 */	li r5, 0
/* 805493AC  38 C0 00 00 */	li r6, 0
/* 805493B0  38 E0 00 00 */	li r7, 0
/* 805493B4  39 00 00 00 */	li r8, 0
/* 805493B8  3D 20 80 55 */	lis r9, lit_3905@ha /* 0x8054A964@ha */
/* 805493BC  C0 29 A9 64 */	lfs f1, lit_3905@l(r9)  /* 0x8054A964@l */
/* 805493C0  39 20 00 00 */	li r9, 0
/* 805493C4  39 40 FF FF */	li r10, -1
/* 805493C8  4B AC 68 85 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 805493CC  7C 78 1B 78 */	mr r24, r3
lbl_805493D0:
/* 805493D0  93 1F 06 24 */	stw r24, 0x624(r31)
/* 805493D4  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 805493D8  28 03 00 00 */	cmplwi r3, 0
/* 805493DC  41 82 00 10 */	beq lbl_805493EC
/* 805493E0  80 A3 00 04 */	lwz r5, 4(r3)
/* 805493E4  28 05 00 00 */	cmplwi r5, 0
/* 805493E8  40 82 00 0C */	bne lbl_805493F4
lbl_805493EC:
/* 805493EC  38 60 00 00 */	li r3, 0
/* 805493F0  48 00 02 D4 */	b lbl_805496C4
lbl_805493F4:
/* 805493F4  93 E5 00 14 */	stw r31, 0x14(r5)
/* 805493F8  38 E0 00 00 */	li r7, 0
/* 805493FC  3C 60 80 54 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80543048@ha */
/* 80549400  38 83 30 48 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x80543048@l */
/* 80549404  48 00 00 18 */	b lbl_8054941C
lbl_80549408:
/* 80549408  80 66 00 28 */	lwz r3, 0x28(r6)
/* 8054940C  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80549410  7C 63 00 2E */	lwzx r3, r3, r0
/* 80549414  90 83 00 04 */	stw r4, 4(r3)
/* 80549418  38 E7 00 01 */	addi r7, r7, 1
lbl_8054941C:
/* 8054941C  80 C5 00 04 */	lwz r6, 4(r5)
/* 80549420  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80549424  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80549428  7C 00 18 40 */	cmplw r0, r3
/* 8054942C  41 80 FF DC */	blt lbl_80549408
/* 80549430  3B 80 00 00 */	li r28, 0
/* 80549434  3B 60 00 00 */	li r27, 0
/* 80549438  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054943C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80549440  3F A3 00 02 */	addis r29, r3, 2
/* 80549444  3B BD C2 F8 */	addi r29, r29, -15624
/* 80549448  3C 60 80 55 */	lis r3, d_a_npc_henna__stringBase0@ha /* 0x8054AC70@ha */
/* 8054944C  3B 23 AC 70 */	addi r25, r3, d_a_npc_henna__stringBase0@l /* 0x8054AC70@l */
/* 80549450  3B 1E 02 2C */	addi r24, r30, 0x22c
/* 80549454  3C 60 80 55 */	lis r3, lit_3905@ha /* 0x8054A964@ha */
/* 80549458  3A E3 A9 64 */	addi r23, r3, lit_3905@l /* 0x8054A964@l */
lbl_8054945C:
/* 8054945C  38 60 00 18 */	li r3, 0x18
/* 80549460  4B D8 57 ED */	bl __nw__FUl
/* 80549464  7C 7A 1B 79 */	or. r26, r3, r3
/* 80549468  41 82 00 20 */	beq lbl_80549488
/* 8054946C  3C 80 80 55 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8054AF50@ha */
/* 80549470  38 04 AF 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8054AF50@l */
/* 80549474  90 1A 00 00 */	stw r0, 0(r26)
/* 80549478  38 80 00 00 */	li r4, 0
/* 8054947C  4B DD EF 81 */	bl init__12J3DFrameCtrlFs
/* 80549480  38 00 00 00 */	li r0, 0
/* 80549484  90 1A 00 14 */	stw r0, 0x14(r26)
lbl_80549488:
/* 80549488  3A DB 06 28 */	addi r22, r27, 0x628
/* 8054948C  7F 5F B1 2E */	stwx r26, r31, r22
/* 80549490  7C 1F B0 2E */	lwzx r0, r31, r22
/* 80549494  28 00 00 00 */	cmplwi r0, 0
/* 80549498  40 82 00 0C */	bne lbl_805494A4
/* 8054949C  38 60 00 00 */	li r3, 0
/* 805494A0  48 00 02 24 */	b lbl_805496C4
lbl_805494A4:
/* 805494A4  7F 23 CB 78 */	mr r3, r25
/* 805494A8  7C 98 D8 2E */	lwzx r4, r24, r27
/* 805494AC  7F A5 EB 78 */	mr r5, r29
/* 805494B0  38 C0 00 80 */	li r6, 0x80
/* 805494B4  4B AF 2E 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805494B8  7C 65 1B 78 */	mr r5, r3
/* 805494BC  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 805494C0  80 63 00 04 */	lwz r3, 4(r3)
/* 805494C4  80 83 00 04 */	lwz r4, 4(r3)
/* 805494C8  7C 7F B0 2E */	lwzx r3, r31, r22
/* 805494CC  38 84 00 58 */	addi r4, r4, 0x58
/* 805494D0  38 C0 00 01 */	li r6, 1
/* 805494D4  38 E0 00 00 */	li r7, 0
/* 805494D8  C0 37 00 00 */	lfs f1, 0(r23)
/* 805494DC  39 00 00 00 */	li r8, 0
/* 805494E0  39 20 FF FF */	li r9, -1
/* 805494E4  4B AC 41 59 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805494E8  2C 03 00 00 */	cmpwi r3, 0
/* 805494EC  40 82 00 0C */	bne lbl_805494F8
/* 805494F0  38 60 00 00 */	li r3, 0
/* 805494F4  48 00 01 D0 */	b lbl_805496C4
lbl_805494F8:
/* 805494F8  3B 9C 00 01 */	addi r28, r28, 1
/* 805494FC  2C 1C 00 03 */	cmpwi r28, 3
/* 80549500  3B 7B 00 04 */	addi r27, r27, 4
/* 80549504  41 80 FF 58 */	blt lbl_8054945C
/* 80549508  3B 80 00 00 */	li r28, 0
/* 8054950C  3B 60 00 00 */	li r27, 0
/* 80549510  3C 60 80 55 */	lis r3, d_a_npc_henna__stringBase0@ha /* 0x8054AC70@ha */
/* 80549514  3B 43 AC 70 */	addi r26, r3, d_a_npc_henna__stringBase0@l /* 0x8054AC70@l */
/* 80549518  3B 3E 02 38 */	addi r25, r30, 0x238
/* 8054951C  3C 60 80 55 */	lis r3, lit_3905@ha /* 0x8054A964@ha */
/* 80549520  3B 03 A9 64 */	addi r24, r3, lit_3905@l /* 0x8054A964@l */
lbl_80549524:
/* 80549524  38 60 00 18 */	li r3, 0x18
/* 80549528  4B D8 57 25 */	bl __nw__FUl
/* 8054952C  7C 77 1B 79 */	or. r23, r3, r3
/* 80549530  41 82 00 20 */	beq lbl_80549550
/* 80549534  3C 80 80 55 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8054AF50@ha */
/* 80549538  38 04 AF 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8054AF50@l */
/* 8054953C  90 17 00 00 */	stw r0, 0(r23)
/* 80549540  38 80 00 00 */	li r4, 0
/* 80549544  4B DD EE B9 */	bl init__12J3DFrameCtrlFs
/* 80549548  38 00 00 00 */	li r0, 0
/* 8054954C  90 17 00 14 */	stw r0, 0x14(r23)
lbl_80549550:
/* 80549550  3A DB 06 34 */	addi r22, r27, 0x634
/* 80549554  7E FF B1 2E */	stwx r23, r31, r22
/* 80549558  7C 1F B0 2E */	lwzx r0, r31, r22
/* 8054955C  28 00 00 00 */	cmplwi r0, 0
/* 80549560  40 82 00 0C */	bne lbl_8054956C
/* 80549564  38 60 00 00 */	li r3, 0
/* 80549568  48 00 01 5C */	b lbl_805496C4
lbl_8054956C:
/* 8054956C  7F 43 D3 78 */	mr r3, r26
/* 80549570  7C 99 D8 2E */	lwzx r4, r25, r27
/* 80549574  7F A5 EB 78 */	mr r5, r29
/* 80549578  38 C0 00 80 */	li r6, 0x80
/* 8054957C  4B AF 2D 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80549580  7C 65 1B 78 */	mr r5, r3
/* 80549584  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80549588  80 63 00 04 */	lwz r3, 4(r3)
/* 8054958C  80 83 00 04 */	lwz r4, 4(r3)
/* 80549590  7C 7F B0 2E */	lwzx r3, r31, r22
/* 80549594  38 84 00 58 */	addi r4, r4, 0x58
/* 80549598  38 C0 00 01 */	li r6, 1
/* 8054959C  38 E0 00 02 */	li r7, 2
/* 805495A0  C0 38 00 00 */	lfs f1, 0(r24)
/* 805495A4  39 00 00 00 */	li r8, 0
/* 805495A8  39 20 FF FF */	li r9, -1
/* 805495AC  4B AC 3F A1 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 805495B0  2C 03 00 00 */	cmpwi r3, 0
/* 805495B4  40 82 00 0C */	bne lbl_805495C0
/* 805495B8  38 60 00 00 */	li r3, 0
/* 805495BC  48 00 01 08 */	b lbl_805496C4
lbl_805495C0:
/* 805495C0  3B 9C 00 01 */	addi r28, r28, 1
/* 805495C4  2C 1C 00 08 */	cmpwi r28, 8
/* 805495C8  3B 7B 00 04 */	addi r27, r27, 4
/* 805495CC  41 80 FF 58 */	blt lbl_80549524
/* 805495D0  3B 80 00 00 */	li r28, 0
/* 805495D4  3B 60 00 00 */	li r27, 0
/* 805495D8  3C 60 80 55 */	lis r3, d_a_npc_henna__stringBase0@ha /* 0x8054AC70@ha */
/* 805495DC  3B 23 AC 70 */	addi r25, r3, d_a_npc_henna__stringBase0@l /* 0x8054AC70@l */
/* 805495E0  3B 5E 02 58 */	addi r26, r30, 0x258
/* 805495E4  3C 60 80 55 */	lis r3, lit_3905@ha /* 0x8054A964@ha */
/* 805495E8  3B C3 A9 64 */	addi r30, r3, lit_3905@l /* 0x8054A964@l */
lbl_805495EC:
/* 805495EC  38 60 00 1C */	li r3, 0x1c
/* 805495F0  4B D8 56 5D */	bl __nw__FUl
/* 805495F4  7C 78 1B 79 */	or. r24, r3, r3
/* 805495F8  41 82 00 20 */	beq lbl_80549618
/* 805495FC  3C 80 80 55 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8054AF50@ha */
/* 80549600  38 04 AF 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8054AF50@l */
/* 80549604  90 18 00 00 */	stw r0, 0(r24)
/* 80549608  38 80 00 00 */	li r4, 0
/* 8054960C  4B DD ED F1 */	bl init__12J3DFrameCtrlFs
/* 80549610  38 00 00 00 */	li r0, 0
/* 80549614  90 18 00 18 */	stw r0, 0x18(r24)
lbl_80549618:
/* 80549618  3A DB 06 68 */	addi r22, r27, 0x668
/* 8054961C  7F 1F B1 2E */	stwx r24, r31, r22
/* 80549620  7C 1F B0 2E */	lwzx r0, r31, r22
/* 80549624  28 00 00 00 */	cmplwi r0, 0
/* 80549628  40 82 00 0C */	bne lbl_80549634
/* 8054962C  38 60 00 00 */	li r3, 0
/* 80549630  48 00 00 94 */	b lbl_805496C4
lbl_80549634:
/* 80549634  7F 23 CB 78 */	mr r3, r25
/* 80549638  7C 9A D8 2E */	lwzx r4, r26, r27
/* 8054963C  7F A5 EB 78 */	mr r5, r29
/* 80549640  38 C0 00 80 */	li r6, 0x80
/* 80549644  4B AF 2C A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80549648  7C 64 1B 78 */	mr r4, r3
/* 8054964C  7C 7F B0 2E */	lwzx r3, r31, r22
/* 80549650  38 A0 00 01 */	li r5, 1
/* 80549654  38 C0 00 02 */	li r6, 2
/* 80549658  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8054965C  38 E0 00 00 */	li r7, 0
/* 80549660  39 00 FF FF */	li r8, -1
/* 80549664  39 20 00 00 */	li r9, 0
/* 80549668  4B AC 41 75 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 8054966C  2C 03 00 00 */	cmpwi r3, 0
/* 80549670  40 82 00 0C */	bne lbl_8054967C
/* 80549674  38 60 00 00 */	li r3, 0
/* 80549678  48 00 00 4C */	b lbl_805496C4
lbl_8054967C:
/* 8054967C  3B 9C 00 01 */	addi r28, r28, 1
/* 80549680  2C 1C 00 08 */	cmpwi r28, 8
/* 80549684  3B 7B 00 04 */	addi r27, r27, 4
/* 80549688  41 80 FF 64 */	blt lbl_805495EC
/* 8054968C  3C 60 80 55 */	lis r3, d_a_npc_henna__stringBase0@ha /* 0x8054AC70@ha */
/* 80549690  38 63 AC 70 */	addi r3, r3, d_a_npc_henna__stringBase0@l /* 0x8054AC70@l */
/* 80549694  38 80 00 24 */	li r4, 0x24
/* 80549698  7F A5 EB 78 */	mr r5, r29
/* 8054969C  38 C0 00 80 */	li r6, 0x80
/* 805496A0  4B AF 2C 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805496A4  3C 80 00 08 */	lis r4, 8
/* 805496A8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805496AC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805496B0  4B AC B5 A5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805496B4  90 7F 06 8C */	stw r3, 0x68c(r31)
/* 805496B8  80 7F 06 8C */	lwz r3, 0x68c(r31)
/* 805496BC  30 03 FF FF */	addic r0, r3, -1
/* 805496C0  7C 60 19 10 */	subfe r3, r0, r3
lbl_805496C4:
/* 805496C4  39 61 00 40 */	addi r11, r1, 0x40
/* 805496C8  4B E1 8B 45 */	bl _restgpr_22
/* 805496CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805496D0  7C 08 03 A6 */	mtlr r0
/* 805496D4  38 21 00 40 */	addi r1, r1, 0x40
/* 805496D8  4E 80 00 20 */	blr 

lbl_80B219F4:
/* 80B219F4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B219F8  7C 08 02 A6 */	mflr r0
/* 80B219FC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B21A00  39 61 00 80 */	addi r11, r1, 0x80
/* 80B21A04  4B 84 07 BC */	b _savegpr_22
/* 80B21A08  7C 7F 1B 78 */	mr r31, r3
/* 80B21A0C  7C 96 23 78 */	mr r22, r4
/* 80B21A10  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha
/* 80B21A14  3B C3 49 E4 */	addi r30, r3, m__18daNpc_Toby_Param_c@l
/* 80B21A18  3B 60 00 00 */	li r27, 0
/* 80B21A1C  3B 40 FF FF */	li r26, -1
/* 80B21A20  3B 20 00 00 */	li r25, 0
/* 80B21A24  3B 00 00 00 */	li r24, 0
/* 80B21A28  3A E0 00 00 */	li r23, 0
/* 80B21A2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B21A30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B21A34  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80B21A38  3B BC 40 C0 */	addi r29, r28, 0x40c0
/* 80B21A3C  7F A3 EB 78 */	mr r3, r29
/* 80B21A40  3C A0 80 B2 */	lis r5, struct_80B24B8C+0x0@ha
/* 80B21A44  38 A5 4B 8C */	addi r5, r5, struct_80B24B8C+0x0@l
/* 80B21A48  38 A5 00 A6 */	addi r5, r5, 0xa6
/* 80B21A4C  38 C0 00 03 */	li r6, 3
/* 80B21A50  4B 52 66 9C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B21A54  28 03 00 00 */	cmplwi r3, 0
/* 80B21A58  41 82 00 08 */	beq lbl_80B21A60
/* 80B21A5C  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B21A60:
/* 80B21A60  7F A3 EB 78 */	mr r3, r29
/* 80B21A64  7E C4 B3 78 */	mr r4, r22
/* 80B21A68  3C A0 80 B2 */	lis r5, struct_80B24B8C+0x0@ha
/* 80B21A6C  38 A5 4B 8C */	addi r5, r5, struct_80B24B8C+0x0@l
/* 80B21A70  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B21A74  38 C0 00 03 */	li r6, 3
/* 80B21A78  4B 52 66 74 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B21A7C  28 03 00 00 */	cmplwi r3, 0
/* 80B21A80  41 82 00 08 */	beq lbl_80B21A88
/* 80B21A84  83 23 00 00 */	lwz r25, 0(r3)
lbl_80B21A88:
/* 80B21A88  7F A3 EB 78 */	mr r3, r29
/* 80B21A8C  7E C4 B3 78 */	mr r4, r22
/* 80B21A90  3C A0 80 B2 */	lis r5, struct_80B24B8C+0x0@ha
/* 80B21A94  38 A5 4B 8C */	addi r5, r5, struct_80B24B8C+0x0@l
/* 80B21A98  38 A5 00 B0 */	addi r5, r5, 0xb0
/* 80B21A9C  38 C0 00 03 */	li r6, 3
/* 80B21AA0  4B 52 66 4C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B21AA4  28 03 00 00 */	cmplwi r3, 0
/* 80B21AA8  41 82 00 08 */	beq lbl_80B21AB0
/* 80B21AAC  83 03 00 00 */	lwz r24, 0(r3)
lbl_80B21AB0:
/* 80B21AB0  7F A3 EB 78 */	mr r3, r29
/* 80B21AB4  7E C4 B3 78 */	mr r4, r22
/* 80B21AB8  3C A0 80 B2 */	lis r5, struct_80B24B8C+0x0@ha
/* 80B21ABC  38 A5 4B 8C */	addi r5, r5, struct_80B24B8C+0x0@l
/* 80B21AC0  38 A5 00 B6 */	addi r5, r5, 0xb6
/* 80B21AC4  38 C0 00 03 */	li r6, 3
/* 80B21AC8  4B 52 66 24 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B21ACC  28 03 00 00 */	cmplwi r3, 0
/* 80B21AD0  41 82 00 08 */	beq lbl_80B21AD8
/* 80B21AD4  82 E3 00 00 */	lwz r23, 0(r3)
lbl_80B21AD8:
/* 80B21AD8  7F A3 EB 78 */	mr r3, r29
/* 80B21ADC  7E C4 B3 78 */	mr r4, r22
/* 80B21AE0  4B 52 62 6C */	b getIsAddvance__16dEvent_manager_cFi
/* 80B21AE4  2C 03 00 00 */	cmpwi r3, 0
/* 80B21AE8  41 82 03 74 */	beq lbl_80B21E5C
/* 80B21AEC  28 1A 00 14 */	cmplwi r26, 0x14
/* 80B21AF0  41 81 03 6C */	bgt lbl_80B21E5C
/* 80B21AF4  3C 60 80 B2 */	lis r3, lit_6039@ha
/* 80B21AF8  38 63 56 1C */	addi r3, r3, lit_6039@l
/* 80B21AFC  57 40 10 3A */	slwi r0, r26, 2
/* 80B21B00  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B21B04  7C 09 03 A6 */	mtctr r0
/* 80B21B08  4E 80 04 20 */	bctr 
lbl_80B21B0C:
/* 80B21B0C  38 60 00 0B */	li r3, 0xb
/* 80B21B10  4B 62 B0 1C */	b daNpcT_offTmpBit__FUl
/* 80B21B14  38 60 00 0C */	li r3, 0xc
/* 80B21B18  4B 62 B0 14 */	b daNpcT_offTmpBit__FUl
/* 80B21B1C  7F E3 FB 78 */	mr r3, r31
/* 80B21B20  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B21B24  38 A0 00 00 */	li r5, 0
/* 80B21B28  4B 62 A0 C8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B21B2C  48 00 03 30 */	b lbl_80B21E5C
lbl_80B21B30:
/* 80B21B30  93 3F 0D C4 */	stw r25, 0xdc4(r31)
/* 80B21B34  48 00 03 28 */	b lbl_80B21E5C
lbl_80B21B38:
/* 80B21B38  7F E3 FB 78 */	mr r3, r31
/* 80B21B3C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B21B40  38 A0 00 00 */	li r5, 0
/* 80B21B44  4B 62 A0 AC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B21B48  48 00 03 14 */	b lbl_80B21E5C
lbl_80B21B4C:
/* 80B21B4C  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 80B21B50  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B21B54  4B 62 3D 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B21B58  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 80B21B5C  38 00 00 10 */	li r0, 0x10
/* 80B21B60  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B21B64  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21B68  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80B21B6C  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B21B70  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B21B74  4B 62 3D 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B21B78  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B21B7C  38 00 00 0F */	li r0, 0xf
/* 80B21B80  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B21B84  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21B88  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B21B8C  7F E3 FB 78 */	mr r3, r31
/* 80B21B90  38 80 00 05 */	li r4, 5
/* 80B21B94  4B FF D5 91 */	bl getOtherTobyP__12daNpc_Toby_cFi
/* 80B21B98  7C 76 1B 78 */	mr r22, r3
/* 80B21B9C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B21BA0  D0 1F 0F E8 */	stfs f0, 0xfe8(r31)
/* 80B21BA4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B21BA8  D0 1F 0F EC */	stfs f0, 0xfec(r31)
/* 80B21BAC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B21BB0  D0 1F 0F F0 */	stfs f0, 0xff0(r31)
/* 80B21BB4  7F E3 FB 78 */	mr r3, r31
/* 80B21BB8  A8 96 04 E6 */	lha r4, 0x4e6(r22)
/* 80B21BBC  4B 62 8E 5C */	b setAngle__8daNpcT_cFs
/* 80B21BC0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21BC4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B21BC8  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B21BCC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B21BD0  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 80B21BD4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B21BD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B21BDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B21BE0  A8 96 04 E6 */	lha r4, 0x4e6(r22)
/* 80B21BE4  4B 4E A7 F8 */	b mDoMtx_YrotS__FPA4_fs
/* 80B21BE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B21BEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B21BF0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B21BF4  7C 85 23 78 */	mr r5, r4
/* 80B21BF8  4B 82 51 74 */	b PSMTXMultVec
/* 80B21BFC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B21C00  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 80B21C04  7C 65 1B 78 */	mr r5, r3
/* 80B21C08  4B 82 54 88 */	b PSVECAdd
/* 80B21C0C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B21C10  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B21C14  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B21C18  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B21C1C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B21C20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B21C24  7F E3 FB 78 */	mr r3, r31
/* 80B21C28  38 81 00 34 */	addi r4, r1, 0x34
/* 80B21C2C  4B 62 8C DC */	b setPos__8daNpcT_cF4cXyz
/* 80B21C30  38 60 00 37 */	li r3, 0x37
/* 80B21C34  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B21C38  7C 04 07 74 */	extsb r4, r0
/* 80B21C3C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80B21C40  38 C1 00 14 */	addi r6, r1, 0x14
/* 80B21C44  4B 62 A8 BC */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80B21C48  2C 03 00 00 */	cmpwi r3, 0
/* 80B21C4C  41 82 00 A0 */	beq lbl_80B21CEC
/* 80B21C50  7F A3 EB 78 */	mr r3, r29
/* 80B21C54  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B21C58  4B 52 67 6C */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80B21C5C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21C60  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B21C64  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B21C68  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B21C6C  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 80B21C70  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B21C74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B21C78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B21C7C  A8 81 00 16 */	lha r4, 0x16(r1)
/* 80B21C80  4B 4E A7 5C */	b mDoMtx_YrotS__FPA4_fs
/* 80B21C84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B21C88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B21C8C  38 81 00 40 */	addi r4, r1, 0x40
/* 80B21C90  7C 85 23 78 */	mr r5, r4
/* 80B21C94  4B 82 50 D8 */	b PSMTXMultVec
/* 80B21C98  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B21C9C  38 81 00 40 */	addi r4, r1, 0x40
/* 80B21CA0  7C 65 1B 78 */	mr r5, r3
/* 80B21CA4  4B 82 53 EC */	b PSVECAdd
/* 80B21CA8  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B21CAC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B21CB0  4B 74 60 78 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80B21CB4  7F 83 E3 78 */	mr r3, r28
/* 80B21CB8  38 9F 09 30 */	addi r4, r31, 0x930
/* 80B21CBC  4B 55 27 E4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80B21CC0  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B21CC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B21CC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B21CCC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B21CD0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B21CD4  A8 A1 00 16 */	lha r5, 0x16(r1)
/* 80B21CD8  38 C0 00 00 */	li r6, 0
/* 80B21CDC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B21CE0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B21CE4  7D 89 03 A6 */	mtctr r12
/* 80B21CE8  4E 80 04 21 */	bctrl 
lbl_80B21CEC:
/* 80B21CEC  7F E3 FB 78 */	mr r3, r31
/* 80B21CF0  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B21CF4  38 A0 00 00 */	li r5, 0
/* 80B21CF8  4B 62 9E F8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B21CFC  48 00 01 60 */	b lbl_80B21E5C
lbl_80B21D00:
/* 80B21D00  7F E3 FB 78 */	mr r3, r31
/* 80B21D04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B21D08  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B21D0C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B21D10  4B 4F 8A 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B21D14  B0 7F 0D C8 */	sth r3, 0xdc8(r31)
/* 80B21D18  48 00 01 44 */	b lbl_80B21E5C
lbl_80B21D1C:
/* 80B21D1C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B21D20  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B21D24  41 82 00 24 */	beq lbl_80B21D48
/* 80B21D28  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B21D2C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B21D30  4B 62 3B 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B21D34  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B21D38  38 00 00 0F */	li r0, 0xf
/* 80B21D3C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B21D40  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80B21D44  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B21D48:
/* 80B21D48  7F E3 FB 78 */	mr r3, r31
/* 80B21D4C  38 80 00 05 */	li r4, 5
/* 80B21D50  4B FF D3 D5 */	bl getOtherTobyP__12daNpc_Toby_cFi
/* 80B21D54  7C 76 1B 78 */	mr r22, r3
/* 80B21D58  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21D5C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B21D60  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B21D64  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B21D68  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 80B21D6C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B21D70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B21D74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B21D78  A8 96 04 E6 */	lha r4, 0x4e6(r22)
/* 80B21D7C  4B 4E A6 60 */	b mDoMtx_YrotS__FPA4_fs
/* 80B21D80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B21D84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B21D88  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B21D8C  7C 85 23 78 */	mr r5, r4
/* 80B21D90  4B 82 4F DC */	b PSMTXMultVec
/* 80B21D94  38 61 00 28 */	addi r3, r1, 0x28
/* 80B21D98  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 80B21D9C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80B21DA0  4B 74 4D 44 */	b __pl__4cXyzCFRC3Vec
/* 80B21DA4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B21DA8  D0 1F 0F E8 */	stfs f0, 0xfe8(r31)
/* 80B21DAC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B21DB0  D0 1F 0F EC */	stfs f0, 0xfec(r31)
/* 80B21DB4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B21DB8  D0 1F 0F F0 */	stfs f0, 0xff0(r31)
/* 80B21DBC  93 3F 0D C4 */	stw r25, 0xdc4(r31)
/* 80B21DC0  48 00 00 9C */	b lbl_80B21E5C
lbl_80B21DC4:
/* 80B21DC4  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 80B21DC8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B21DCC  4B 62 3A CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B21DD0  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 80B21DD4  38 00 00 10 */	li r0, 0x10
/* 80B21DD8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B21DDC  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21DE0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80B21DE4  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B21DE8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B21DEC  4B 62 3A AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B21DF0  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B21DF4  38 00 00 00 */	li r0, 0
/* 80B21DF8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B21DFC  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21E00  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B21E04  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80B21E08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B21E0C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80B21E10  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B21E14  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80B21E18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B21E1C  7F E3 FB 78 */	mr r3, r31
/* 80B21E20  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B21E24  4B 62 8A E4 */	b setPos__8daNpcT_cF4cXyz
/* 80B21E28  7F E3 FB 78 */	mr r3, r31
/* 80B21E2C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B21E30  4B 62 8B E8 */	b setAngle__8daNpcT_cFs
/* 80B21E34  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21E38  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B21E3C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B21E40  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B21E44  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B21E48  48 00 00 14 */	b lbl_80B21E5C
lbl_80B21E4C:
/* 80B21E4C  38 00 00 00 */	li r0, 0
/* 80B21E50  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80B21E54  48 00 00 08 */	b lbl_80B21E5C
lbl_80B21E58:
/* 80B21E58  93 3F 0D C4 */	stw r25, 0xdc4(r31)
lbl_80B21E5C:
/* 80B21E5C  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 80B21E60  80 1E 01 80 */	lwz r0, 0x180(r30)
/* 80B21E64  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B21E68  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B21E6C  28 1A 00 14 */	cmplwi r26, 0x14
/* 80B21E70  41 81 05 A8 */	bgt lbl_80B22418
/* 80B21E74  3C 60 80 B2 */	lis r3, lit_6040@ha
/* 80B21E78  38 63 55 C8 */	addi r3, r3, lit_6040@l
/* 80B21E7C  57 40 10 3A */	slwi r0, r26, 2
/* 80B21E80  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B21E84  7C 09 03 A6 */	mtctr r0
/* 80B21E88  4E 80 04 20 */	bctr 
lbl_80B21E8C:
/* 80B21E8C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B21E90  2C 00 00 01 */	cmpwi r0, 1
/* 80B21E94  41 82 00 28 */	beq lbl_80B21EBC
/* 80B21E98  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B21E9C  4B 62 38 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B21EA0  38 00 00 00 */	li r0, 0
/* 80B21EA4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B21EA8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21EAC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B21EB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B21EB4  38 00 00 01 */	li r0, 1
/* 80B21EB8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B21EBC:
/* 80B21EBC  38 00 00 00 */	li r0, 0
/* 80B21EC0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B21EC4  7F E3 FB 78 */	mr r3, r31
/* 80B21EC8  38 80 00 00 */	li r4, 0
/* 80B21ECC  38 A0 00 00 */	li r5, 0
/* 80B21ED0  38 C0 00 00 */	li r6, 0
/* 80B21ED4  38 E0 00 00 */	li r7, 0
/* 80B21ED8  4B 62 9D A0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B21EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B21EE0  41 82 05 38 */	beq lbl_80B22418
/* 80B21EE4  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B21EE8  28 00 00 01 */	cmplwi r0, 1
/* 80B21EEC  40 82 05 2C */	bne lbl_80B22418
/* 80B21EF0  3B 60 00 01 */	li r27, 1
/* 80B21EF4  48 00 05 24 */	b lbl_80B22418
lbl_80B21EF8:
/* 80B21EF8  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80B21EFC  4B 62 38 0C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B21F00  7C 76 1B 79 */	or. r22, r3, r3
/* 80B21F04  41 82 00 84 */	beq lbl_80B21F88
/* 80B21F08  80 7F 0B C8 */	lwz r3, 0xbc8(r31)
/* 80B21F0C  38 16 04 D0 */	addi r0, r22, 0x4d0
/* 80B21F10  7C 63 00 50 */	subf r3, r3, r0
/* 80B21F14  30 03 FF FF */	addic r0, r3, -1
/* 80B21F18  7C 00 19 10 */	subfe r0, r0, r3
/* 80B21F1C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B21F20  40 82 00 10 */	bne lbl_80B21F30
/* 80B21F24  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B21F28  2C 00 00 03 */	cmpwi r0, 3
/* 80B21F2C  41 82 00 30 */	beq lbl_80B21F5C
lbl_80B21F30:
/* 80B21F30  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B21F34  4B 62 37 C8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B21F38  38 00 00 00 */	li r0, 0
/* 80B21F3C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B21F40  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21F44  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B21F48  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B21F4C  38 00 00 03 */	li r0, 3
/* 80B21F50  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80B21F54  38 00 00 01 */	li r0, 1
/* 80B21F58  48 00 00 08 */	b lbl_80B21F60
lbl_80B21F5C:
/* 80B21F5C  38 00 00 00 */	li r0, 0
lbl_80B21F60:
/* 80B21F60  2C 00 00 00 */	cmpwi r0, 0
/* 80B21F64  41 82 00 0C */	beq lbl_80B21F70
/* 80B21F68  38 16 04 D0 */	addi r0, r22, 0x4d0
/* 80B21F6C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
lbl_80B21F70:
/* 80B21F70  38 00 00 00 */	li r0, 0
/* 80B21F74  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B21F78  38 7C 3F 90 */	addi r3, r28, 0x3f90
/* 80B21F7C  7E C4 B3 78 */	mr r4, r22
/* 80B21F80  4B 52 16 DC */	b setPt2__14dEvt_control_cFPv
/* 80B21F84  48 00 00 38 */	b lbl_80B21FBC
lbl_80B21F88:
/* 80B21F88  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B21F8C  2C 00 00 00 */	cmpwi r0, 0
/* 80B21F90  41 82 00 24 */	beq lbl_80B21FB4
/* 80B21F94  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B21F98  4B 62 37 64 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B21F9C  38 00 00 00 */	li r0, 0
/* 80B21FA0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B21FA4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21FA8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B21FAC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B21FB0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B21FB4:
/* 80B21FB4  38 00 00 00 */	li r0, 0
/* 80B21FB8  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B21FBC:
/* 80B21FBC  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80B21FC0  48 00 27 69 */	bl func_80B24728
/* 80B21FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80B21FC8  40 82 04 50 */	bne lbl_80B22418
/* 80B21FCC  3B 60 00 01 */	li r27, 1
/* 80B21FD0  48 00 04 48 */	b lbl_80B22418
lbl_80B21FD4:
/* 80B21FD4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B21FD8  2C 00 00 01 */	cmpwi r0, 1
/* 80B21FDC  41 82 00 28 */	beq lbl_80B22004
/* 80B21FE0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B21FE4  4B 62 37 18 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B21FE8  38 00 00 00 */	li r0, 0
/* 80B21FEC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B21FF0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21FF4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B21FF8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B21FFC  38 00 00 01 */	li r0, 1
/* 80B22000  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B22004:
/* 80B22004  38 00 00 00 */	li r0, 0
/* 80B22008  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B2200C  93 01 00 0C */	stw r24, 0xc(r1)
/* 80B22010  7F E3 FB 78 */	mr r3, r31
/* 80B22014  38 81 00 0C */	addi r4, r1, 0xc
/* 80B22018  38 A0 00 00 */	li r5, 0
/* 80B2201C  38 C0 00 00 */	li r6, 0
/* 80B22020  38 E0 00 00 */	li r7, 0
/* 80B22024  4B 62 9C 54 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B22028  2C 03 00 00 */	cmpwi r3, 0
/* 80B2202C  41 82 03 EC */	beq lbl_80B22418
/* 80B22030  2C 18 00 00 */	cmpwi r24, 0
/* 80B22034  41 82 00 0C */	beq lbl_80B22040
/* 80B22038  3B 60 00 01 */	li r27, 1
/* 80B2203C  48 00 03 DC */	b lbl_80B22418
lbl_80B22040:
/* 80B22040  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B22044  28 00 00 01 */	cmplwi r0, 1
/* 80B22048  40 82 03 D0 */	bne lbl_80B22418
/* 80B2204C  3B 60 00 01 */	li r27, 1
/* 80B22050  48 00 03 C8 */	b lbl_80B22418
lbl_80B22054:
/* 80B22054  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B22058  2C 00 00 01 */	cmpwi r0, 1
/* 80B2205C  41 82 00 28 */	beq lbl_80B22084
/* 80B22060  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B22064  4B 62 36 98 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B22068  38 00 00 00 */	li r0, 0
/* 80B2206C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B22070  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B22074  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B22078  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B2207C  38 00 00 01 */	li r0, 1
/* 80B22080  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B22084:
/* 80B22084  38 00 00 00 */	li r0, 0
/* 80B22088  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B2208C  7F E3 FB 78 */	mr r3, r31
/* 80B22090  38 80 00 00 */	li r4, 0
/* 80B22094  38 A0 00 00 */	li r5, 0
/* 80B22098  38 C0 00 00 */	li r6, 0
/* 80B2209C  38 E0 00 00 */	li r7, 0
/* 80B220A0  4B 62 9B D8 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B220A4  2C 03 00 00 */	cmpwi r3, 0
/* 80B220A8  41 82 03 70 */	beq lbl_80B22418
/* 80B220AC  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B220B0  28 00 00 01 */	cmplwi r0, 1
/* 80B220B4  40 82 03 64 */	bne lbl_80B22418
/* 80B220B8  3B 60 00 01 */	li r27, 1
/* 80B220BC  48 00 03 5C */	b lbl_80B22418
lbl_80B220C0:
/* 80B220C0  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80B220C4  4B 62 36 44 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B220C8  7C 76 1B 79 */	or. r22, r3, r3
/* 80B220CC  41 82 00 AC */	beq lbl_80B22178
/* 80B220D0  C0 16 04 D0 */	lfs f0, 0x4d0(r22)
/* 80B220D4  D0 1F 0D 6C */	stfs f0, 0xd6c(r31)
/* 80B220D8  C0 16 04 D4 */	lfs f0, 0x4d4(r22)
/* 80B220DC  D0 1F 0D 70 */	stfs f0, 0xd70(r31)
/* 80B220E0  C0 16 04 D8 */	lfs f0, 0x4d8(r22)
/* 80B220E4  D0 1F 0D 74 */	stfs f0, 0xd74(r31)
/* 80B220E8  C0 3F 0D 70 */	lfs f1, 0xd70(r31)
/* 80B220EC  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80B220F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B220F4  D0 1F 0D 70 */	stfs f0, 0xd70(r31)
/* 80B220F8  80 7F 0B C8 */	lwz r3, 0xbc8(r31)
/* 80B220FC  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 80B22100  7C 63 00 50 */	subf r3, r3, r0
/* 80B22104  30 03 FF FF */	addic r0, r3, -1
/* 80B22108  7C 00 19 10 */	subfe r0, r0, r3
/* 80B2210C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B22110  40 82 00 10 */	bne lbl_80B22120
/* 80B22114  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B22118  2C 00 00 03 */	cmpwi r0, 3
/* 80B2211C  41 82 00 30 */	beq lbl_80B2214C
lbl_80B22120:
/* 80B22120  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B22124  4B 62 35 D8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B22128  38 00 00 00 */	li r0, 0
/* 80B2212C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B22130  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B22134  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B22138  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B2213C  38 00 00 03 */	li r0, 3
/* 80B22140  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80B22144  38 00 00 01 */	li r0, 1
/* 80B22148  48 00 00 08 */	b lbl_80B22150
lbl_80B2214C:
/* 80B2214C  38 00 00 00 */	li r0, 0
lbl_80B22150:
/* 80B22150  2C 00 00 00 */	cmpwi r0, 0
/* 80B22154  41 82 00 0C */	beq lbl_80B22160
/* 80B22158  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 80B2215C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
lbl_80B22160:
/* 80B22160  38 00 00 00 */	li r0, 0
/* 80B22164  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B22168  38 7C 3F 90 */	addi r3, r28, 0x3f90
/* 80B2216C  7E C4 B3 78 */	mr r4, r22
/* 80B22170  4B 52 14 EC */	b setPt2__14dEvt_control_cFPv
/* 80B22174  48 00 00 38 */	b lbl_80B221AC
lbl_80B22178:
/* 80B22178  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B2217C  2C 00 00 00 */	cmpwi r0, 0
/* 80B22180  41 82 00 24 */	beq lbl_80B221A4
/* 80B22184  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B22188  4B 62 35 74 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2218C  38 00 00 00 */	li r0, 0
/* 80B22190  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B22194  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B22198  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B2219C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B221A0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B221A4:
/* 80B221A4  38 00 00 00 */	li r0, 0
/* 80B221A8  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B221AC:
/* 80B221AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B221B0  2C 00 00 01 */	cmpwi r0, 1
/* 80B221B4  41 82 00 28 */	beq lbl_80B221DC
/* 80B221B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B221BC  4B 62 35 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B221C0  38 00 00 00 */	li r0, 0
/* 80B221C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B221C8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B221CC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B221D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B221D4  38 00 00 01 */	li r0, 1
/* 80B221D8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B221DC:
/* 80B221DC  38 00 00 00 */	li r0, 0
/* 80B221E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B221E4  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B221E8  40 82 00 38 */	bne lbl_80B22220
/* 80B221EC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B221F0  2C 00 00 00 */	cmpwi r0, 0
/* 80B221F4  41 82 00 24 */	beq lbl_80B22218
/* 80B221F8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B221FC  4B 62 35 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B22200  38 00 00 00 */	li r0, 0
/* 80B22204  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B22208  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B2220C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B22210  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B22214  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B22218:
/* 80B22218  38 00 00 00 */	li r0, 0
/* 80B2221C  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B22220:
/* 80B22220  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B22224  38 9F 0F E8 */	addi r4, r31, 0xfe8
/* 80B22228  4B 82 51 74 */	b PSVECSquareDistance
/* 80B2222C  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 80B22230  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B22234  40 80 00 48 */	bge lbl_80B2227C
/* 80B22238  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B2223C  38 9F 0F E8 */	addi r4, r31, 0xfe8
/* 80B22240  4B 74 E9 C4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B22244  7C 64 1B 78 */	mr r4, r3
/* 80B22248  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80B2224C  38 A0 00 04 */	li r5, 4
/* 80B22250  38 C0 04 00 */	li r6, 0x400
/* 80B22254  4B 74 E3 B4 */	b cLib_addCalcAngleS2__FPssss
/* 80B22258  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B2225C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B22260  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B22264  B0 1F 0D 7A */	sth r0, 0xd7a(r31)
/* 80B22268  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B2226C  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 80B22270  C0 5E 01 78 */	lfs f2, 0x178(r30)
/* 80B22274  4B 74 E4 CC */	b cLib_chaseF__FPfff
/* 80B22278  48 00 00 48 */	b lbl_80B222C0
lbl_80B2227C:
/* 80B2227C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B22280  2C 00 00 00 */	cmpwi r0, 0
/* 80B22284  41 82 00 24 */	beq lbl_80B222A8
/* 80B22288  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B2228C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B22290  4B 62 36 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22294  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B22298  38 00 00 00 */	li r0, 0
/* 80B2229C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B222A0  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80B222A4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B222A8:
/* 80B222A8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B222AC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B222B0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B222B4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B222B8  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B222BC  3B 60 00 01 */	li r27, 1
lbl_80B222C0:
/* 80B222C0  2C 1A 00 08 */	cmpwi r26, 8
/* 80B222C4  41 82 00 0C */	beq lbl_80B222D0
/* 80B222C8  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B222CC  40 82 01 4C */	bne lbl_80B22418
lbl_80B222D0:
/* 80B222D0  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80B222D4  48 00 24 55 */	bl func_80B24728
/* 80B222D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B222DC  40 82 01 3C */	bne lbl_80B22418
/* 80B222E0  3B 60 00 01 */	li r27, 1
/* 80B222E4  48 00 01 34 */	b lbl_80B22418
lbl_80B222E8:
/* 80B222E8  93 01 00 0C */	stw r24, 0xc(r1)
/* 80B222EC  38 00 00 00 */	li r0, 0
/* 80B222F0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B222F4  7F E3 FB 78 */	mr r3, r31
/* 80B222F8  38 81 00 0C */	addi r4, r1, 0xc
/* 80B222FC  7E E5 BB 78 */	mr r5, r23
/* 80B22300  38 C0 00 00 */	li r6, 0
/* 80B22304  38 E0 00 00 */	li r7, 0
/* 80B22308  4B 62 99 70 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B2230C  2C 03 00 00 */	cmpwi r3, 0
/* 80B22310  41 82 01 08 */	beq lbl_80B22418
/* 80B22314  2C 18 00 00 */	cmpwi r24, 0
/* 80B22318  41 82 00 0C */	beq lbl_80B22324
/* 80B2231C  3B 60 00 01 */	li r27, 1
/* 80B22320  48 00 00 F8 */	b lbl_80B22418
lbl_80B22324:
/* 80B22324  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B22328  28 00 00 01 */	cmplwi r0, 1
/* 80B2232C  40 82 00 EC */	bne lbl_80B22418
/* 80B22330  3B 60 00 01 */	li r27, 1
/* 80B22334  48 00 00 E4 */	b lbl_80B22418
lbl_80B22338:
/* 80B22338  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B2233C  2C 00 00 01 */	cmpwi r0, 1
/* 80B22340  41 82 00 28 */	beq lbl_80B22368
/* 80B22344  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B22348  4B 62 33 B4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2234C  38 00 00 00 */	li r0, 0
/* 80B22350  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B22354  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B22358  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B2235C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B22360  38 00 00 01 */	li r0, 1
/* 80B22364  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B22368:
/* 80B22368  38 00 00 00 */	li r0, 0
/* 80B2236C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B22370  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80B22374  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B22378  7C 04 00 00 */	cmpw r4, r0
/* 80B2237C  41 82 00 1C */	beq lbl_80B22398
/* 80B22380  7F E3 FB 78 */	mr r3, r31
/* 80B22384  38 A0 FF FF */	li r5, -1
/* 80B22388  38 C0 FF FF */	li r6, -1
/* 80B2238C  38 E0 00 0F */	li r7, 0xf
/* 80B22390  39 00 00 00 */	li r8, 0
/* 80B22394  4B 62 92 B4 */	b step__8daNpcT_cFsiiii
lbl_80B22398:
/* 80B22398  A8 1F 0D C8 */	lha r0, 0xdc8(r31)
/* 80B2239C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B223A0  7F E3 FB 78 */	mr r3, r31
/* 80B223A4  38 80 00 00 */	li r4, 0
/* 80B223A8  38 A0 00 00 */	li r5, 0
/* 80B223AC  38 C0 00 00 */	li r6, 0
/* 80B223B0  38 E0 00 00 */	li r7, 0
/* 80B223B4  4B 62 98 C4 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B223B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B223BC  41 82 00 5C */	beq lbl_80B22418
/* 80B223C0  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B223C4  38 81 00 08 */	addi r4, r1, 8
/* 80B223C8  4B 72 81 60 */	b getEventId__10dMsgFlow_cFPi
/* 80B223CC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B223D0  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B223D4  41 82 00 08 */	beq lbl_80B223DC
/* 80B223D8  48 00 00 18 */	b lbl_80B223F0
lbl_80B223DC:
/* 80B223DC  38 00 00 03 */	li r0, 3
/* 80B223E0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B223E4  7F E3 FB 78 */	mr r3, r31
/* 80B223E8  4B 62 7E 3C */	b evtChange__8daNpcT_cFv
/* 80B223EC  48 00 00 2C */	b lbl_80B22418
lbl_80B223F0:
/* 80B223F0  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B223F4  28 00 00 01 */	cmplwi r0, 1
/* 80B223F8  40 82 00 20 */	bne lbl_80B22418
/* 80B223FC  3B 60 00 01 */	li r27, 1
/* 80B22400  48 00 00 18 */	b lbl_80B22418
lbl_80B22404:
/* 80B22404  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80B22408  48 00 23 21 */	bl func_80B24728
/* 80B2240C  2C 03 00 00 */	cmpwi r3, 0
/* 80B22410  40 82 00 08 */	bne lbl_80B22418
/* 80B22414  3B 60 00 01 */	li r27, 1
lbl_80B22418:
/* 80B22418  7F 63 DB 78 */	mr r3, r27
/* 80B2241C  39 61 00 80 */	addi r11, r1, 0x80
/* 80B22420  4B 83 FD EC */	b _restgpr_22
/* 80B22424  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B22428  7C 08 03 A6 */	mtlr r0
/* 80B2242C  38 21 00 80 */	addi r1, r1, 0x80
/* 80B22430  4E 80 00 20 */	blr 

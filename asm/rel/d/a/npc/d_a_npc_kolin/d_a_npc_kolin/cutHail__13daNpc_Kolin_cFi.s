lbl_80556A04:
/* 80556A04  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80556A08  7C 08 02 A6 */	mflr r0
/* 80556A0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80556A10  39 61 00 50 */	addi r11, r1, 0x50
/* 80556A14  4B E0 B7 B4 */	b _savegpr_24
/* 80556A18  7C 7A 1B 78 */	mr r26, r3
/* 80556A1C  7C 98 23 78 */	mr r24, r4
/* 80556A20  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha
/* 80556A24  3B E3 A5 B4 */	addi r31, r3, m__19daNpc_Kolin_Param_c@l
/* 80556A28  3B A0 00 00 */	li r29, 0
/* 80556A2C  3B 80 FF FF */	li r28, -1
/* 80556A30  3B 60 00 00 */	li r27, 0
/* 80556A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80556A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80556A3C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80556A40  3B 3E 40 C0 */	addi r25, r30, 0x40c0
/* 80556A44  7F 23 CB 78 */	mr r3, r25
/* 80556A48  3C A0 80 56 */	lis r5, struct_8055A77C+0x0@ha
/* 80556A4C  38 A5 A7 7C */	addi r5, r5, struct_8055A77C+0x0@l
/* 80556A50  38 A5 01 39 */	addi r5, r5, 0x139
/* 80556A54  38 C0 00 03 */	li r6, 3
/* 80556A58  4B AF 16 94 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80556A5C  28 03 00 00 */	cmplwi r3, 0
/* 80556A60  41 82 00 08 */	beq lbl_80556A68
/* 80556A64  83 83 00 00 */	lwz r28, 0(r3)
lbl_80556A68:
/* 80556A68  7F 23 CB 78 */	mr r3, r25
/* 80556A6C  7F 04 C3 78 */	mr r4, r24
/* 80556A70  3C A0 80 56 */	lis r5, struct_8055A77C+0x0@ha
/* 80556A74  38 A5 A7 7C */	addi r5, r5, struct_8055A77C+0x0@l
/* 80556A78  38 A5 01 3D */	addi r5, r5, 0x13d
/* 80556A7C  38 C0 00 03 */	li r6, 3
/* 80556A80  4B AF 16 6C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80556A84  28 03 00 00 */	cmplwi r3, 0
/* 80556A88  41 82 00 08 */	beq lbl_80556A90
/* 80556A8C  83 63 00 00 */	lwz r27, 0(r3)
lbl_80556A90:
/* 80556A90  7F 23 CB 78 */	mr r3, r25
/* 80556A94  7F 04 C3 78 */	mr r4, r24
/* 80556A98  4B AF 12 B4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80556A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80556AA0  41 82 01 7C */	beq lbl_80556C1C
/* 80556AA4  2C 1C 00 00 */	cmpwi r28, 0
/* 80556AA8  41 82 00 0C */	beq lbl_80556AB4
/* 80556AAC  41 80 01 70 */	blt lbl_80556C1C
/* 80556AB0  48 00 01 6C */	b lbl_80556C1C
lbl_80556AB4:
/* 80556AB4  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80556AB8  2C 00 00 0D */	cmpwi r0, 0xd
/* 80556ABC  41 82 00 24 */	beq lbl_80556AE0
/* 80556AC0  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80556AC4  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80556AC8  4B BE ED D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80556ACC  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80556AD0  38 00 00 0D */	li r0, 0xd
/* 80556AD4  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80556AD8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556ADC  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80556AE0:
/* 80556AE0  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80556AE4  2C 00 00 02 */	cmpwi r0, 2
/* 80556AE8  41 82 00 24 */	beq lbl_80556B0C
/* 80556AEC  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80556AF0  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80556AF4  4B BE ED A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80556AF8  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80556AFC  38 00 00 02 */	li r0, 2
/* 80556B00  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80556B04  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556B08  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80556B0C:
/* 80556B0C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80556B10  2C 00 00 00 */	cmpwi r0, 0
/* 80556B14  41 82 00 24 */	beq lbl_80556B38
/* 80556B18  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80556B1C  4B BE EB E0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80556B20  38 00 00 00 */	li r0, 0
/* 80556B24  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80556B28  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556B2C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80556B30  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80556B34  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80556B38:
/* 80556B38  38 00 00 00 */	li r0, 0
/* 80556B3C  B0 1A 0C D4 */	sth r0, 0xcd4(r26)
/* 80556B40  B0 1A 0C D6 */	sth r0, 0xcd6(r26)
/* 80556B44  38 00 00 01 */	li r0, 1
/* 80556B48  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80556B4C  7F 43 D3 78 */	mr r3, r26
/* 80556B50  80 9A 0A 7C */	lwz r4, 0xa7c(r26)
/* 80556B54  38 A0 00 00 */	li r5, 0
/* 80556B58  4B BF 50 98 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80556B5C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556B60  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80556B64  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 80556B68  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80556B6C  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 80556B70  7F 43 D3 78 */	mr r3, r26
/* 80556B74  38 80 EE 39 */	li r4, -4551
/* 80556B78  4B BF 3E A0 */	b setAngle__8daNpcT_cFs
/* 80556B7C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556B80  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80556B84  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80556B88  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80556B8C  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 80556B90  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80556B94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80556B98  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80556B9C  80 79 5D AC */	lwz r3, 0x5dac(r25)
/* 80556BA0  7F 44 D3 78 */	mr r4, r26
/* 80556BA4  4B AC 3B 6C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80556BA8  7C 78 1B 78 */	mr r24, r3
/* 80556BAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80556BB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80556BB4  A8 9A 0D 7A */	lha r4, 0xd7a(r26)
/* 80556BB8  4B AB 58 24 */	b mDoMtx_YrotS__FPA4_fs
/* 80556BBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80556BC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80556BC4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80556BC8  7C 85 23 78 */	mr r5, r4
/* 80556BCC  4B DF 01 A0 */	b PSMTXMultVec
/* 80556BD0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80556BD4  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80556BD8  7C 65 1B 78 */	mr r5, r3
/* 80556BDC  4B DF 04 B4 */	b PSVECAdd
/* 80556BE0  38 7A 09 30 */	addi r3, r26, 0x930
/* 80556BE4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80556BE8  4B D1 11 40 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80556BEC  7F C3 F3 78 */	mr r3, r30
/* 80556BF0  38 9A 09 30 */	addi r4, r26, 0x930
/* 80556BF4  4B B1 D8 AC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80556BF8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80556BFC  80 79 5D AC */	lwz r3, 0x5dac(r25)
/* 80556C00  38 81 00 1C */	addi r4, r1, 0x1c
/* 80556C04  7F 05 C3 78 */	mr r5, r24
/* 80556C08  38 C0 00 00 */	li r6, 0
/* 80556C0C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80556C10  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80556C14  7D 89 03 A6 */	mtctr r12
/* 80556C18  4E 80 04 21 */	bctrl 
lbl_80556C1C:
/* 80556C1C  80 7F 01 64 */	lwz r3, 0x164(r31)
/* 80556C20  80 1F 01 68 */	lwz r0, 0x168(r31)
/* 80556C24  90 61 00 08 */	stw r3, 8(r1)
/* 80556C28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80556C2C  2C 1C 00 03 */	cmpwi r28, 3
/* 80556C30  40 80 01 68 */	bge lbl_80556D98
/* 80556C34  2C 1C 00 00 */	cmpwi r28, 0
/* 80556C38  40 80 00 08 */	bge lbl_80556C40
/* 80556C3C  48 00 01 5C */	b lbl_80556D98
lbl_80556C40:
/* 80556C40  2C 1C 00 01 */	cmpwi r28, 1
/* 80556C44  40 82 00 D4 */	bne lbl_80556D18
/* 80556C48  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80556C4C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80556C50  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80556C54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80556C58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80556C5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80556C60  A8 9A 0D 7A */	lha r4, 0xd7a(r26)
/* 80556C64  4B AB 57 78 */	b mDoMtx_YrotS__FPA4_fs
/* 80556C68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80556C6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80556C70  38 81 00 1C */	addi r4, r1, 0x1c
/* 80556C74  7C 85 23 78 */	mr r5, r4
/* 80556C78  4B DF 00 F4 */	b PSMTXMultVec
/* 80556C7C  38 61 00 10 */	addi r3, r1, 0x10
/* 80556C80  38 9A 05 50 */	addi r4, r26, 0x550
/* 80556C84  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80556C88  4B D0 FE 5C */	b __pl__4cXyzCFRC3Vec
/* 80556C8C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80556C90  D0 1A 0D 6C */	stfs f0, 0xd6c(r26)
/* 80556C94  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80556C98  D0 1A 0D 70 */	stfs f0, 0xd70(r26)
/* 80556C9C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80556CA0  D0 1A 0D 74 */	stfs f0, 0xd74(r26)
/* 80556CA4  80 7A 0B C8 */	lwz r3, 0xbc8(r26)
/* 80556CA8  38 1A 0D 6C */	addi r0, r26, 0xd6c
/* 80556CAC  7C 63 00 50 */	subf r3, r3, r0
/* 80556CB0  30 03 FF FF */	addic r0, r3, -1
/* 80556CB4  7C 00 19 10 */	subfe r0, r0, r3
/* 80556CB8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80556CBC  40 82 00 10 */	bne lbl_80556CCC
/* 80556CC0  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80556CC4  2C 00 00 03 */	cmpwi r0, 3
/* 80556CC8  41 82 00 30 */	beq lbl_80556CF8
lbl_80556CCC:
/* 80556CCC  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80556CD0  4B BE EA 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 80556CD4  38 00 00 00 */	li r0, 0
/* 80556CD8  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80556CDC  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556CE0  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80556CE4  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80556CE8  38 00 00 03 */	li r0, 3
/* 80556CEC  90 1A 0C E0 */	stw r0, 0xce0(r26)
/* 80556CF0  38 00 00 01 */	li r0, 1
/* 80556CF4  48 00 00 08 */	b lbl_80556CFC
lbl_80556CF8:
/* 80556CF8  38 00 00 00 */	li r0, 0
lbl_80556CFC:
/* 80556CFC  2C 00 00 00 */	cmpwi r0, 0
/* 80556D00  41 82 00 0C */	beq lbl_80556D0C
/* 80556D04  38 1A 0D 6C */	addi r0, r26, 0xd6c
/* 80556D08  90 1A 0B C8 */	stw r0, 0xbc8(r26)
lbl_80556D0C:
/* 80556D0C  38 00 00 00 */	li r0, 0
/* 80556D10  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80556D14  48 00 00 38 */	b lbl_80556D4C
lbl_80556D18:
/* 80556D18  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80556D1C  2C 00 00 00 */	cmpwi r0, 0
/* 80556D20  41 82 00 24 */	beq lbl_80556D44
/* 80556D24  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80556D28  4B BE E9 D4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80556D2C  38 00 00 00 */	li r0, 0
/* 80556D30  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80556D34  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556D38  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80556D3C  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80556D40  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80556D44:
/* 80556D44  38 00 00 00 */	li r0, 0
/* 80556D48  98 1A 0C FF */	stb r0, 0xcff(r26)
lbl_80556D4C:
/* 80556D4C  93 61 00 08 */	stw r27, 8(r1)
/* 80556D50  7F 43 D3 78 */	mr r3, r26
/* 80556D54  38 81 00 08 */	addi r4, r1, 8
/* 80556D58  38 A0 00 00 */	li r5, 0
/* 80556D5C  38 C0 00 00 */	li r6, 0
/* 80556D60  38 E0 00 00 */	li r7, 0
/* 80556D64  4B BF 4F 14 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80556D68  2C 03 00 00 */	cmpwi r3, 0
/* 80556D6C  41 82 00 24 */	beq lbl_80556D90
/* 80556D70  2C 1B 00 00 */	cmpwi r27, 0
/* 80556D74  40 82 00 18 */	bne lbl_80556D8C
/* 80556D78  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80556D7C  28 00 00 01 */	cmplwi r0, 1
/* 80556D80  40 82 00 10 */	bne lbl_80556D90
/* 80556D84  3B A0 00 01 */	li r29, 1
/* 80556D88  48 00 00 08 */	b lbl_80556D90
lbl_80556D8C:
/* 80556D8C  3B A0 00 01 */	li r29, 1
lbl_80556D90:
/* 80556D90  38 00 00 00 */	li r0, 0
/* 80556D94  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
lbl_80556D98:
/* 80556D98  7F A3 EB 78 */	mr r3, r29
/* 80556D9C  39 61 00 50 */	addi r11, r1, 0x50
/* 80556DA0  4B E0 B4 74 */	b _restgpr_24
/* 80556DA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80556DA8  7C 08 03 A6 */	mtlr r0
/* 80556DAC  38 21 00 50 */	addi r1, r1, 0x50
/* 80556DB0  4E 80 00 20 */	blr 

lbl_8056D0B8:
/* 8056D0B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8056D0BC  7C 08 02 A6 */	mflr r0
/* 8056D0C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8056D0C4  39 61 00 30 */	addi r11, r1, 0x30
/* 8056D0C8  4B DF 51 04 */	b _savegpr_25
/* 8056D0CC  7C 7D 1B 78 */	mr r29, r3
/* 8056D0D0  7C 99 23 78 */	mr r25, r4
/* 8056D0D4  3B E0 00 00 */	li r31, 0
/* 8056D0D8  3B C0 FF FF */	li r30, -1
/* 8056D0DC  3B 60 00 00 */	li r27, 0
/* 8056D0E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056D0E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056D0E8  3B 43 4F F8 */	addi r26, r3, 0x4ff8
/* 8056D0EC  7F 43 D3 78 */	mr r3, r26
/* 8056D0F0  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 8056D0F4  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 8056D0F8  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056D0FC  38 C0 00 03 */	li r6, 3
/* 8056D100  4B AD AF EC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056D104  28 03 00 00 */	cmplwi r3, 0
/* 8056D108  41 82 00 08 */	beq lbl_8056D110
/* 8056D10C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_8056D110:
/* 8056D110  7F 43 D3 78 */	mr r3, r26
/* 8056D114  7F 24 CB 78 */	mr r4, r25
/* 8056D118  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 8056D11C  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 8056D120  38 A5 02 A0 */	addi r5, r5, 0x2a0
/* 8056D124  38 C0 00 03 */	li r6, 3
/* 8056D128  4B AD AF C4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056D12C  28 03 00 00 */	cmplwi r3, 0
/* 8056D130  41 82 00 08 */	beq lbl_8056D138
/* 8056D134  83 63 00 00 */	lwz r27, 0(r3)
lbl_8056D138:
/* 8056D138  7F 43 D3 78 */	mr r3, r26
/* 8056D13C  7F 24 CB 78 */	mr r4, r25
/* 8056D140  4B AD AC 0C */	b getIsAddvance__16dEvent_manager_cFi
/* 8056D144  2C 03 00 00 */	cmpwi r3, 0
/* 8056D148  41 82 01 38 */	beq lbl_8056D280
/* 8056D14C  2C 1E 00 02 */	cmpwi r30, 2
/* 8056D150  41 82 01 18 */	beq lbl_8056D268
/* 8056D154  40 80 00 14 */	bge lbl_8056D168
/* 8056D158  2C 1E 00 00 */	cmpwi r30, 0
/* 8056D15C  41 82 00 18 */	beq lbl_8056D174
/* 8056D160  40 80 00 A0 */	bge lbl_8056D200
/* 8056D164  48 00 01 1C */	b lbl_8056D280
lbl_8056D168:
/* 8056D168  2C 1E 00 04 */	cmpwi r30, 4
/* 8056D16C  40 80 01 14 */	bge lbl_8056D280
/* 8056D170  48 00 01 00 */	b lbl_8056D270
lbl_8056D174:
/* 8056D174  38 60 00 0B */	li r3, 0xb
/* 8056D178  4B BD F9 B4 */	b daNpcT_offTmpBit__FUl
/* 8056D17C  83 5D 0B 5C */	lwz r26, 0xb5c(r29)
/* 8056D180  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8056D184  4B BD 87 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056D188  93 5D 0B 5C */	stw r26, 0xb5c(r29)
/* 8056D18C  38 00 00 1F */	li r0, 0x1f
/* 8056D190  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8056D194  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056D198  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056D19C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
/* 8056D1A0  83 5D 0B 80 */	lwz r26, 0xb80(r29)
/* 8056D1A4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8056D1A8  4B BD 86 F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056D1AC  93 5D 0B 80 */	stw r26, 0xb80(r29)
/* 8056D1B0  38 00 00 05 */	li r0, 5
/* 8056D1B4  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8056D1B8  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056D1BC  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056D1C0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 8056D1C4  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8056D1C8  2C 00 00 00 */	cmpwi r0, 0
/* 8056D1CC  41 82 00 28 */	beq lbl_8056D1F4
/* 8056D1D0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8056D1D4  4B BD 85 28 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056D1D8  38 00 00 00 */	li r0, 0
/* 8056D1DC  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8056D1E0  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056D1E4  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056D1E8  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8056D1EC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8056D1F0  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8056D1F4:
/* 8056D1F4  38 00 00 00 */	li r0, 0
/* 8056D1F8  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8056D1FC  48 00 00 84 */	b lbl_8056D280
lbl_8056D200:
/* 8056D200  38 00 00 00 */	li r0, 0
/* 8056D204  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 8056D208  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)
/* 8056D20C  3C 60 80 56 */	lis r3, srchNpc__12daNpc_Taro_cFPvPv@ha
/* 8056D210  38 63 6B 0C */	addi r3, r3, srchNpc__12daNpc_Taro_cFPvPv@l
/* 8056D214  7F A4 EB 78 */	mr r4, r29
/* 8056D218  4B AA C5 E0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8056D21C  3B 20 00 00 */	li r25, 0
/* 8056D220  3B 80 00 00 */	li r28, 0
/* 8056D224  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 8056D228  3B 43 57 08 */	addi r26, r3, mFindActorPtrs__8daNpcT_c@l
/* 8056D22C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 8056D230  3B 63 0F DC */	addi r27, r3, mFindCount__8daNpcT_c@l
/* 8056D234  48 00 00 1C */	b lbl_8056D250
lbl_8056D238:
/* 8056D238  7C 7A E0 2E */	lwzx r3, r26, r28
/* 8056D23C  7C 03 E8 40 */	cmplw r3, r29
/* 8056D240  41 82 00 08 */	beq lbl_8056D248
/* 8056D244  4B AA CA 38 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8056D248:
/* 8056D248  3B 39 00 01 */	addi r25, r25, 1
/* 8056D24C  3B 9C 00 04 */	addi r28, r28, 4
lbl_8056D250:
/* 8056D250  80 1B 00 00 */	lwz r0, 0(r27)
/* 8056D254  7C 19 00 00 */	cmpw r25, r0
/* 8056D258  41 80 FF E0 */	blt lbl_8056D238
/* 8056D25C  38 00 00 01 */	li r0, 1
/* 8056D260  98 1D 0E 25 */	stb r0, 0xe25(r29)
/* 8056D264  48 00 00 1C */	b lbl_8056D280
lbl_8056D268:
/* 8056D268  93 7D 0D C4 */	stw r27, 0xdc4(r29)
/* 8056D26C  48 00 00 14 */	b lbl_8056D280
lbl_8056D270:
/* 8056D270  7F A3 EB 78 */	mr r3, r29
/* 8056D274  38 80 00 24 */	li r4, 0x24
/* 8056D278  38 A0 00 00 */	li r5, 0
/* 8056D27C  4B BD E9 74 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_8056D280:
/* 8056D280  2C 1E 00 02 */	cmpwi r30, 2
/* 8056D284  41 82 00 28 */	beq lbl_8056D2AC
/* 8056D288  40 80 00 10 */	bge lbl_8056D298
/* 8056D28C  2C 1E 00 00 */	cmpwi r30, 0
/* 8056D290  40 80 00 14 */	bge lbl_8056D2A4
/* 8056D294  48 00 00 60 */	b lbl_8056D2F4
lbl_8056D298:
/* 8056D298  2C 1E 00 04 */	cmpwi r30, 4
/* 8056D29C  40 80 00 58 */	bge lbl_8056D2F4
/* 8056D2A0  48 00 00 24 */	b lbl_8056D2C4
lbl_8056D2A4:
/* 8056D2A4  3B E0 00 01 */	li r31, 1
/* 8056D2A8  48 00 00 4C */	b lbl_8056D2F4
lbl_8056D2AC:
/* 8056D2AC  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8056D2B0  48 00 3F 59 */	bl func_80571208
/* 8056D2B4  2C 03 00 00 */	cmpwi r3, 0
/* 8056D2B8  40 82 00 3C */	bne lbl_8056D2F4
/* 8056D2BC  3B E0 00 01 */	li r31, 1
/* 8056D2C0  48 00 00 34 */	b lbl_8056D2F4
lbl_8056D2C4:
/* 8056D2C4  7F A3 EB 78 */	mr r3, r29
/* 8056D2C8  38 80 00 00 */	li r4, 0
/* 8056D2CC  38 A0 00 00 */	li r5, 0
/* 8056D2D0  38 C0 00 00 */	li r6, 0
/* 8056D2D4  38 E0 00 00 */	li r7, 0
/* 8056D2D8  4B BD E9 A0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056D2DC  2C 03 00 00 */	cmpwi r3, 0
/* 8056D2E0  41 82 00 14 */	beq lbl_8056D2F4
/* 8056D2E4  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 8056D2E8  28 00 00 01 */	cmplwi r0, 1
/* 8056D2EC  40 82 00 08 */	bne lbl_8056D2F4
/* 8056D2F0  3B E0 00 01 */	li r31, 1
lbl_8056D2F4:
/* 8056D2F4  7F E3 FB 78 */	mr r3, r31
/* 8056D2F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8056D2FC  4B DF 4F 1C */	b _restgpr_25
/* 8056D300  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8056D304  7C 08 03 A6 */	mtlr r0
/* 8056D308  38 21 00 30 */	addi r1, r1, 0x30
/* 8056D30C  4E 80 00 20 */	blr 

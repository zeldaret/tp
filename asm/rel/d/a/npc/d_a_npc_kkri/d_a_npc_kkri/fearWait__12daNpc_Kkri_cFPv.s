lbl_80551A4C:
/* 80551A4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80551A50  7C 08 02 A6 */	mflr r0
/* 80551A54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80551A58  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80551A5C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80551A60  39 61 00 30 */	addi r11, r1, 0x30
/* 80551A64  4B E1 07 69 */	bl _savegpr_25
/* 80551A68  7C 7C 1B 78 */	mr r28, r3
/* 80551A6C  3C 60 80 55 */	lis r3, m__18daNpc_Kkri_Param_c@ha /* 0x80553490@ha */
/* 80551A70  3B E3 34 90 */	addi r31, r3, m__18daNpc_Kkri_Param_c@l /* 0x80553490@l */
/* 80551A74  3B C0 00 00 */	li r30, 0
/* 80551A78  C3 FF 01 10 */	lfs f31, 0x110(r31)
/* 80551A7C  A0 1C 0E 22 */	lhz r0, 0xe22(r28)
/* 80551A80  2C 00 00 02 */	cmpwi r0, 2
/* 80551A84  41 82 00 78 */	beq lbl_80551AFC
/* 80551A88  40 80 02 F8 */	bge lbl_80551D80
/* 80551A8C  2C 00 00 00 */	cmpwi r0, 0
/* 80551A90  40 80 00 0C */	bge lbl_80551A9C
/* 80551A94  48 00 02 EC */	b lbl_80551D80
/* 80551A98  48 00 02 E8 */	b lbl_80551D80
lbl_80551A9C:
/* 80551A9C  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80551AA0  2C 00 00 02 */	cmpwi r0, 2
/* 80551AA4  41 82 00 24 */	beq lbl_80551AC8
/* 80551AA8  83 5C 0B 5C */	lwz r26, 0xb5c(r28)
/* 80551AAC  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80551AB0  4B BF 3D E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80551AB4  93 5C 0B 5C */	stw r26, 0xb5c(r28)
/* 80551AB8  38 00 00 02 */	li r0, 2
/* 80551ABC  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80551AC0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80551AC4  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80551AC8:
/* 80551AC8  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80551ACC  2C 00 00 03 */	cmpwi r0, 3
/* 80551AD0  41 82 00 24 */	beq lbl_80551AF4
/* 80551AD4  83 5C 0B 80 */	lwz r26, 0xb80(r28)
/* 80551AD8  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80551ADC  4B BF 3D BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80551AE0  93 5C 0B 80 */	stw r26, 0xb80(r28)
/* 80551AE4  38 00 00 03 */	li r0, 3
/* 80551AE8  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80551AEC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80551AF0  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80551AF4:
/* 80551AF4  38 00 00 02 */	li r0, 2
/* 80551AF8  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80551AFC:
/* 80551AFC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80551B00  2C 00 00 00 */	cmpwi r0, 0
/* 80551B04  41 82 00 24 */	beq lbl_80551B28
/* 80551B08  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80551B0C  4B BF 3B F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80551B10  38 00 00 00 */	li r0, 0
/* 80551B14  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80551B18  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80551B1C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80551B20  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80551B24  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80551B28:
/* 80551B28  38 00 00 00 */	li r0, 0
/* 80551B2C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80551B30  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80551B34  54 04 46 3E */	srwi r4, r0, 0x18
/* 80551B38  28 04 00 FF */	cmplwi r4, 0xff
/* 80551B3C  41 82 02 44 */	beq lbl_80551D80
/* 80551B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80551B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80551B48  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80551B4C  7C 05 07 74 */	extsb r5, r0
/* 80551B50  4B AE 38 11 */	bl isSwitch__10dSv_info_cCFii
/* 80551B54  2C 03 00 00 */	cmpwi r3, 0
/* 80551B58  41 82 00 3C */	beq lbl_80551B94
/* 80551B5C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80551B60  2C 00 00 0C */	cmpwi r0, 0xc
/* 80551B64  41 82 00 24 */	beq lbl_80551B88
/* 80551B68  83 5C 0B 80 */	lwz r26, 0xb80(r28)
/* 80551B6C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80551B70  4B BF 3D 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80551B74  93 5C 0B 80 */	stw r26, 0xb80(r28)
/* 80551B78  38 00 00 0C */	li r0, 0xc
/* 80551B7C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80551B80  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80551B84  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80551B88:
/* 80551B88  38 00 00 00 */	li r0, 0
/* 80551B8C  98 1C 0F D4 */	stb r0, 0xfd4(r28)
/* 80551B90  48 00 01 F0 */	b lbl_80551D80
lbl_80551B94:
/* 80551B94  88 1C 0F D7 */	lbz r0, 0xfd7(r28)
/* 80551B98  28 00 00 00 */	cmplwi r0, 0
/* 80551B9C  41 82 00 14 */	beq lbl_80551BB0
/* 80551BA0  38 00 00 01 */	li r0, 1
/* 80551BA4  98 1C 0E 32 */	stb r0, 0xe32(r28)
/* 80551BA8  98 1C 0E 33 */	stb r0, 0xe33(r28)
/* 80551BAC  48 00 01 D4 */	b lbl_80551D80
lbl_80551BB0:
/* 80551BB0  38 00 00 00 */	li r0, 0
/* 80551BB4  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80551BB8  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80551BBC  3C 60 80 55 */	lis r3, srchYm__12daNpc_Kkri_cFPvPv@ha /* 0x8054FD78@ha */
/* 80551BC0  38 63 FD 78 */	addi r3, r3, srchYm__12daNpc_Kkri_cFPvPv@l /* 0x8054FD78@l */
/* 80551BC4  7F 84 E3 78 */	mr r4, r28
/* 80551BC8  4B AC 7C 31 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80551BCC  3B A0 00 00 */	li r29, 0
/* 80551BD0  38 60 00 00 */	li r3, 0
/* 80551BD4  3C 80 80 45 */	lis r4, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80551BD8  80 C4 0F DC */	lwz r6, mFindCount__8daNpcT_c@l(r4)  /* 0x80450FDC@l */
/* 80551BDC  3C 80 80 42 */	lis r4, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80551BE0  38 A4 57 08 */	addi r5, r4, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80551BE4  7C C9 03 A6 */	mtctr r6
/* 80551BE8  2C 06 00 00 */	cmpwi r6, 0
/* 80551BEC  40 81 00 20 */	ble lbl_80551C0C
lbl_80551BF0:
/* 80551BF0  7C 85 18 2E */	lwzx r4, r5, r3
/* 80551BF4  A8 04 05 62 */	lha r0, 0x562(r4)
/* 80551BF8  2C 00 00 00 */	cmpwi r0, 0
/* 80551BFC  40 81 00 08 */	ble lbl_80551C04
/* 80551C00  3B BD 00 01 */	addi r29, r29, 1
lbl_80551C04:
/* 80551C04  38 63 00 04 */	addi r3, r3, 4
/* 80551C08  42 00 FF E8 */	bdnz lbl_80551BF0
lbl_80551C0C:
/* 80551C0C  2C 06 00 00 */	cmpwi r6, 0
/* 80551C10  41 82 00 7C */	beq lbl_80551C8C
/* 80551C14  2C 1D 00 00 */	cmpwi r29, 0
/* 80551C18  40 82 00 74 */	bne lbl_80551C8C
/* 80551C1C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80551C20  2C 00 00 0B */	cmpwi r0, 0xb
/* 80551C24  41 82 00 24 */	beq lbl_80551C48
/* 80551C28  83 5C 0B 80 */	lwz r26, 0xb80(r28)
/* 80551C2C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80551C30  4B BF 3C 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80551C34  93 5C 0B 80 */	stw r26, 0xb80(r28)
/* 80551C38  38 00 00 0B */	li r0, 0xb
/* 80551C3C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80551C40  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80551C44  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80551C48:
/* 80551C48  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80551C4C  2C 00 00 00 */	cmpwi r0, 0
/* 80551C50  41 82 00 24 */	beq lbl_80551C74
/* 80551C54  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80551C58  4B BF 3A A5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80551C5C  38 00 00 00 */	li r0, 0
/* 80551C60  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80551C64  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80551C68  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80551C6C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80551C70  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80551C74:
/* 80551C74  38 00 00 00 */	li r0, 0
/* 80551C78  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80551C7C  38 00 00 01 */	li r0, 1
/* 80551C80  98 1C 0F D4 */	stb r0, 0xfd4(r28)
/* 80551C84  38 00 00 04 */	li r0, 4
/* 80551C88  B0 1C 0E 30 */	sth r0, 0xe30(r28)
lbl_80551C8C:
/* 80551C8C  2C 1D 00 00 */	cmpwi r29, 0
/* 80551C90  41 82 00 F0 */	beq lbl_80551D80
/* 80551C94  3B 20 00 00 */	li r25, 0
/* 80551C98  3B A0 00 00 */	li r29, 0
/* 80551C9C  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80551CA0  3B 43 57 08 */	addi r26, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80551CA4  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80551CA8  3B 63 0F DC */	addi r27, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80551CAC  48 00 00 34 */	b lbl_80551CE0
lbl_80551CB0:
/* 80551CB0  7F 83 E3 78 */	mr r3, r28
/* 80551CB4  7C 9A E8 2E */	lwzx r4, r26, r29
/* 80551CB8  4B AC 8B 29 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80551CBC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80551CC0  40 80 00 18 */	bge lbl_80551CD8
/* 80551CC4  7F DA E8 2E */	lwzx r30, r26, r29
/* 80551CC8  7F 83 E3 78 */	mr r3, r28
/* 80551CCC  7F C4 F3 78 */	mr r4, r30
/* 80551CD0  4B AC 8B 11 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80551CD4  FF E0 08 90 */	fmr f31, f1
lbl_80551CD8:
/* 80551CD8  3B 39 00 01 */	addi r25, r25, 1
/* 80551CDC  3B BD 00 04 */	addi r29, r29, 4
lbl_80551CE0:
/* 80551CE0  80 1B 00 00 */	lwz r0, 0(r27)
/* 80551CE4  7C 19 00 00 */	cmpw r25, r0
/* 80551CE8  41 80 FF C8 */	blt lbl_80551CB0
/* 80551CEC  28 1E 00 00 */	cmplwi r30, 0
/* 80551CF0  41 82 00 90 */	beq lbl_80551D80
/* 80551CF4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80551CF8  4B BF 3A 11 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80551CFC  7C 63 F0 50 */	subf r3, r3, r30
/* 80551D00  30 03 FF FF */	addic r0, r3, -1
/* 80551D04  7C 00 19 10 */	subfe r0, r0, r3
/* 80551D08  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80551D0C  40 82 00 10 */	bne lbl_80551D1C
/* 80551D10  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80551D14  2C 00 00 02 */	cmpwi r0, 2
/* 80551D18  41 82 00 30 */	beq lbl_80551D48
lbl_80551D1C:
/* 80551D1C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80551D20  4B BF 39 DD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80551D24  38 00 00 00 */	li r0, 0
/* 80551D28  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80551D2C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80551D30  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80551D34  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80551D38  38 00 00 02 */	li r0, 2
/* 80551D3C  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80551D40  38 00 00 01 */	li r0, 1
/* 80551D44  48 00 00 08 */	b lbl_80551D4C
lbl_80551D48:
/* 80551D48  38 00 00 00 */	li r0, 0
lbl_80551D4C:
/* 80551D4C  2C 00 00 00 */	cmpwi r0, 0
/* 80551D50  41 82 00 28 */	beq lbl_80551D78
/* 80551D54  7F C3 F3 78 */	mr r3, r30
/* 80551D58  4B AC 6F 89 */	bl fopAc_IsActor__FPv
/* 80551D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80551D60  41 82 00 18 */	beq lbl_80551D78
/* 80551D64  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80551D68  7F C4 F3 78 */	mr r4, r30
/* 80551D6C  4B BF 39 75 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80551D70  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80551D74  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
lbl_80551D78:
/* 80551D78  38 00 00 00 */	li r0, 0
/* 80551D7C  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_80551D80:
/* 80551D80  38 60 00 01 */	li r3, 1
/* 80551D84  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80551D88  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80551D8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80551D90  4B E1 04 89 */	bl _restgpr_25
/* 80551D94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80551D98  7C 08 03 A6 */	mtlr r0
/* 80551D9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80551DA0  4E 80 00 20 */	blr 

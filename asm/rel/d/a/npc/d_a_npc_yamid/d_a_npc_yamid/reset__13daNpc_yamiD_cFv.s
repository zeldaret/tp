lbl_80B43A20:
/* 80B43A20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B43A24  7C 08 02 A6 */	mflr r0
/* 80B43A28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B43A2C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B43A30  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B43A34  7C 7F 1B 78 */	mr r31, r3
/* 80B43A38  3C 60 80 B4 */	lis r3, m__19daNpc_yamiD_Param_c@ha
/* 80B43A3C  3B C3 60 4C */	addi r30, r3, m__19daNpc_yamiD_Param_c@l
/* 80B43A40  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B43A44  38 80 00 00 */	li r4, 0
/* 80B43A48  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B43A4C  7C A3 00 50 */	subf r5, r3, r0
/* 80B43A50  4B 4B FA 08 */	b memset
/* 80B43A54  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B43A58  4B 60 1E 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B43A5C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B43A60  4B 60 1E 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B43A64  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B43A68  4B 60 1C 6C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B43A6C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B43A70  4B 60 1C 64 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B43A74  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B43A78  4B 60 32 20 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B43A7C  38 A0 00 00 */	li r5, 0
/* 80B43A80  38 60 00 00 */	li r3, 0
/* 80B43A84  7C A4 2B 78 */	mr r4, r5
/* 80B43A88  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B43A8C  38 00 00 02 */	li r0, 2
/* 80B43A90  7C 09 03 A6 */	mtctr r0
lbl_80B43A94:
/* 80B43A94  7C DF 22 14 */	add r6, r31, r4
/* 80B43A98  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B43A9C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B43AA0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B43AA4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B43AA8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B43AAC  38 63 00 04 */	addi r3, r3, 4
/* 80B43AB0  38 84 00 06 */	addi r4, r4, 6
/* 80B43AB4  42 00 FF E0 */	bdnz lbl_80B43A94
/* 80B43AB8  38 00 00 00 */	li r0, 0
/* 80B43ABC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B43AC0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B43AC4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B43AC8  38 00 FF FF */	li r0, -1
/* 80B43ACC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B43AD0  38 00 00 01 */	li r0, 1
/* 80B43AD4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B43AD8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80B43ADC  4B 72 3E 78 */	b cM_rndF__Ff
/* 80B43AE0  FC 00 08 1E */	fctiwz f0, f1
/* 80B43AE4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B43AE8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B43AEC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B43AF0  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80B43AF4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B43AF8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B43AFC  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B43B00  38 80 00 00 */	li r4, 0
/* 80B43B04  38 1F 0F C4 */	addi r0, r31, 0xfc4
/* 80B43B08  7C A3 00 50 */	subf r5, r3, r0
/* 80B43B0C  4B 4B F9 4C */	b memset
/* 80B43B10  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80B43B14  28 03 00 00 */	cmplwi r3, 0
/* 80B43B18  41 82 00 08 */	beq lbl_80B43B20
/* 80B43B1C  4B 60 1C 48 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B43B20:
/* 80B43B20  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B43B24  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B43B28  28 00 00 FF */	cmplwi r0, 0xff
/* 80B43B2C  41 82 00 28 */	beq lbl_80B43B54
/* 80B43B30  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B43B34  4B 60 21 0C */	b initialize__13daNpcT_Path_cFv
/* 80B43B38  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B43B3C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B43B40  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B43B44  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B43B48  7C 05 07 74 */	extsb r5, r0
/* 80B43B4C  38 C0 00 00 */	li r6, 0
/* 80B43B50  4B 60 21 24 */	b setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80B43B54:
/* 80B43B54  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B43B58  54 03 27 3E */	srwi r3, r0, 0x1c
/* 80B43B5C  30 03 FF FF */	addic r0, r3, -1
/* 80B43B60  7C 00 19 10 */	subfe r0, r0, r3
/* 80B43B64  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B43B68  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B43B6C  40 82 00 08 */	bne lbl_80B43B74
/* 80B43B70  38 00 00 00 */	li r0, 0
lbl_80B43B74:
/* 80B43B74  2C 00 00 00 */	cmpwi r0, 0
/* 80B43B78  41 82 00 28 */	beq lbl_80B43BA0
/* 80B43B7C  38 00 00 01 */	li r0, 1
/* 80B43B80  98 1F 0F 81 */	stb r0, 0xf81(r31)
/* 80B43B84  80 1F 0E 70 */	lwz r0, 0xe70(r31)
/* 80B43B88  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B43B8C  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B43B90  80 1F 0E 5C */	lwz r0, 0xe5c(r31)
/* 80B43B94  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B43B98  90 1F 0E 5C */	stw r0, 0xe5c(r31)
/* 80B43B9C  48 00 00 24 */	b lbl_80B43BC0
lbl_80B43BA0:
/* 80B43BA0  38 00 00 00 */	li r0, 0
/* 80B43BA4  98 1F 0F 81 */	stb r0, 0xf81(r31)
/* 80B43BA8  80 1F 0E 70 */	lwz r0, 0xe70(r31)
/* 80B43BAC  60 00 00 01 */	ori r0, r0, 1
/* 80B43BB0  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B43BB4  80 1F 0E 5C */	lwz r0, 0xe5c(r31)
/* 80B43BB8  60 00 00 01 */	ori r0, r0, 1
/* 80B43BBC  90 1F 0E 5C */	stw r0, 0xe5c(r31)
lbl_80B43BC0:
/* 80B43BC0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B43BC4  28 00 00 01 */	cmplwi r0, 1
/* 80B43BC8  40 82 00 1C */	bne lbl_80B43BE4
/* 80B43BCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B43BD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B43BD4  38 80 00 03 */	li r4, 3
/* 80B43BD8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B43BDC  7C 05 07 74 */	extsb r5, r0
/* 80B43BE0  4B 4F 16 D0 */	b offSwitch__10dSv_info_cFii
lbl_80B43BE4:
/* 80B43BE4  7F E3 FB 78 */	mr r3, r31
/* 80B43BE8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B43BEC  4B 60 6E 2C */	b setAngle__8daNpcT_cFs
/* 80B43BF0  3C 60 80 B4 */	lis r3, lit_4472@ha
/* 80B43BF4  38 83 62 70 */	addi r4, r3, lit_4472@l
/* 80B43BF8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B43BFC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B43C00  90 61 00 08 */	stw r3, 8(r1)
/* 80B43C04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B43C08  80 04 00 08 */	lwz r0, 8(r4)
/* 80B43C0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B43C10  7F E3 FB 78 */	mr r3, r31
/* 80B43C14  38 81 00 08 */	addi r4, r1, 8
/* 80B43C18  48 00 09 69 */	bl setAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i
/* 80B43C1C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B43C20  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B43C24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B43C28  7C 08 03 A6 */	mtlr r0
/* 80B43C2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B43C30  4E 80 00 20 */	blr 

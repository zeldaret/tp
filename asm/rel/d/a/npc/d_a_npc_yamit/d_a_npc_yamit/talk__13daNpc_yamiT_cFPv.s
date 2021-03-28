lbl_80B4B7D4:
/* 80B4B7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4B7D8  7C 08 02 A6 */	mflr r0
/* 80B4B7DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4B7E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4B7E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4B7E8  7C 7F 1B 78 */	mr r31, r3
/* 80B4B7EC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B4B7F0  2C 00 00 02 */	cmpwi r0, 2
/* 80B4B7F4  41 82 00 54 */	beq lbl_80B4B848
/* 80B4B7F8  40 80 00 10 */	bge lbl_80B4B808
/* 80B4B7FC  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B800  40 80 00 14 */	bge lbl_80B4B814
/* 80B4B804  48 00 01 C0 */	b lbl_80B4B9C4
lbl_80B4B808:
/* 80B4B808  2C 00 00 04 */	cmpwi r0, 4
/* 80B4B80C  40 80 01 B8 */	bge lbl_80B4B9C4
/* 80B4B810  48 00 01 AC */	b lbl_80B4B9BC
lbl_80B4B814:
/* 80B4B814  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B4B818  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B81C  40 82 00 2C */	bne lbl_80B4B848
/* 80B4B820  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B4B824  38 A0 00 00 */	li r5, 0
/* 80B4B828  4B 60 03 C8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B4B82C  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80B4B830  2C 00 00 01 */	cmpwi r0, 1
/* 80B4B834  40 82 00 0C */	bne lbl_80B4B840
/* 80B4B838  38 00 00 00 */	li r0, 0
/* 80B4B83C  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_80B4B840:
/* 80B4B840  38 00 00 02 */	li r0, 2
/* 80B4B844  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B4B848:
/* 80B4B848  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B4B84C  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B850  40 82 01 74 */	bne lbl_80B4B9C4
/* 80B4B854  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B4B858  28 00 00 00 */	cmplwi r0, 0
/* 80B4B85C  40 82 00 28 */	bne lbl_80B4B884
/* 80B4B860  7F E3 FB 78 */	mr r3, r31
/* 80B4B864  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B4B868  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80B4B86C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B4B870  4B 4C EE A0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B4B874  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B4B878  7C 60 07 34 */	extsh r0, r3
/* 80B4B87C  7C 04 00 00 */	cmpw r4, r0
/* 80B4B880  40 82 00 D4 */	bne lbl_80B4B954
lbl_80B4B884:
/* 80B4B884  7F E3 FB 78 */	mr r3, r31
/* 80B4B888  38 80 00 00 */	li r4, 0
/* 80B4B88C  38 A0 00 00 */	li r5, 0
/* 80B4B890  38 C0 00 00 */	li r6, 0
/* 80B4B894  38 E0 00 00 */	li r7, 0
/* 80B4B898  4B 60 03 E0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B4B89C  2C 03 00 00 */	cmpwi r3, 0
/* 80B4B8A0  41 82 00 30 */	beq lbl_80B4B8D0
/* 80B4B8A4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B4B8A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B4B8AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B4B8B0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B4B8B4  4B 5F 9E 2C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B4B8B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4B8BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4B8C0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B4B8C4  4B 4F 6B A4 */	b reset__14dEvt_control_cFv
/* 80B4B8C8  38 00 00 03 */	li r0, 3
/* 80B4B8CC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B4B8D0:
/* 80B4B8D0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B4B8D4  2C 00 00 01 */	cmpwi r0, 1
/* 80B4B8D8  41 82 00 2C */	beq lbl_80B4B904
/* 80B4B8DC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B4B8E0  4B 5F 9E 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B4B8E4  38 00 00 00 */	li r0, 0
/* 80B4B8E8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B4B8EC  3C 60 80 B5 */	lis r3, lit_4193@ha
/* 80B4B8F0  C0 03 CE 48 */	lfs f0, lit_4193@l(r3)
/* 80B4B8F4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B4B8F8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4B8FC  38 00 00 01 */	li r0, 1
/* 80B4B900  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B4B904:
/* 80B4B904  38 00 00 00 */	li r0, 0
/* 80B4B908  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4B90C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B4B910  28 00 00 00 */	cmplwi r0, 0
/* 80B4B914  41 82 00 B0 */	beq lbl_80B4B9C4
/* 80B4B918  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B4B91C  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B920  41 82 00 28 */	beq lbl_80B4B948
/* 80B4B924  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B4B928  4B 5F 9D D4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B4B92C  38 00 00 00 */	li r0, 0
/* 80B4B930  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B4B934  3C 60 80 B5 */	lis r3, lit_4193@ha
/* 80B4B938  C0 03 CE 48 */	lfs f0, lit_4193@l(r3)
/* 80B4B93C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B4B940  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4B944  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B4B948:
/* 80B4B948  38 00 00 00 */	li r0, 0
/* 80B4B94C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4B950  48 00 00 74 */	b lbl_80B4B9C4
lbl_80B4B954:
/* 80B4B954  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B4B958  2C 00 00 01 */	cmpwi r0, 1
/* 80B4B95C  41 82 00 2C */	beq lbl_80B4B988
/* 80B4B960  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B4B964  4B 5F 9D 98 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B4B968  38 00 00 00 */	li r0, 0
/* 80B4B96C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B4B970  3C 60 80 B5 */	lis r3, lit_4193@ha
/* 80B4B974  C0 03 CE 48 */	lfs f0, lit_4193@l(r3)
/* 80B4B978  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B4B97C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4B980  38 00 00 01 */	li r0, 1
/* 80B4B984  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B4B988:
/* 80B4B988  38 00 00 00 */	li r0, 0
/* 80B4B98C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4B990  7F E3 FB 78 */	mr r3, r31
/* 80B4B994  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B4B998  4B 4C ED 78 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B4B99C  7C 64 1B 78 */	mr r4, r3
/* 80B4B9A0  7F E3 FB 78 */	mr r3, r31
/* 80B4B9A4  38 A0 00 01 */	li r5, 1
/* 80B4B9A8  38 C0 00 02 */	li r6, 2
/* 80B4B9AC  38 E0 00 0F */	li r7, 0xf
/* 80B4B9B0  39 00 00 00 */	li r8, 0
/* 80B4B9B4  4B 5F FC 94 */	b step__8daNpcT_cFsiiii
/* 80B4B9B8  48 00 00 0C */	b lbl_80B4B9C4
lbl_80B4B9BC:
/* 80B4B9BC  4B FF EC 7D */	bl getFlowNodeNo__13daNpc_yamiT_cFv
/* 80B4B9C0  90 7F 0A 7C */	stw r3, 0xa7c(r31)
lbl_80B4B9C4:
/* 80B4B9C4  38 60 00 00 */	li r3, 0
/* 80B4B9C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4B9CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4B9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4B9D4  7C 08 03 A6 */	mtlr r0
/* 80B4B9D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4B9DC  4E 80 00 20 */	blr 

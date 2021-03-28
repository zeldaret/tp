lbl_8099B804:
/* 8099B804  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8099B808  7C 08 02 A6 */	mflr r0
/* 8099B80C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8099B810  39 61 00 40 */	addi r11, r1, 0x40
/* 8099B814  4B 9C 69 C8 */	b _savegpr_29
/* 8099B818  7C 7D 1B 78 */	mr r29, r3
/* 8099B81C  3C 80 80 9A */	lis r4, m__19daNpcClerkt_Param_c@ha
/* 8099B820  3B C4 D2 44 */	addi r30, r4, m__19daNpcClerkt_Param_c@l
/* 8099B824  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8099B828  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 8099B82C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8099B830  4B 67 EE E0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8099B834  A0 1D 0E 22 */	lhz r0, 0xe22(r29)
/* 8099B838  2C 00 00 02 */	cmpwi r0, 2
/* 8099B83C  41 82 00 CC */	beq lbl_8099B908
/* 8099B840  40 80 03 8C */	bge lbl_8099BBCC
/* 8099B844  2C 00 00 00 */	cmpwi r0, 0
/* 8099B848  40 80 00 0C */	bge lbl_8099B854
/* 8099B84C  48 00 03 80 */	b lbl_8099BBCC
/* 8099B850  48 00 03 7C */	b lbl_8099BBCC
lbl_8099B854:
/* 8099B854  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 8099B858  2C 00 00 00 */	cmpwi r0, 0
/* 8099B85C  40 82 00 AC */	bne lbl_8099B908
/* 8099B860  80 1D 10 E0 */	lwz r0, 0x10e0(r29)
/* 8099B864  2C 00 00 02 */	cmpwi r0, 2
/* 8099B868  40 82 00 14 */	bne lbl_8099B87C
/* 8099B86C  7F A3 EB 78 */	mr r3, r29
/* 8099B870  38 80 00 01 */	li r4, 1
/* 8099B874  4B 7F E8 5C */	b shop_init__13dShopSystem_cFb
/* 8099B878  48 00 00 38 */	b lbl_8099B8B0
lbl_8099B87C:
/* 8099B87C  38 7D 0E 78 */	addi r3, r29, 0xe78
/* 8099B880  4B 7F AA 8C */	b Save__16ShopCam_action_cFv
/* 8099B884  7F A3 EB 78 */	mr r3, r29
/* 8099B888  80 9D 0A 7C */	lwz r4, 0xa7c(r29)
/* 8099B88C  38 A0 00 00 */	li r5, 0
/* 8099B890  4B 7B 03 60 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8099B894  7F A3 EB 78 */	mr r3, r29
/* 8099B898  38 80 00 00 */	li r4, 0
/* 8099B89C  4B 7F E8 34 */	b shop_init__13dShopSystem_cFb
/* 8099B8A0  38 00 00 01 */	li r0, 1
/* 8099B8A4  90 1D 10 E4 */	stw r0, 0x10e4(r29)
/* 8099B8A8  38 00 00 00 */	li r0, 0
/* 8099B8AC  98 1D 0E 26 */	stb r0, 0xe26(r29)
lbl_8099B8B0:
/* 8099B8B0  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8099B8B4  2C 00 00 00 */	cmpwi r0, 0
/* 8099B8B8  41 82 00 24 */	beq lbl_8099B8DC
/* 8099B8BC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8099B8C0  4B 7A 9E 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 8099B8C4  38 00 00 00 */	li r0, 0
/* 8099B8C8  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8099B8CC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8099B8D0  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8099B8D4  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8099B8D8  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8099B8DC:
/* 8099B8DC  38 60 00 00 */	li r3, 0
/* 8099B8E0  B0 7D 0C D4 */	sth r3, 0xcd4(r29)
/* 8099B8E4  B0 7D 0C D6 */	sth r3, 0xcd6(r29)
/* 8099B8E8  38 00 00 01 */	li r0, 1
/* 8099B8EC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8099B8F0  A8 1D 0D D8 */	lha r0, 0xdd8(r29)
/* 8099B8F4  2C 00 00 01 */	cmpwi r0, 1
/* 8099B8F8  40 82 00 08 */	bne lbl_8099B900
/* 8099B8FC  B0 7D 0D D8 */	sth r3, 0xdd8(r29)
lbl_8099B900:
/* 8099B900  38 00 00 02 */	li r0, 2
/* 8099B904  B0 1D 0E 22 */	sth r0, 0xe22(r29)
lbl_8099B908:
/* 8099B908  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 8099B90C  2C 00 00 00 */	cmpwi r0, 0
/* 8099B910  40 82 02 68 */	bne lbl_8099BB78
/* 8099B914  7F A3 EB 78 */	mr r3, r29
/* 8099B918  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8099B91C  4B 67 ED F4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8099B920  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 8099B924  7C 60 07 34 */	extsh r0, r3
/* 8099B928  7C 04 00 00 */	cmpw r4, r0
/* 8099B92C  40 82 00 54 */	bne lbl_8099B980
/* 8099B930  7F A3 EB 78 */	mr r3, r29
/* 8099B934  7F A4 EB 78 */	mr r4, r29
/* 8099B938  38 BD 09 74 */	addi r5, r29, 0x974
/* 8099B93C  4B 7F E8 1C */	b shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c
/* 8099B940  90 7D 10 E0 */	stw r3, 0x10e0(r29)
/* 8099B944  80 1D 10 E0 */	lwz r0, 0x10e0(r29)
/* 8099B948  2C 00 00 00 */	cmpwi r0, 0
/* 8099B94C  41 82 00 5C */	beq lbl_8099B9A8
/* 8099B950  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 8099B954  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8099B958  4B 7A 9D 88 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8099B95C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8099B960  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099B964  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8099B968  4B 6A 6B 00 */	b reset__14dEvt_control_cFv
/* 8099B96C  38 00 00 03 */	li r0, 3
/* 8099B970  B0 1D 0E 22 */	sth r0, 0xe22(r29)
/* 8099B974  38 00 00 01 */	li r0, 1
/* 8099B978  98 1D 10 E9 */	stb r0, 0x10e9(r29)
/* 8099B97C  48 00 00 2C */	b lbl_8099B9A8
lbl_8099B980:
/* 8099B980  7F A3 EB 78 */	mr r3, r29
/* 8099B984  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8099B988  4B 67 ED 88 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8099B98C  7C 64 1B 78 */	mr r4, r3
/* 8099B990  7F A3 EB 78 */	mr r3, r29
/* 8099B994  38 A0 00 01 */	li r5, 1
/* 8099B998  38 C0 00 00 */	li r6, 0
/* 8099B99C  38 E0 00 0F */	li r7, 0xf
/* 8099B9A0  39 00 00 00 */	li r8, 0
/* 8099B9A4  4B 7A FC A4 */	b step__8daNpcT_cFsiiii
lbl_8099B9A8:
/* 8099B9A8  38 00 00 00 */	li r0, 0
/* 8099B9AC  88 7D 0F 70 */	lbz r3, 0xf70(r29)
/* 8099B9B0  28 03 00 02 */	cmplwi r3, 2
/* 8099B9B4  41 82 00 1C */	beq lbl_8099B9D0
/* 8099B9B8  28 03 00 03 */	cmplwi r3, 3
/* 8099B9BC  41 82 00 14 */	beq lbl_8099B9D0
/* 8099B9C0  28 03 00 04 */	cmplwi r3, 4
/* 8099B9C4  41 82 00 0C */	beq lbl_8099B9D0
/* 8099B9C8  28 03 00 05 */	cmplwi r3, 5
/* 8099B9CC  40 82 00 08 */	bne lbl_8099B9D4
lbl_8099B9D0:
/* 8099B9D0  38 00 00 01 */	li r0, 1
lbl_8099B9D4:
/* 8099B9D4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8099B9D8  41 82 00 EC */	beq lbl_8099BAC4
/* 8099B9DC  88 BD 0F 6E */	lbz r5, 0xf6e(r29)
/* 8099B9E0  28 05 00 00 */	cmplwi r5, 0
/* 8099B9E4  41 82 00 E0 */	beq lbl_8099BAC4
/* 8099B9E8  38 61 00 08 */	addi r3, r1, 8
/* 8099B9EC  38 9D 0E 48 */	addi r4, r29, 0xe48
/* 8099B9F0  38 A5 FF FF */	addi r5, r5, -1
/* 8099B9F4  4B 7F AF AC */	b getCurrentPos__15dShopItemCtrl_cFi
/* 8099B9F8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8099B9FC  D0 1D 0D 6C */	stfs f0, 0xd6c(r29)
/* 8099BA00  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8099BA04  D0 1D 0D 70 */	stfs f0, 0xd70(r29)
/* 8099BA08  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8099BA0C  D0 1D 0D 74 */	stfs f0, 0xd74(r29)
/* 8099BA10  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8099BA14  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8099BA18  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8099BA1C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8099BA20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8099BA24  38 7D 0D 6C */	addi r3, r29, 0xd6c
/* 8099BA28  4B 67 13 3C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8099BA2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099BA30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099BA34  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 8099BA38  4B 67 09 FC */	b mDoMtx_YrotM__FPA4_fs
/* 8099BA3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099BA40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099BA44  38 81 00 14 */	addi r4, r1, 0x14
/* 8099BA48  38 BD 0D 6C */	addi r5, r29, 0xd6c
/* 8099BA4C  4B 9A B3 20 */	b PSMTXMultVec
/* 8099BA50  80 7D 0B C8 */	lwz r3, 0xbc8(r29)
/* 8099BA54  38 1D 0D 6C */	addi r0, r29, 0xd6c
/* 8099BA58  7C 63 00 50 */	subf r3, r3, r0
/* 8099BA5C  30 03 FF FF */	addic r0, r3, -1
/* 8099BA60  7C 00 19 10 */	subfe r0, r0, r3
/* 8099BA64  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8099BA68  40 82 00 10 */	bne lbl_8099BA78
/* 8099BA6C  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8099BA70  2C 00 00 03 */	cmpwi r0, 3
/* 8099BA74  41 82 00 30 */	beq lbl_8099BAA4
lbl_8099BA78:
/* 8099BA78  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8099BA7C  4B 7A 9C 80 */	b remove__18daNpcT_ActorMngr_cFv
/* 8099BA80  38 00 00 00 */	li r0, 0
/* 8099BA84  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8099BA88  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8099BA8C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8099BA90  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8099BA94  38 00 00 03 */	li r0, 3
/* 8099BA98  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 8099BA9C  38 00 00 01 */	li r0, 1
/* 8099BAA0  48 00 00 08 */	b lbl_8099BAA8
lbl_8099BAA4:
/* 8099BAA4  38 00 00 00 */	li r0, 0
lbl_8099BAA8:
/* 8099BAA8  2C 00 00 00 */	cmpwi r0, 0
/* 8099BAAC  41 82 00 0C */	beq lbl_8099BAB8
/* 8099BAB0  38 1D 0D 6C */	addi r0, r29, 0xd6c
/* 8099BAB4  90 1D 0B C8 */	stw r0, 0xbc8(r29)
lbl_8099BAB8:
/* 8099BAB8  38 00 00 00 */	li r0, 0
/* 8099BABC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8099BAC0  48 00 00 B8 */	b lbl_8099BB78
lbl_8099BAC4:
/* 8099BAC4  4B 89 C7 68 */	b getStatus__12dMsgObject_cFv
/* 8099BAC8  7C 7F 1B 78 */	mr r31, r3
/* 8099BACC  80 1D 10 E4 */	lwz r0, 0x10e4(r29)
/* 8099BAD0  2C 00 00 00 */	cmpwi r0, 0
/* 8099BAD4  41 82 00 6C */	beq lbl_8099BB40
/* 8099BAD8  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8099BADC  2C 00 00 00 */	cmpwi r0, 0
/* 8099BAE0  41 82 00 24 */	beq lbl_8099BB04
/* 8099BAE4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8099BAE8  4B 7A 9C 14 */	b remove__18daNpcT_ActorMngr_cFv
/* 8099BAEC  38 00 00 00 */	li r0, 0
/* 8099BAF0  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8099BAF4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8099BAF8  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8099BAFC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8099BB00  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8099BB04:
/* 8099BB04  38 00 00 00 */	li r0, 0
/* 8099BB08  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8099BB0C  4B 89 C8 98 */	b isMouthCheck__12dMsgObject_cFv
/* 8099BB10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8099BB14  40 82 00 18 */	bne lbl_8099BB2C
/* 8099BB18  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8099BB1C  28 00 00 0F */	cmplwi r0, 0xf
/* 8099BB20  41 82 00 0C */	beq lbl_8099BB2C
/* 8099BB24  28 00 00 10 */	cmplwi r0, 0x10
/* 8099BB28  40 82 00 50 */	bne lbl_8099BB78
lbl_8099BB2C:
/* 8099BB2C  38 00 00 00 */	li r0, 0
/* 8099BB30  90 1D 10 E4 */	stw r0, 0x10e4(r29)
/* 8099BB34  38 00 00 01 */	li r0, 1
/* 8099BB38  98 1D 0E 26 */	stb r0, 0xe26(r29)
/* 8099BB3C  48 00 00 3C */	b lbl_8099BB78
lbl_8099BB40:
/* 8099BB40  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8099BB44  2C 00 00 04 */	cmpwi r0, 4
/* 8099BB48  41 82 00 28 */	beq lbl_8099BB70
/* 8099BB4C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8099BB50  4B 7A 9B AC */	b remove__18daNpcT_ActorMngr_cFv
/* 8099BB54  38 00 00 00 */	li r0, 0
/* 8099BB58  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8099BB5C  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8099BB60  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8099BB64  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8099BB68  38 00 00 04 */	li r0, 4
/* 8099BB6C  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8099BB70:
/* 8099BB70  38 00 00 00 */	li r0, 0
/* 8099BB74  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_8099BB78:
/* 8099BB78  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8099BB7C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8099BB80  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8099BB84  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8099BB88  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8099BB8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099BB90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099BB94  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 8099BB98  4B 67 08 44 */	b mDoMtx_YrotS__FPA4_fs
/* 8099BB9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099BBA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099BBA4  38 81 00 20 */	addi r4, r1, 0x20
/* 8099BBA8  7C 85 23 78 */	mr r5, r4
/* 8099BBAC  4B 9A B1 C0 */	b PSMTXMultVec
/* 8099BBB0  38 61 00 20 */	addi r3, r1, 0x20
/* 8099BBB4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8099BBB8  7C 65 1B 78 */	mr r5, r3
/* 8099BBBC  4B 9A B4 D4 */	b PSVECAdd
/* 8099BBC0  38 7D 0E 78 */	addi r3, r29, 0xe78
/* 8099BBC4  38 81 00 20 */	addi r4, r1, 0x20
/* 8099BBC8  4B 7F AC F0 */	b setMasterCamCtrPos__16ShopCam_action_cFP4cXyz
lbl_8099BBCC:
/* 8099BBCC  38 60 00 00 */	li r3, 0
/* 8099BBD0  39 61 00 40 */	addi r11, r1, 0x40
/* 8099BBD4  4B 9C 66 54 */	b _restgpr_29
/* 8099BBD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8099BBDC  7C 08 03 A6 */	mtlr r0
/* 8099BBE0  38 21 00 40 */	addi r1, r1, 0x40
/* 8099BBE4  4E 80 00 20 */	blr 

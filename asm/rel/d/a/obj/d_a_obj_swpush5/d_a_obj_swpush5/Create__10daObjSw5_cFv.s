lbl_8059B920:
/* 8059B920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B924  7C 08 02 A6 */	mflr r0
/* 8059B928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B92C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059B930  7C 7F 1B 78 */	mr r31, r3
/* 8059B934  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059B938  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059B93C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8059B940  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8059B944  7F E5 FB 78 */	mr r5, r31
/* 8059B948  4B AD 90 C0 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8059B94C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059B950  41 82 00 0C */	beq lbl_8059B95C
/* 8059B954  38 60 00 00 */	li r3, 0
/* 8059B958  48 00 00 B0 */	b lbl_8059BA08
lbl_8059B95C:
/* 8059B95C  7F E3 FB 78 */	mr r3, r31
/* 8059B960  4B FF FE A5 */	bl initBaseMtx__10daObjSw5_cFv
/* 8059B964  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8059B968  38 03 00 24 */	addi r0, r3, 0x24
/* 8059B96C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8059B970  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8059B974  80 83 00 04 */	lwz r4, 4(r3)
/* 8059B978  7F E3 FB 78 */	mr r3, r31
/* 8059B97C  4B A7 EB FC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 8059B980  3C 60 80 5A */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 8059B984  38 03 B4 EC */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 8059B988  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8059B98C  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 8059B990  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8059B994  80 63 00 04 */	lwz r3, 4(r3)
/* 8059B998  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8059B99C  80 83 00 04 */	lwz r4, 4(r3)
/* 8059B9A0  3C 60 80 5A */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 8059B9A4  38 03 B7 54 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l
/* 8059B9A8  90 04 00 04 */	stw r0, 4(r4)
/* 8059B9AC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8059B9B0  93 E3 00 14 */	stw r31, 0x14(r3)
/* 8059B9B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059B9B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059B9BC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8059B9C0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8059B9C4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8059B9C8  7C 05 07 74 */	extsb r5, r0
/* 8059B9CC  4B A9 99 94 */	b isSwitch__10dSv_info_cCFii
/* 8059B9D0  2C 03 00 00 */	cmpwi r3, 0
/* 8059B9D4  41 82 00 18 */	beq lbl_8059B9EC
/* 8059B9D8  3C 60 80 5A */	lis r3, lit_3815@ha
/* 8059B9DC  C0 03 C6 B8 */	lfs f0, lit_3815@l(r3)
/* 8059B9E0  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 8059B9E4  7F E3 FB 78 */	mr r3, r31
/* 8059B9E8  48 00 09 7D */	bl modeWaitUpperInit__10daObjSw5_cFv
lbl_8059B9EC:
/* 8059B9EC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8059B9F0  4B AD FF D0 */	b Move__4dBgWFv
/* 8059B9F4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8059B9F8  88 03 00 88 */	lbz r0, 0x88(r3)
/* 8059B9FC  60 00 00 80 */	ori r0, r0, 0x80
/* 8059BA00  98 03 00 88 */	stb r0, 0x88(r3)
/* 8059BA04  38 60 00 01 */	li r3, 1
lbl_8059BA08:
/* 8059BA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059BA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BA10  7C 08 03 A6 */	mtlr r0
/* 8059BA14  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BA18  4E 80 00 20 */	blr 

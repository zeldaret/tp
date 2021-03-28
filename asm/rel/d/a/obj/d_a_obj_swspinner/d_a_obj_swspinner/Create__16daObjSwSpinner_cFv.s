lbl_80D00284:
/* 80D00284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00288  7C 08 02 A6 */	mflr r0
/* 80D0028C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D00294  93 C1 00 08 */	stw r30, 8(r1)
/* 80D00298  7C 7E 1B 78 */	mr r30, r3
/* 80D0029C  3C 60 80 D0 */	lis r3, lit_3717@ha
/* 80D002A0  3B E3 0A 94 */	addi r31, r3, lit_3717@l
/* 80D002A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D002A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D002AC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D002B0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D002B4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D002B8  7C 05 07 74 */	extsb r5, r0
/* 80D002BC  4B 33 50 A4 */	b isSwitch__10dSv_info_cCFii
/* 80D002C0  2C 03 00 00 */	cmpwi r3, 0
/* 80D002C4  41 82 00 18 */	beq lbl_80D002DC
/* 80D002C8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80D002CC  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80D002D0  38 00 00 00 */	li r0, 0
/* 80D002D4  98 1E 05 EA */	stb r0, 0x5ea(r30)
/* 80D002D8  48 00 00 14 */	b lbl_80D002EC
lbl_80D002DC:
/* 80D002DC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D002E0  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80D002E4  38 00 00 01 */	li r0, 1
/* 80D002E8  98 1E 05 EA */	stb r0, 0x5ea(r30)
lbl_80D002EC:
/* 80D002EC  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80D002F0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D002F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D002F8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80D002FC  7F C3 F3 78 */	mr r3, r30
/* 80D00300  4B FF FE 75 */	bl initBaseMtx__16daObjSwSpinner_cFv
/* 80D00304  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D00308  38 03 00 24 */	addi r0, r3, 0x24
/* 80D0030C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D00310  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D00314  80 83 00 04 */	lwz r4, 4(r3)
/* 80D00318  7F C3 F3 78 */	mr r3, r30
/* 80D0031C  4B 31 A2 5C */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D00320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D00324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D00328  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D0032C  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80D00330  7F C5 F3 78 */	mr r5, r30
/* 80D00334  4B 37 46 D4 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D00338  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80D0033C  4B 37 B6 84 */	b Move__4dBgWFv
/* 80D00340  38 60 00 01 */	li r3, 1
/* 80D00344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D00348  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0034C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00350  7C 08 03 A6 */	mtlr r0
/* 80D00354  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00358  4E 80 00 20 */	blr 

lbl_80C83B38:
/* 80C83B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C83B3C  7C 08 02 A6 */	mflr r0
/* 80C83B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83B44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C83B48  7C 7F 1B 78 */	mr r31, r3
/* 80C83B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C83B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C83B54  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C83B58  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C83B5C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C83B60  7C 05 07 74 */	extsb r5, r0
/* 80C83B64  4B 3B 17 FD */	bl isSwitch__10dSv_info_cCFii
/* 80C83B68  2C 03 00 00 */	cmpwi r3, 0
/* 80C83B6C  41 82 00 10 */	beq lbl_80C83B7C
/* 80C83B70  38 00 00 01 */	li r0, 1
/* 80C83B74  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 80C83B78  48 00 00 3C */	b lbl_80C83BB4
lbl_80C83B7C:
/* 80C83B7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C83B80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C83B84  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C83B88  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C83B8C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C83B90  7C 05 07 74 */	extsb r5, r0
/* 80C83B94  4B 3B 17 CD */	bl isSwitch__10dSv_info_cCFii
/* 80C83B98  2C 03 00 00 */	cmpwi r3, 0
/* 80C83B9C  41 82 00 10 */	beq lbl_80C83BAC
/* 80C83BA0  38 00 FF FF */	li r0, -1
/* 80C83BA4  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 80C83BA8  48 00 00 0C */	b lbl_80C83BB4
lbl_80C83BAC:
/* 80C83BAC  38 00 00 00 */	li r0, 0
/* 80C83BB0  98 1F 05 BC */	stb r0, 0x5bc(r31)
lbl_80C83BB4:
/* 80C83BB4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C83BB8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C83BBC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C83BC0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C83BC4  80 83 00 04 */	lwz r4, 4(r3)
/* 80C83BC8  7F E3 FB 78 */	mr r3, r31
/* 80C83BCC  4B 39 69 AD */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C83BD0  3C 60 80 C8 */	lis r3, PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@ha /* 0x80C83998@ha */
/* 80C83BD4  38 03 39 98 */	addi r0, r3, PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@l /* 0x80C83998@l */
/* 80C83BD8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C83BDC  90 03 00 10 */	stw r0, 0x10(r3)
/* 80C83BE0  7F E3 FB 78 */	mr r3, r31
/* 80C83BE4  48 00 02 3D */	bl init_modeWait__16daObjLv6SwTurn_cFv
/* 80C83BE8  7F E3 FB 78 */	mr r3, r31
/* 80C83BEC  4B 3F 4D 65 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C83BF0  7F E3 FB 78 */	mr r3, r31
/* 80C83BF4  4B FF FE A5 */	bl initBaseMtx__16daObjLv6SwTurn_cFv
/* 80C83BF8  38 60 00 01 */	li r3, 1
/* 80C83BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C83C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C83C04  7C 08 03 A6 */	mtlr r0
/* 80C83C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83C0C  4E 80 00 20 */	blr 

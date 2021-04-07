lbl_80BC3AC4:
/* 80BC3AC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BC3AC8  7C 08 02 A6 */	mflr r0
/* 80BC3ACC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BC3AD0  39 61 00 40 */	addi r11, r1, 0x40
/* 80BC3AD4  4B 79 E7 09 */	bl _savegpr_29
/* 80BC3AD8  7C 7E 1B 78 */	mr r30, r3
/* 80BC3ADC  3C 60 80 BC */	lis r3, mCcDObjInfo__13daBubbPilar_c@ha /* 0x80BC4070@ha */
/* 80BC3AE0  3B E3 40 70 */	addi r31, r3, mCcDObjInfo__13daBubbPilar_c@l /* 0x80BC4070@l */
/* 80BC3AE4  88 1E 07 2B */	lbz r0, 0x72b(r30)
/* 80BC3AE8  28 00 00 00 */	cmplwi r0, 0
/* 80BC3AEC  40 82 01 70 */	bne lbl_80BC3C5C
/* 80BC3AF0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC3AF4  7C 03 07 74 */	extsb r3, r0
/* 80BC3AF8  4B 46 95 75 */	bl dComIfGp_getReverb__Fi
/* 80BC3AFC  7C 67 1B 78 */	mr r7, r3
/* 80BC3B00  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008029A@ha */
/* 80BC3B04  38 03 02 9A */	addi r0, r3, 0x029A /* 0x0008029A@l */
/* 80BC3B08  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BC3B0C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BC3B10  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BC3B14  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC3B18  38 81 00 20 */	addi r4, r1, 0x20
/* 80BC3B1C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC3B20  38 C0 00 00 */	li r6, 0
/* 80BC3B24  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80BC3B28  FC 40 08 90 */	fmr f2, f1
/* 80BC3B2C  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80BC3B30  FC 80 18 90 */	fmr f4, f3
/* 80BC3B34  39 00 00 00 */	li r8, 0
/* 80BC3B38  4B 6E 89 D5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC3B3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC3B40  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC3B44  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BC3B48  38 00 00 FF */	li r0, 0xff
/* 80BC3B4C  90 01 00 08 */	stw r0, 8(r1)
/* 80BC3B50  38 80 00 00 */	li r4, 0
/* 80BC3B54  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BC3B58  38 00 FF FF */	li r0, -1
/* 80BC3B5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BC3B60  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BC3B64  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BC3B68  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BC3B6C  80 9E 07 3C */	lwz r4, 0x73c(r30)
/* 80BC3B70  38 A0 00 00 */	li r5, 0
/* 80BC3B74  3C C0 00 01 */	lis r6, 0x0001 /* 0x000088BD@ha */
/* 80BC3B78  38 C6 88 BD */	addi r6, r6, 0x88BD /* 0x000088BD@l */
/* 80BC3B7C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80BC3B80  39 00 00 00 */	li r8, 0
/* 80BC3B84  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80BC3B88  39 5E 04 EC */	addi r10, r30, 0x4ec
/* 80BC3B8C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80BC3B90  4B 48 99 3D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BC3B94  90 7E 07 3C */	stw r3, 0x73c(r30)
/* 80BC3B98  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BC3B9C  38 63 02 10 */	addi r3, r3, 0x210
/* 80BC3BA0  80 9E 07 3C */	lwz r4, 0x73c(r30)
/* 80BC3BA4  4B 48 7D 75 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80BC3BA8  90 7E 07 4C */	stw r3, 0x74c(r30)
/* 80BC3BAC  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80BC3BB0  4B 4C 08 B1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BC3BB4  28 03 00 00 */	cmplwi r3, 0
/* 80BC3BB8  41 82 00 6C */	beq lbl_80BC3C24
/* 80BC3BBC  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80BC3BC0  4B 4C 09 89 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80BC3BC4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BC3BC8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BC3BCC  41 82 00 58 */	beq lbl_80BC3C24
/* 80BC3BD0  38 00 00 01 */	li r0, 1
/* 80BC3BD4  98 1E 07 2D */	stb r0, 0x72d(r30)
/* 80BC3BD8  88 1E 07 2D */	lbz r0, 0x72d(r30)
/* 80BC3BDC  54 00 10 3A */	slwi r0, r0, 2
/* 80BC3BE0  7C 7E 02 14 */	add r3, r30, r0
/* 80BC3BE4  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80BC3BE8  38 03 00 24 */	addi r0, r3, 0x24
/* 80BC3BEC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BC3BF0  88 1E 07 2D */	lbz r0, 0x72d(r30)
/* 80BC3BF4  54 00 10 3A */	slwi r0, r0, 2
/* 80BC3BF8  7C 7E 02 14 */	add r3, r30, r0
/* 80BC3BFC  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80BC3C00  80 83 00 04 */	lwz r4, 4(r3)
/* 80BC3C04  7F C3 F3 78 */	mr r3, r30
/* 80BC3C08  4B 45 69 71 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BC3C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC3C10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC3C14  88 9E 07 2A */	lbz r4, 0x72a(r30)
/* 80BC3C18  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC3C1C  7C 05 07 74 */	extsb r5, r0
/* 80BC3C20  4B 47 15 E1 */	bl onSwitch__10dSv_info_cFii
lbl_80BC3C24:
/* 80BC3C24  38 7E 07 10 */	addi r3, r30, 0x710
/* 80BC3C28  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80BC3C2C  4B 6A B5 D5 */	bl SetR__8cM3dGCylFf
/* 80BC3C30  38 7E 07 10 */	addi r3, r30, 0x710
/* 80BC3C34  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80BC3C38  4B 6A B5 C1 */	bl SetH__8cM3dGCylFf
/* 80BC3C3C  38 7E 07 10 */	addi r3, r30, 0x710
/* 80BC3C40  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BC3C44  4B 6A B5 99 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BC3C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC3C4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC3C50  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BC3C54  38 9E 05 EC */	addi r4, r30, 0x5ec
/* 80BC3C58  4B 6A 0F 51 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80BC3C5C:
/* 80BC3C5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BC3C60  4B 79 E5 C9 */	bl _restgpr_29
/* 80BC3C64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BC3C68  7C 08 03 A6 */	mtlr r0
/* 80BC3C6C  38 21 00 40 */	addi r1, r1, 0x40
/* 80BC3C70  4E 80 00 20 */	blr 

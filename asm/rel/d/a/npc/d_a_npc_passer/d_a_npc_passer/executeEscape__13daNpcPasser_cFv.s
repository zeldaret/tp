lbl_80AA39DC:
/* 80AA39DC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AA39E0  7C 08 02 A6 */	mflr r0
/* 80AA39E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AA39E8  39 61 00 60 */	addi r11, r1, 0x60
/* 80AA39EC  4B 8B E7 F1 */	bl _savegpr_29
/* 80AA39F0  7C 7E 1B 78 */	mr r30, r3
/* 80AA39F4  3C 80 80 AA */	lis r4, lit_4109@ha /* 0x80AA698C@ha */
/* 80AA39F8  3B E4 69 8C */	addi r31, r4, lit_4109@l /* 0x80AA698C@l */
/* 80AA39FC  80 03 0B 1C */	lwz r0, 0xb1c(r3)
/* 80AA3A00  28 00 00 00 */	cmplwi r0, 0
/* 80AA3A04  40 82 00 A4 */	bne lbl_80AA3AA8
/* 80AA3A08  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80AA3A0C  38 80 00 01 */	li r4, 1
/* 80AA3A10  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80AA3A14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80AA3A18  40 82 00 18 */	bne lbl_80AA3A30
/* 80AA3A1C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80AA3A20  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AA3A24  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AA3A28  41 82 00 08 */	beq lbl_80AA3A30
/* 80AA3A2C  38 80 00 00 */	li r4, 0
lbl_80AA3A30:
/* 80AA3A30  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80AA3A34  41 82 00 48 */	beq lbl_80AA3A7C
/* 80AA3A38  7F C3 F3 78 */	mr r3, r30
/* 80AA3A3C  38 80 00 04 */	li r4, 4
/* 80AA3A40  80 BE 0B 00 */	lwz r5, 0xb00(r30)
/* 80AA3A44  4B 6B 46 AD */	bl getAnmP__10daNpcCd2_cFii
/* 80AA3A48  7C 64 1B 78 */	mr r4, r3
/* 80AA3A4C  7F C3 F3 78 */	mr r3, r30
/* 80AA3A50  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA3A54  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA3A58  38 A0 00 02 */	li r5, 2
/* 80AA3A5C  38 C0 00 00 */	li r6, 0
/* 80AA3A60  38 E0 FF FF */	li r7, -1
/* 80AA3A64  4B 6B 54 9D */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA3A68  38 7E 05 94 */	addi r3, r30, 0x594
/* 80AA3A6C  38 80 00 00 */	li r4, 0
/* 80AA3A70  4B 81 D3 A9 */	bl playVoice__17Z2CreatureCitizenFi
/* 80AA3A74  38 00 00 01 */	li r0, 1
/* 80AA3A78  90 1E 0B 1C */	stw r0, 0xb1c(r30)
lbl_80AA3A7C:
/* 80AA3A7C  7F C3 F3 78 */	mr r3, r30
/* 80AA3A80  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA3A84  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA3A88  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AA3A8C  4B 57 6C 85 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AA3A90  7C 64 1B 78 */	mr r4, r3
/* 80AA3A94  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80AA3A98  38 A0 00 03 */	li r5, 3
/* 80AA3A9C  38 C0 06 00 */	li r6, 0x600
/* 80AA3AA0  4B 7C CB 69 */	bl cLib_addCalcAngleS2__FPssss
/* 80AA3AA4  48 00 02 90 */	b lbl_80AA3D34
lbl_80AA3AA8:
/* 80AA3AA8  28 00 00 01 */	cmplwi r0, 1
/* 80AA3AAC  40 82 02 88 */	bne lbl_80AA3D34
/* 80AA3AB0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80AA3AB4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80AA3AB8  41 82 00 08 */	beq lbl_80AA3AC0
/* 80AA3ABC  4B 57 61 C1 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80AA3AC0:
/* 80AA3AC0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AA3AC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AA3AC8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AA3ACC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AA3AD0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AA3AD4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AA3AD8  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA3ADC  38 81 00 18 */	addi r4, r1, 0x18
/* 80AA3AE0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80AA3AE4  4B 6B 61 31 */	bl checkPoint__11PathTrace_cF4cXyzf
/* 80AA3AE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA3AEC  41 82 00 48 */	beq lbl_80AA3B34
/* 80AA3AF0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AA3AF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AA3AF8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AA3AFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AA3B00  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AA3B04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AA3B08  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA3B0C  38 81 00 0C */	addi r4, r1, 0xc
/* 80AA3B10  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80AA3B14  4B 6B 62 AD */	bl checkPathEnd__11PathTrace_cF4cXyzf
/* 80AA3B18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA3B1C  41 82 00 0C */	beq lbl_80AA3B28
/* 80AA3B20  7F C3 F3 78 */	mr r3, r30
/* 80AA3B24  4B 57 61 59 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80AA3B28:
/* 80AA3B28  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA3B2C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AA3B30  4B 6B 64 69 */	bl setNextPoint__11PathTrace_cFR4cXyz
lbl_80AA3B34:
/* 80AA3B34  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA3B38  7F C4 F3 78 */	mr r4, r30
/* 80AA3B3C  4B 6B 68 35 */	bl checkObstacle__11PathTrace_cFP10fopAc_ac_c
/* 80AA3B40  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA3B44  38 81 00 24 */	addi r4, r1, 0x24
/* 80AA3B48  4B 6B 63 0D */	bl getTargetPoint__11PathTrace_cFP3Vec
/* 80AA3B4C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80AA3B50  38 81 00 24 */	addi r4, r1, 0x24
/* 80AA3B54  4B 7C D0 B1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80AA3B58  7C 64 1B 78 */	mr r4, r3
/* 80AA3B5C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80AA3B60  38 A0 00 03 */	li r5, 3
/* 80AA3B64  38 C0 06 00 */	li r6, 0x600
/* 80AA3B68  4B 7C CA A1 */	bl cLib_addCalcAngleS2__FPssss
/* 80AA3B6C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80AA3B70  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80AA3B74  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AA3B78  41 82 00 60 */	beq lbl_80AA3BD8
/* 80AA3B7C  3B A0 00 00 */	li r29, 0
/* 80AA3B80  3C 60 80 AA */	lis r3, __vt__8cM3dGPla@ha /* 0x80AA73C0@ha */
/* 80AA3B84  38 03 73 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80AA73C0@l */
/* 80AA3B88  90 01 00 40 */	stw r0, 0x40(r1)
/* 80AA3B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA3B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA3B94  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80AA3B98  38 9E 07 28 */	addi r4, r30, 0x728
/* 80AA3B9C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80AA3BA0  4B 5D 0B A5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80AA3BA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA3BA8  41 82 00 14 */	beq lbl_80AA3BBC
/* 80AA3BAC  38 61 00 30 */	addi r3, r1, 0x30
/* 80AA3BB0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80AA3BB4  4B 57 A0 25 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 80AA3BB8  7C 7D 1B 78 */	mr r29, r3
lbl_80AA3BBC:
/* 80AA3BBC  7F A0 07 35 */	extsh. r0, r29
/* 80AA3BC0  41 82 00 0C */	beq lbl_80AA3BCC
/* 80AA3BC4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AA3BC8  D0 1E 0B 18 */	stfs f0, 0xb18(r30)
lbl_80AA3BCC:
/* 80AA3BCC  3C 60 80 AA */	lis r3, __vt__8cM3dGPla@ha /* 0x80AA73C0@ha */
/* 80AA3BD0  38 03 73 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80AA73C0@l */
/* 80AA3BD4  90 01 00 40 */	stw r0, 0x40(r1)
lbl_80AA3BD8:
/* 80AA3BD8  7F C3 F3 78 */	mr r3, r30
/* 80AA3BDC  48 00 07 C9 */	bl setAngle__13daNpcPasser_cFv
/* 80AA3BE0  7F C3 F3 78 */	mr r3, r30
/* 80AA3BE4  48 00 08 C1 */	bl pathMoveF__13daNpcPasser_cFv
/* 80AA3BE8  38 7E 06 38 */	addi r3, r30, 0x638
/* 80AA3BEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA3BF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA3BF4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AA3BF8  4B 5D 2E B5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AA3BFC  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 80AA3C00  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80AA3C04  41 82 01 28 */	beq lbl_80AA3D2C
/* 80AA3C08  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80AA3C0C  38 9E 04 BC */	addi r4, r30, 0x4bc
/* 80AA3C10  4B 8A 37 8D */	bl PSVECSquareDistance
/* 80AA3C14  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80AA3C18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA3C1C  40 81 00 58 */	ble lbl_80AA3C74
/* 80AA3C20  FC 00 08 34 */	frsqrte f0, f1
/* 80AA3C24  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80AA3C28  FC 44 00 32 */	fmul f2, f4, f0
/* 80AA3C2C  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80AA3C30  FC 00 00 32 */	fmul f0, f0, f0
/* 80AA3C34  FC 01 00 32 */	fmul f0, f1, f0
/* 80AA3C38  FC 03 00 28 */	fsub f0, f3, f0
/* 80AA3C3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80AA3C40  FC 44 00 32 */	fmul f2, f4, f0
/* 80AA3C44  FC 00 00 32 */	fmul f0, f0, f0
/* 80AA3C48  FC 01 00 32 */	fmul f0, f1, f0
/* 80AA3C4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80AA3C50  FC 02 00 32 */	fmul f0, f2, f0
/* 80AA3C54  FC 44 00 32 */	fmul f2, f4, f0
/* 80AA3C58  FC 00 00 32 */	fmul f0, f0, f0
/* 80AA3C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80AA3C60  FC 03 00 28 */	fsub f0, f3, f0
/* 80AA3C64  FC 02 00 32 */	fmul f0, f2, f0
/* 80AA3C68  FC 21 00 32 */	fmul f1, f1, f0
/* 80AA3C6C  FC 20 08 18 */	frsp f1, f1
/* 80AA3C70  48 00 00 88 */	b lbl_80AA3CF8
lbl_80AA3C74:
/* 80AA3C74  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80AA3C78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA3C7C  40 80 00 10 */	bge lbl_80AA3C8C
/* 80AA3C80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AA3C84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AA3C88  48 00 00 70 */	b lbl_80AA3CF8
lbl_80AA3C8C:
/* 80AA3C8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AA3C90  80 81 00 08 */	lwz r4, 8(r1)
/* 80AA3C94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AA3C98  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AA3C9C  7C 03 00 00 */	cmpw r3, r0
/* 80AA3CA0  41 82 00 14 */	beq lbl_80AA3CB4
/* 80AA3CA4  40 80 00 40 */	bge lbl_80AA3CE4
/* 80AA3CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80AA3CAC  41 82 00 20 */	beq lbl_80AA3CCC
/* 80AA3CB0  48 00 00 34 */	b lbl_80AA3CE4
lbl_80AA3CB4:
/* 80AA3CB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AA3CB8  41 82 00 0C */	beq lbl_80AA3CC4
/* 80AA3CBC  38 00 00 01 */	li r0, 1
/* 80AA3CC0  48 00 00 28 */	b lbl_80AA3CE8
lbl_80AA3CC4:
/* 80AA3CC4  38 00 00 02 */	li r0, 2
/* 80AA3CC8  48 00 00 20 */	b lbl_80AA3CE8
lbl_80AA3CCC:
/* 80AA3CCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AA3CD0  41 82 00 0C */	beq lbl_80AA3CDC
/* 80AA3CD4  38 00 00 05 */	li r0, 5
/* 80AA3CD8  48 00 00 10 */	b lbl_80AA3CE8
lbl_80AA3CDC:
/* 80AA3CDC  38 00 00 03 */	li r0, 3
/* 80AA3CE0  48 00 00 08 */	b lbl_80AA3CE8
lbl_80AA3CE4:
/* 80AA3CE4  38 00 00 04 */	li r0, 4
lbl_80AA3CE8:
/* 80AA3CE8  2C 00 00 01 */	cmpwi r0, 1
/* 80AA3CEC  40 82 00 0C */	bne lbl_80AA3CF8
/* 80AA3CF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AA3CF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80AA3CF8:
/* 80AA3CF8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80AA3CFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA3D00  40 80 00 2C */	bge lbl_80AA3D2C
/* 80AA3D04  88 7E 0B 25 */	lbz r3, 0xb25(r30)
/* 80AA3D08  38 03 00 01 */	addi r0, r3, 1
/* 80AA3D0C  98 1E 0B 25 */	stb r0, 0xb25(r30)
/* 80AA3D10  88 1E 0B 25 */	lbz r0, 0xb25(r30)
/* 80AA3D14  28 00 00 1E */	cmplwi r0, 0x1e
/* 80AA3D18  40 81 00 1C */	ble lbl_80AA3D34
/* 80AA3D1C  7F C3 F3 78 */	mr r3, r30
/* 80AA3D20  38 80 00 02 */	li r4, 2
/* 80AA3D24  4B FF F4 C9 */	bl setAction__13daNpcPasser_cFQ213daNpcPasser_c6Mode_e
/* 80AA3D28  48 00 00 0C */	b lbl_80AA3D34
lbl_80AA3D2C:
/* 80AA3D2C  38 00 00 00 */	li r0, 0
/* 80AA3D30  98 1E 0B 25 */	stb r0, 0xb25(r30)
lbl_80AA3D34:
/* 80AA3D34  39 61 00 60 */	addi r11, r1, 0x60
/* 80AA3D38  4B 8B E4 F1 */	bl _restgpr_29
/* 80AA3D3C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AA3D40  7C 08 03 A6 */	mtlr r0
/* 80AA3D44  38 21 00 60 */	addi r1, r1, 0x60
/* 80AA3D48  4E 80 00 20 */	blr 

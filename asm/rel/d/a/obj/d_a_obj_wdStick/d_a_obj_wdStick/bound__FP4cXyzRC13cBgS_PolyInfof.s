lbl_80D32A70:
/* 80D32A70  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80D32A74  7C 08 02 A6 */	mflr r0
/* 80D32A78  90 01 00 94 */	stw r0, 0x94(r1)
/* 80D32A7C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80D32A80  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80D32A84  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80D32A88  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80D32A8C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80D32A90  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80D32A94  7C 7F 1B 78 */	mr r31, r3
/* 80D32A98  FF E0 08 90 */	fmr f31, f1
/* 80D32A9C  3C 60 80 D3 */	lis r3, mCcDObjInfo__11daWdStick_c@ha
/* 80D32AA0  3B C3 41 38 */	addi r30, r3, mCcDObjInfo__11daWdStick_c@l
/* 80D32AA4  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha
/* 80D32AA8  38 03 43 74 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D32AAC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80D32AB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D32AB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D32AB8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D32ABC  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80D32AC0  4B 34 1C 84 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D32AC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D32AC8  41 82 02 6C */	beq lbl_80D32D34
/* 80D32ACC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D32AD0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D32AD4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D32AD8  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80D32ADC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D32AE0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80D32AE4  38 61 00 1C */	addi r3, r1, 0x1c
/* 80D32AE8  4B 61 46 50 */	b PSVECSquareMag
/* 80D32AEC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80D32AF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D32AF4  40 81 00 58 */	ble lbl_80D32B4C
/* 80D32AF8  FC 00 08 34 */	frsqrte f0, f1
/* 80D32AFC  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80D32B00  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32B04  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80D32B08  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32B0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32B10  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32B14  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32B18  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32B1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32B20  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32B24  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32B28  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32B2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32B30  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32B34  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32B38  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32B3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32B40  FF C1 00 32 */	fmul f30, f1, f0
/* 80D32B44  FF C0 F0 18 */	frsp f30, f30
/* 80D32B48  48 00 00 90 */	b lbl_80D32BD8
lbl_80D32B4C:
/* 80D32B4C  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80D32B50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D32B54  40 80 00 10 */	bge lbl_80D32B64
/* 80D32B58  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D32B5C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80D32B60  48 00 00 78 */	b lbl_80D32BD8
lbl_80D32B64:
/* 80D32B64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D32B68  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80D32B6C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D32B70  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D32B74  7C 03 00 00 */	cmpw r3, r0
/* 80D32B78  41 82 00 14 */	beq lbl_80D32B8C
/* 80D32B7C  40 80 00 40 */	bge lbl_80D32BBC
/* 80D32B80  2C 03 00 00 */	cmpwi r3, 0
/* 80D32B84  41 82 00 20 */	beq lbl_80D32BA4
/* 80D32B88  48 00 00 34 */	b lbl_80D32BBC
lbl_80D32B8C:
/* 80D32B8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D32B90  41 82 00 0C */	beq lbl_80D32B9C
/* 80D32B94  38 00 00 01 */	li r0, 1
/* 80D32B98  48 00 00 28 */	b lbl_80D32BC0
lbl_80D32B9C:
/* 80D32B9C  38 00 00 02 */	li r0, 2
/* 80D32BA0  48 00 00 20 */	b lbl_80D32BC0
lbl_80D32BA4:
/* 80D32BA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D32BA8  41 82 00 0C */	beq lbl_80D32BB4
/* 80D32BAC  38 00 00 05 */	li r0, 5
/* 80D32BB0  48 00 00 10 */	b lbl_80D32BC0
lbl_80D32BB4:
/* 80D32BB4  38 00 00 03 */	li r0, 3
/* 80D32BB8  48 00 00 08 */	b lbl_80D32BC0
lbl_80D32BBC:
/* 80D32BBC  38 00 00 04 */	li r0, 4
lbl_80D32BC0:
/* 80D32BC0  2C 00 00 01 */	cmpwi r0, 1
/* 80D32BC4  40 82 00 10 */	bne lbl_80D32BD4
/* 80D32BC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D32BCC  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80D32BD0  48 00 00 08 */	b lbl_80D32BD8
lbl_80D32BD4:
/* 80D32BD4  FF C0 08 90 */	fmr f30, f1
lbl_80D32BD8:
/* 80D32BD8  7F E3 FB 78 */	mr r3, r31
/* 80D32BDC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80D32BE0  38 A1 00 40 */	addi r5, r1, 0x40
/* 80D32BE4  4B 61 46 E4 */	b C_VECReflect
/* 80D32BE8  38 61 00 34 */	addi r3, r1, 0x34
/* 80D32BEC  38 81 00 40 */	addi r4, r1, 0x40
/* 80D32BF0  FC 20 F0 90 */	fmr f1, f30
/* 80D32BF4  4B 53 3F 90 */	b __ml__4cXyzCFf
/* 80D32BF8  38 61 00 28 */	addi r3, r1, 0x28
/* 80D32BFC  38 81 00 34 */	addi r4, r1, 0x34
/* 80D32C00  FC 20 F8 90 */	fmr f1, f31
/* 80D32C04  4B 53 3F 80 */	b __ml__4cXyzCFf
/* 80D32C08  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D32C0C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80D32C10  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D32C14  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80D32C18  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D32C1C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80D32C20  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D32C24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D32C28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D32C2C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80D32C30  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D32C34  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80D32C38  38 61 00 10 */	addi r3, r1, 0x10
/* 80D32C3C  4B 61 44 FC */	b PSVECSquareMag
/* 80D32C40  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80D32C44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D32C48  40 81 00 58 */	ble lbl_80D32CA0
/* 80D32C4C  FC 00 08 34 */	frsqrte f0, f1
/* 80D32C50  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80D32C54  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32C58  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80D32C5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32C60  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32C64  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32C68  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32C6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32C70  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32C74  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32C78  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32C7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32C80  FC 44 00 32 */	fmul f2, f4, f0
/* 80D32C84  FC 00 00 32 */	fmul f0, f0, f0
/* 80D32C88  FC 01 00 32 */	fmul f0, f1, f0
/* 80D32C8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D32C90  FC 02 00 32 */	fmul f0, f2, f0
/* 80D32C94  FC 21 00 32 */	fmul f1, f1, f0
/* 80D32C98  FC 20 08 18 */	frsp f1, f1
/* 80D32C9C  48 00 00 88 */	b lbl_80D32D24
lbl_80D32CA0:
/* 80D32CA0  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80D32CA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D32CA8  40 80 00 10 */	bge lbl_80D32CB8
/* 80D32CAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D32CB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D32CB4  48 00 00 70 */	b lbl_80D32D24
lbl_80D32CB8:
/* 80D32CB8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D32CBC  80 81 00 08 */	lwz r4, 8(r1)
/* 80D32CC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D32CC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D32CC8  7C 03 00 00 */	cmpw r3, r0
/* 80D32CCC  41 82 00 14 */	beq lbl_80D32CE0
/* 80D32CD0  40 80 00 40 */	bge lbl_80D32D10
/* 80D32CD4  2C 03 00 00 */	cmpwi r3, 0
/* 80D32CD8  41 82 00 20 */	beq lbl_80D32CF8
/* 80D32CDC  48 00 00 34 */	b lbl_80D32D10
lbl_80D32CE0:
/* 80D32CE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D32CE4  41 82 00 0C */	beq lbl_80D32CF0
/* 80D32CE8  38 00 00 01 */	li r0, 1
/* 80D32CEC  48 00 00 28 */	b lbl_80D32D14
lbl_80D32CF0:
/* 80D32CF0  38 00 00 02 */	li r0, 2
/* 80D32CF4  48 00 00 20 */	b lbl_80D32D14
lbl_80D32CF8:
/* 80D32CF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D32CFC  41 82 00 0C */	beq lbl_80D32D08
/* 80D32D00  38 00 00 05 */	li r0, 5
/* 80D32D04  48 00 00 10 */	b lbl_80D32D14
lbl_80D32D08:
/* 80D32D08  38 00 00 03 */	li r0, 3
/* 80D32D0C  48 00 00 08 */	b lbl_80D32D14
lbl_80D32D10:
/* 80D32D10  38 00 00 04 */	li r0, 4
lbl_80D32D14:
/* 80D32D14  2C 00 00 01 */	cmpwi r0, 1
/* 80D32D18  40 82 00 0C */	bne lbl_80D32D24
/* 80D32D1C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D32D20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D32D24:
/* 80D32D24  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha
/* 80D32D28  38 03 43 74 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D32D2C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80D32D30  48 00 00 14 */	b lbl_80D32D44
lbl_80D32D34:
/* 80D32D34  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha
/* 80D32D38  38 03 43 74 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D32D3C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80D32D40  C0 3E 00 48 */	lfs f1, 0x48(r30)
lbl_80D32D44:
/* 80D32D44  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80D32D48  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80D32D4C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80D32D50  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80D32D54  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80D32D58  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80D32D5C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80D32D60  7C 08 03 A6 */	mtlr r0
/* 80D32D64  38 21 00 90 */	addi r1, r1, 0x90
/* 80D32D68  4E 80 00 20 */	blr 

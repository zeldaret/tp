lbl_809F0B20:
/* 809F0B20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809F0B24  7C 08 02 A6 */	mflr r0
/* 809F0B28  90 01 00 34 */	stw r0, 0x34(r1)
/* 809F0B2C  39 61 00 30 */	addi r11, r1, 0x30
/* 809F0B30  4B 97 16 AC */	b _savegpr_29
/* 809F0B34  7C 7E 1B 78 */	mr r30, r3
/* 809F0B38  3C 80 80 9F */	lis r4, lit_3900@ha
/* 809F0B3C  3B E4 2C 50 */	addi r31, r4, lit_3900@l
/* 809F0B40  80 03 0D 9C */	lwz r0, 0xd9c(r3)
/* 809F0B44  28 00 00 00 */	cmplwi r0, 0
/* 809F0B48  41 82 02 60 */	beq lbl_809F0DA8
/* 809F0B4C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 809F0B50  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809F0B54  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 809F0B58  80 9E 05 8C */	lwz r4, 0x58c(r30)
/* 809F0B5C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 809F0B60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809F0B64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809F0B68  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809F0B6C  4B 62 9B A4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F0B70  7C 64 1B 78 */	mr r4, r3
/* 809F0B74  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 809F0B78  3C 84 00 01 */	addis r4, r4, 1
/* 809F0B7C  38 04 80 00 */	addi r0, r4, -32768
/* 809F0B80  7C 04 07 34 */	extsh r4, r0
/* 809F0B84  38 A0 00 0D */	li r5, 0xd
/* 809F0B88  38 C0 06 00 */	li r6, 0x600
/* 809F0B8C  4B 87 FA 7C */	b cLib_addCalcAngleS2__FPssss
/* 809F0B90  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 809F0B94  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 809F0B98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809F0B9C  41 82 00 60 */	beq lbl_809F0BFC
/* 809F0BA0  3B A0 00 00 */	li r29, 0
/* 809F0BA4  3C 60 80 9F */	lis r3, __vt__8cM3dGPla@ha
/* 809F0BA8  38 03 2F AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 809F0BAC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809F0BB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809F0BB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809F0BB8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 809F0BBC  38 9E 07 28 */	addi r4, r30, 0x728
/* 809F0BC0  38 A1 00 0C */	addi r5, r1, 0xc
/* 809F0BC4  4B 68 3B 80 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 809F0BC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F0BCC  41 82 00 14 */	beq lbl_809F0BE0
/* 809F0BD0  38 61 00 0C */	addi r3, r1, 0xc
/* 809F0BD4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 809F0BD8  4B 62 D0 00 */	b fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 809F0BDC  7C 7D 1B 78 */	mr r29, r3
lbl_809F0BE0:
/* 809F0BE0  7F A0 07 35 */	extsh. r0, r29
/* 809F0BE4  41 82 00 0C */	beq lbl_809F0BF0
/* 809F0BE8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809F0BEC  D0 1E 0D 94 */	stfs f0, 0xd94(r30)
lbl_809F0BF0:
/* 809F0BF0  3C 60 80 9F */	lis r3, __vt__8cM3dGPla@ha
/* 809F0BF4  38 03 2F AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 809F0BF8  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_809F0BFC:
/* 809F0BFC  7F C3 F3 78 */	mr r3, r30
/* 809F0C00  48 00 01 D5 */	bl setAngle__12daNpcGuard_cFv
/* 809F0C04  37 BE 08 50 */	addic. r29, r30, 0x850
/* 809F0C08  41 82 00 14 */	beq lbl_809F0C1C
/* 809F0C0C  7F A3 EB 78 */	mr r3, r29
/* 809F0C10  7F A4 EB 78 */	mr r4, r29
/* 809F0C14  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 809F0C18  4B 95 64 C0 */	b PSVECScale
lbl_809F0C1C:
/* 809F0C1C  7F C3 F3 78 */	mr r3, r30
/* 809F0C20  7F A4 EB 78 */	mr r4, r29
/* 809F0C24  4B 62 9A A8 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 809F0C28  38 7E 06 38 */	addi r3, r30, 0x638
/* 809F0C2C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809F0C30  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809F0C34  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809F0C38  4B 68 5E 74 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809F0C3C  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 809F0C40  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809F0C44  41 82 01 5C */	beq lbl_809F0DA0
/* 809F0C48  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809F0C4C  38 9E 04 BC */	addi r4, r30, 0x4bc
/* 809F0C50  4B 95 67 4C */	b PSVECSquareDistance
/* 809F0C54  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 809F0C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F0C5C  40 81 00 58 */	ble lbl_809F0CB4
/* 809F0C60  FC 00 08 34 */	frsqrte f0, f1
/* 809F0C64  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 809F0C68  FC 44 00 32 */	fmul f2, f4, f0
/* 809F0C6C  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 809F0C70  FC 00 00 32 */	fmul f0, f0, f0
/* 809F0C74  FC 01 00 32 */	fmul f0, f1, f0
/* 809F0C78  FC 03 00 28 */	fsub f0, f3, f0
/* 809F0C7C  FC 02 00 32 */	fmul f0, f2, f0
/* 809F0C80  FC 44 00 32 */	fmul f2, f4, f0
/* 809F0C84  FC 00 00 32 */	fmul f0, f0, f0
/* 809F0C88  FC 01 00 32 */	fmul f0, f1, f0
/* 809F0C8C  FC 03 00 28 */	fsub f0, f3, f0
/* 809F0C90  FC 02 00 32 */	fmul f0, f2, f0
/* 809F0C94  FC 44 00 32 */	fmul f2, f4, f0
/* 809F0C98  FC 00 00 32 */	fmul f0, f0, f0
/* 809F0C9C  FC 01 00 32 */	fmul f0, f1, f0
/* 809F0CA0  FC 03 00 28 */	fsub f0, f3, f0
/* 809F0CA4  FC 02 00 32 */	fmul f0, f2, f0
/* 809F0CA8  FC 21 00 32 */	fmul f1, f1, f0
/* 809F0CAC  FC 20 08 18 */	frsp f1, f1
/* 809F0CB0  48 00 00 88 */	b lbl_809F0D38
lbl_809F0CB4:
/* 809F0CB4  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 809F0CB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F0CBC  40 80 00 10 */	bge lbl_809F0CCC
/* 809F0CC0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809F0CC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 809F0CC8  48 00 00 70 */	b lbl_809F0D38
lbl_809F0CCC:
/* 809F0CCC  D0 21 00 08 */	stfs f1, 8(r1)
/* 809F0CD0  80 81 00 08 */	lwz r4, 8(r1)
/* 809F0CD4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809F0CD8  3C 00 7F 80 */	lis r0, 0x7f80
/* 809F0CDC  7C 03 00 00 */	cmpw r3, r0
/* 809F0CE0  41 82 00 14 */	beq lbl_809F0CF4
/* 809F0CE4  40 80 00 40 */	bge lbl_809F0D24
/* 809F0CE8  2C 03 00 00 */	cmpwi r3, 0
/* 809F0CEC  41 82 00 20 */	beq lbl_809F0D0C
/* 809F0CF0  48 00 00 34 */	b lbl_809F0D24
lbl_809F0CF4:
/* 809F0CF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F0CF8  41 82 00 0C */	beq lbl_809F0D04
/* 809F0CFC  38 00 00 01 */	li r0, 1
/* 809F0D00  48 00 00 28 */	b lbl_809F0D28
lbl_809F0D04:
/* 809F0D04  38 00 00 02 */	li r0, 2
/* 809F0D08  48 00 00 20 */	b lbl_809F0D28
lbl_809F0D0C:
/* 809F0D0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F0D10  41 82 00 0C */	beq lbl_809F0D1C
/* 809F0D14  38 00 00 05 */	li r0, 5
/* 809F0D18  48 00 00 10 */	b lbl_809F0D28
lbl_809F0D1C:
/* 809F0D1C  38 00 00 03 */	li r0, 3
/* 809F0D20  48 00 00 08 */	b lbl_809F0D28
lbl_809F0D24:
/* 809F0D24  38 00 00 04 */	li r0, 4
lbl_809F0D28:
/* 809F0D28  2C 00 00 01 */	cmpwi r0, 1
/* 809F0D2C  40 82 00 0C */	bne lbl_809F0D38
/* 809F0D30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809F0D34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_809F0D38:
/* 809F0D38  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 809F0D3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F0D40  40 80 00 60 */	bge lbl_809F0DA0
/* 809F0D44  88 7E 0D A5 */	lbz r3, 0xda5(r30)
/* 809F0D48  38 03 00 01 */	addi r0, r3, 1
/* 809F0D4C  98 1E 0D A5 */	stb r0, 0xda5(r30)
/* 809F0D50  88 1E 0D A5 */	lbz r0, 0xda5(r30)
/* 809F0D54  28 00 00 1E */	cmplwi r0, 0x1e
/* 809F0D58  40 81 00 50 */	ble lbl_809F0DA8
/* 809F0D5C  7F C3 F3 78 */	mr r3, r30
/* 809F0D60  38 80 00 2E */	li r4, 0x2e
/* 809F0D64  38 A0 00 00 */	li r5, 0
/* 809F0D68  4B 76 73 88 */	b getAnmP__10daNpcCd2_cFii
/* 809F0D6C  7C 64 1B 78 */	mr r4, r3
/* 809F0D70  7F C3 F3 78 */	mr r3, r30
/* 809F0D74  C0 3F 00 00 */	lfs f1, 0(r31)
/* 809F0D78  C0 5F 00 04 */	lfs f2, 4(r31)
/* 809F0D7C  38 A0 00 02 */	li r5, 2
/* 809F0D80  38 C0 00 00 */	li r6, 0
/* 809F0D84  38 E0 FF FF */	li r7, -1
/* 809F0D88  4B 76 81 78 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809F0D8C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 809F0D90  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809F0D94  38 00 00 00 */	li r0, 0
/* 809F0D98  90 1E 0D 9C */	stw r0, 0xd9c(r30)
/* 809F0D9C  48 00 00 0C */	b lbl_809F0DA8
lbl_809F0DA0:
/* 809F0DA0  38 00 00 00 */	li r0, 0
/* 809F0DA4  98 1E 0D A5 */	stb r0, 0xda5(r30)
lbl_809F0DA8:
/* 809F0DA8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809F0DAC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 809F0DB0  41 82 00 0C */	beq lbl_809F0DBC
/* 809F0DB4  7F C3 F3 78 */	mr r3, r30
/* 809F0DB8  4B 62 8E C4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_809F0DBC:
/* 809F0DBC  39 61 00 30 */	addi r11, r1, 0x30
/* 809F0DC0  4B 97 14 68 */	b _restgpr_29
/* 809F0DC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809F0DC8  7C 08 03 A6 */	mtlr r0
/* 809F0DCC  38 21 00 30 */	addi r1, r1, 0x30
/* 809F0DD0  4E 80 00 20 */	blr 

lbl_80B78A60:
/* 80B78A60  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B78A64  7C 08 02 A6 */	mflr r0
/* 80B78A68  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B78A6C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B78A70  4B 7E 97 64 */	b _savegpr_27
/* 80B78A74  7C 7B 1B 78 */	mr r27, r3
/* 80B78A78  7C 9C 23 78 */	mr r28, r4
/* 80B78A7C  7C BD 2B 78 */	mr r29, r5
/* 80B78A80  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B78A84  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l
/* 80B78A88  3B C0 00 00 */	li r30, 0
/* 80B78A8C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80B78A90  80 83 00 04 */	lwz r4, 4(r3)
/* 80B78A94  80 84 00 08 */	lwz r4, 8(r4)
/* 80B78A98  54 00 20 36 */	slwi r0, r0, 4
/* 80B78A9C  7C A4 02 14 */	add r5, r4, r0
/* 80B78AA0  80 85 00 04 */	lwz r4, 4(r5)
/* 80B78AA4  80 05 00 08 */	lwz r0, 8(r5)
/* 80B78AA8  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80B78AAC  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B78AB0  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80B78AB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B78AB8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B78ABC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80B78AC0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80B78AC4  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80B78AC8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B78ACC  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80B78AD0  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80B78AD4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B78AD8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80B78ADC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B78AE0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80B78AE4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B78AE8  38 81 00 30 */	addi r4, r1, 0x30
/* 80B78AEC  4B FF FE 0D */	bl chkPassedDstXZ__16daNpc_zrA_Path_cF4cXyz
/* 80B78AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80B78AF4  41 82 01 90 */	beq lbl_80B78C84
/* 80B78AF8  7F 63 DB 78 */	mr r3, r27
/* 80B78AFC  4B 5D 80 E4 */	b setNextIdx__13daNpcF_Path_cFv
/* 80B78B00  2C 03 00 00 */	cmpwi r3, 0
/* 80B78B04  41 82 00 0C */	beq lbl_80B78B10
/* 80B78B08  3B C0 00 01 */	li r30, 1
/* 80B78B0C  48 00 01 78 */	b lbl_80B78C84
lbl_80B78B10:
/* 80B78B10  A0 1B 00 00 */	lhz r0, 0(r27)
/* 80B78B14  80 7B 00 04 */	lwz r3, 4(r27)
/* 80B78B18  80 63 00 08 */	lwz r3, 8(r3)
/* 80B78B1C  54 00 20 36 */	slwi r0, r0, 4
/* 80B78B20  7C 83 02 14 */	add r4, r3, r0
/* 80B78B24  80 64 00 04 */	lwz r3, 4(r4)
/* 80B78B28  80 04 00 08 */	lwz r0, 8(r4)
/* 80B78B2C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B78B30  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B78B34  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B78B38  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B78B3C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B78B40  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80B78B44  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B78B48  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80B78B4C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B78B50  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80B78B54  38 61 00 18 */	addi r3, r1, 0x18
/* 80B78B58  7F 84 E3 78 */	mr r4, r28
/* 80B78B5C  7F A5 EB 78 */	mr r5, r29
/* 80B78B60  4B 6E DF D4 */	b __mi__4cXyzCFRC3Vec
/* 80B78B64  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B78B68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B78B6C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B78B70  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B78B74  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B78B78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B78B7C  38 61 00 0C */	addi r3, r1, 0xc
/* 80B78B80  4B 7C E5 B8 */	b PSVECSquareMag
/* 80B78B84  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B78B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B78B8C  40 81 00 58 */	ble lbl_80B78BE4
/* 80B78B90  FC 00 08 34 */	frsqrte f0, f1
/* 80B78B94  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B78B98  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78B9C  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B78BA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78BA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78BA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78BAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78BB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78BB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78BB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78BBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78BC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78BC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78BC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78BCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78BD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78BD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78BD8  FC 21 00 32 */	fmul f1, f1, f0
/* 80B78BDC  FC 20 08 18 */	frsp f1, f1
/* 80B78BE0  48 00 00 88 */	b lbl_80B78C68
lbl_80B78BE4:
/* 80B78BE4  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B78BE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B78BEC  40 80 00 10 */	bge lbl_80B78BFC
/* 80B78BF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B78BF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B78BF8  48 00 00 70 */	b lbl_80B78C68
lbl_80B78BFC:
/* 80B78BFC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B78C00  80 81 00 08 */	lwz r4, 8(r1)
/* 80B78C04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B78C08  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B78C0C  7C 03 00 00 */	cmpw r3, r0
/* 80B78C10  41 82 00 14 */	beq lbl_80B78C24
/* 80B78C14  40 80 00 40 */	bge lbl_80B78C54
/* 80B78C18  2C 03 00 00 */	cmpwi r3, 0
/* 80B78C1C  41 82 00 20 */	beq lbl_80B78C3C
/* 80B78C20  48 00 00 34 */	b lbl_80B78C54
lbl_80B78C24:
/* 80B78C24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B78C28  41 82 00 0C */	beq lbl_80B78C34
/* 80B78C2C  38 00 00 01 */	li r0, 1
/* 80B78C30  48 00 00 28 */	b lbl_80B78C58
lbl_80B78C34:
/* 80B78C34  38 00 00 02 */	li r0, 2
/* 80B78C38  48 00 00 20 */	b lbl_80B78C58
lbl_80B78C3C:
/* 80B78C3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B78C40  41 82 00 0C */	beq lbl_80B78C4C
/* 80B78C44  38 00 00 05 */	li r0, 5
/* 80B78C48  48 00 00 10 */	b lbl_80B78C58
lbl_80B78C4C:
/* 80B78C4C  38 00 00 03 */	li r0, 3
/* 80B78C50  48 00 00 08 */	b lbl_80B78C58
lbl_80B78C54:
/* 80B78C54  38 00 00 04 */	li r0, 4
lbl_80B78C58:
/* 80B78C58  2C 00 00 01 */	cmpwi r0, 1
/* 80B78C5C  40 82 00 0C */	bne lbl_80B78C68
/* 80B78C60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B78C64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B78C68:
/* 80B78C68  D0 3B 00 0C */	stfs f1, 0xc(r27)
/* 80B78C6C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80B78C70  D0 1B 00 14 */	stfs f0, 0x14(r27)
/* 80B78C74  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80B78C78  D0 1B 00 18 */	stfs f0, 0x18(r27)
/* 80B78C7C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80B78C80  D0 1B 00 1C */	stfs f0, 0x1c(r27)
lbl_80B78C84:
/* 80B78C84  7F C3 F3 78 */	mr r3, r30
/* 80B78C88  39 61 00 60 */	addi r11, r1, 0x60
/* 80B78C8C  4B 7E 95 94 */	b _restgpr_27
/* 80B78C90  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B78C94  7C 08 03 A6 */	mtlr r0
/* 80B78C98  38 21 00 60 */	addi r1, r1, 0x60
/* 80B78C9C  4E 80 00 20 */	blr 

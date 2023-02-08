lbl_800D19C8:
/* 800D19C8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800D19CC  7C 08 02 A6 */	mflr r0
/* 800D19D0  90 01 00 94 */	stw r0, 0x94(r1)
/* 800D19D4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 800D19D8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 800D19DC  39 61 00 80 */	addi r11, r1, 0x80
/* 800D19E0  48 29 07 F9 */	bl _savegpr_28
/* 800D19E4  7C 7E 1B 78 */	mr r30, r3
/* 800D19E8  7C 9F 23 78 */	mr r31, r4
/* 800D19EC  38 9E 12 2C */	addi r4, r30, 0x122c
/* 800D19F0  4B FF FF 89 */	bl checkCutReverseAt__9daAlink_cFP12dCcD_GObjInf
/* 800D19F4  2C 03 00 00 */	cmpwi r3, 0
/* 800D19F8  40 82 00 38 */	bne lbl_800D1A30
/* 800D19FC  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800D1A00  28 00 00 46 */	cmplwi r0, 0x46
/* 800D1A04  41 82 00 3C */	beq lbl_800D1A40
/* 800D1A08  7F C3 F3 78 */	mr r3, r30
/* 800D1A0C  38 9E 13 70 */	addi r4, r30, 0x1370
/* 800D1A10  4B FF FF 69 */	bl checkCutReverseAt__9daAlink_cFP12dCcD_GObjInf
/* 800D1A14  2C 03 00 00 */	cmpwi r3, 0
/* 800D1A18  40 82 00 18 */	bne lbl_800D1A30
/* 800D1A1C  7F C3 F3 78 */	mr r3, r30
/* 800D1A20  38 9E 14 B4 */	addi r4, r30, 0x14b4
/* 800D1A24  4B FF FF 55 */	bl checkCutReverseAt__9daAlink_cFP12dCcD_GObjInf
/* 800D1A28  2C 03 00 00 */	cmpwi r3, 0
/* 800D1A2C  41 82 00 14 */	beq lbl_800D1A40
lbl_800D1A30:
/* 800D1A30  7F C3 F3 78 */	mr r3, r30
/* 800D1A34  7F E4 FB 78 */	mr r4, r31
/* 800D1A38  48 00 26 31 */	bl procCutReverseInit__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800D1A3C  48 00 03 C0 */	b lbl_800D1DFC
lbl_800D1A40:
/* 800D1A40  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 800D1A44  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 800D1A48  40 82 00 10 */	bne lbl_800D1A58
/* 800D1A4C  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800D1A50  28 00 00 46 */	cmplwi r0, 0x46
/* 800D1A54  40 82 03 A4 */	bne lbl_800D1DF8
lbl_800D1A58:
/* 800D1A58  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 800D1A5C  41 82 00 3C */	beq lbl_800D1A98
/* 800D1A60  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D1A64  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 800D1A68  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800D1A6C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800D1A70  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 800D1A74  38 7E 2C 48 */	addi r3, r30, 0x2c48
/* 800D1A78  38 81 00 44 */	addi r4, r1, 0x44
/* 800D1A7C  38 A1 00 50 */	addi r5, r1, 0x50
/* 800D1A80  48 27 53 CD */	bl PSMTXMultVecSR
/* 800D1A84  38 61 00 50 */	addi r3, r1, 0x50
/* 800D1A88  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800D1A8C  7C 65 1B 78 */	mr r5, r3
/* 800D1A90  48 27 56 01 */	bl PSVECAdd
/* 800D1A94  48 00 00 24 */	b lbl_800D1AB8
lbl_800D1A98:
/* 800D1A98  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800D1A9C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800D1AA0  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 800D1AA4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800D1AA8  EC 01 00 2A */	fadds f0, f1, f0
/* 800D1AAC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800D1AB0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800D1AB4  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_800D1AB8:
/* 800D1AB8  7F C3 F3 78 */	mr r3, r30
/* 800D1ABC  38 81 00 50 */	addi r4, r1, 0x50
/* 800D1AC0  38 BE 37 20 */	addi r5, r30, 0x3720
/* 800D1AC4  4B FD 06 D5 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800D1AC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D1ACC  41 82 03 2C */	beq lbl_800D1DF8
/* 800D1AD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D1AD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D1AD8  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 800D1ADC  7F 83 E3 78 */	mr r3, r28
/* 800D1AE0  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800D1AE4  4B FA 36 B9 */	bl GetPolyAttackThrough__4dBgSFRC13cBgS_PolyInfo
/* 800D1AE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D1AEC  40 82 03 0C */	bne lbl_800D1DF8
/* 800D1AF0  7F 83 E3 78 */	mr r3, r28
/* 800D1AF4  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800D1AF8  4B FA 33 09 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800D1AFC  2C 03 00 07 */	cmpwi r3, 7
/* 800D1B00  41 82 02 F8 */	beq lbl_800D1DF8
/* 800D1B04  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800D1B08  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800D1B0C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800D1B10  7F 83 E3 78 */	mr r3, r28
/* 800D1B14  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800D1B18  38 A1 00 5C */	addi r5, r1, 0x5c
/* 800D1B1C  4B FA 2C 29 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800D1B20  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800D1B24  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800D1B28  41 82 00 1C */	beq lbl_800D1B44
/* 800D1B2C  38 7E 2C 78 */	addi r3, r30, 0x2c78
/* 800D1B30  38 81 00 5C */	addi r4, r1, 0x5c
/* 800D1B34  38 A1 00 44 */	addi r5, r1, 0x44
/* 800D1B38  48 27 53 15 */	bl PSMTXMultVecSR
/* 800D1B3C  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 800D1B40  48 00 00 08 */	b lbl_800D1B48
lbl_800D1B44:
/* 800D1B44  C0 21 00 60 */	lfs f1, 0x60(r1)
lbl_800D1B48:
/* 800D1B48  48 19 66 9D */	bl cBgW_CheckBGround__Ff
/* 800D1B4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D1B50  40 82 02 9C */	bne lbl_800D1DEC
/* 800D1B54  7F C3 F3 78 */	mr r3, r30
/* 800D1B58  4B FF F3 75 */	bl checkCutDashAnime__9daAlink_cCFv
/* 800D1B5C  2C 03 00 00 */	cmpwi r3, 0
/* 800D1B60  40 82 02 8C */	bne lbl_800D1DEC
/* 800D1B64  7F 83 E3 78 */	mr r3, r28
/* 800D1B68  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800D1B6C  4B FA 32 E5 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 800D1B70  7C 7C 1B 78 */	mr r28, r3
/* 800D1B74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D1B78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D1B7C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800D1B80  28 00 00 3F */	cmplwi r0, 0x3f
/* 800D1B84  41 82 02 0C */	beq lbl_800D1D90
/* 800D1B88  2C 1C 00 02 */	cmpwi r28, 2
/* 800D1B8C  41 82 00 24 */	beq lbl_800D1BB0
/* 800D1B90  2C 1C 00 05 */	cmpwi r28, 5
/* 800D1B94  41 82 00 1C */	beq lbl_800D1BB0
/* 800D1B98  2C 1C 00 0E */	cmpwi r28, 0xe
/* 800D1B9C  41 82 00 14 */	beq lbl_800D1BB0
/* 800D1BA0  2C 1C 00 08 */	cmpwi r28, 8
/* 800D1BA4  41 82 00 0C */	beq lbl_800D1BB0
/* 800D1BA8  2C 1C 00 0A */	cmpwi r28, 0xa
/* 800D1BAC  40 82 01 E4 */	bne lbl_800D1D90
lbl_800D1BB0:
/* 800D1BB0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 800D1BB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800D1BB8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D1BBC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800D1BC0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 800D1BC4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800D1BC8  38 61 00 2C */	addi r3, r1, 0x2c
/* 800D1BCC  48 27 55 6D */	bl PSVECSquareMag
/* 800D1BD0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D1BD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D1BD8  40 81 00 58 */	ble lbl_800D1C30
/* 800D1BDC  FC 00 08 34 */	frsqrte f0, f1
/* 800D1BE0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800D1BE4  FC 44 00 32 */	fmul f2, f4, f0
/* 800D1BE8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800D1BEC  FC 00 00 32 */	fmul f0, f0, f0
/* 800D1BF0  FC 01 00 32 */	fmul f0, f1, f0
/* 800D1BF4  FC 03 00 28 */	fsub f0, f3, f0
/* 800D1BF8  FC 02 00 32 */	fmul f0, f2, f0
/* 800D1BFC  FC 44 00 32 */	fmul f2, f4, f0
/* 800D1C00  FC 00 00 32 */	fmul f0, f0, f0
/* 800D1C04  FC 01 00 32 */	fmul f0, f1, f0
/* 800D1C08  FC 03 00 28 */	fsub f0, f3, f0
/* 800D1C0C  FC 02 00 32 */	fmul f0, f2, f0
/* 800D1C10  FC 44 00 32 */	fmul f2, f4, f0
/* 800D1C14  FC 00 00 32 */	fmul f0, f0, f0
/* 800D1C18  FC 01 00 32 */	fmul f0, f1, f0
/* 800D1C1C  FC 03 00 28 */	fsub f0, f3, f0
/* 800D1C20  FC 02 00 32 */	fmul f0, f2, f0
/* 800D1C24  FF E1 00 32 */	fmul f31, f1, f0
/* 800D1C28  FF E0 F8 18 */	frsp f31, f31
/* 800D1C2C  48 00 00 90 */	b lbl_800D1CBC
lbl_800D1C30:
/* 800D1C30  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800D1C34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D1C38  40 80 00 10 */	bge lbl_800D1C48
/* 800D1C3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800D1C40  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800D1C44  48 00 00 78 */	b lbl_800D1CBC
lbl_800D1C48:
/* 800D1C48  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800D1C4C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 800D1C50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800D1C54  3C 00 7F 80 */	lis r0, 0x7f80
/* 800D1C58  7C 03 00 00 */	cmpw r3, r0
/* 800D1C5C  41 82 00 14 */	beq lbl_800D1C70
/* 800D1C60  40 80 00 40 */	bge lbl_800D1CA0
/* 800D1C64  2C 03 00 00 */	cmpwi r3, 0
/* 800D1C68  41 82 00 20 */	beq lbl_800D1C88
/* 800D1C6C  48 00 00 34 */	b lbl_800D1CA0
lbl_800D1C70:
/* 800D1C70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800D1C74  41 82 00 0C */	beq lbl_800D1C80
/* 800D1C78  38 00 00 01 */	li r0, 1
/* 800D1C7C  48 00 00 28 */	b lbl_800D1CA4
lbl_800D1C80:
/* 800D1C80  38 00 00 02 */	li r0, 2
/* 800D1C84  48 00 00 20 */	b lbl_800D1CA4
lbl_800D1C88:
/* 800D1C88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800D1C8C  41 82 00 0C */	beq lbl_800D1C98
/* 800D1C90  38 00 00 05 */	li r0, 5
/* 800D1C94  48 00 00 10 */	b lbl_800D1CA4
lbl_800D1C98:
/* 800D1C98  38 00 00 03 */	li r0, 3
/* 800D1C9C  48 00 00 08 */	b lbl_800D1CA4
lbl_800D1CA0:
/* 800D1CA0  38 00 00 04 */	li r0, 4
lbl_800D1CA4:
/* 800D1CA4  2C 00 00 01 */	cmpwi r0, 1
/* 800D1CA8  40 82 00 10 */	bne lbl_800D1CB8
/* 800D1CAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800D1CB0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800D1CB4  48 00 00 08 */	b lbl_800D1CBC
lbl_800D1CB8:
/* 800D1CB8  FF E0 08 90 */	fmr f31, f1
lbl_800D1CBC:
/* 800D1CBC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 800D1CC0  FC 20 00 50 */	fneg f1, f0
/* 800D1CC4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 800D1CC8  FC 40 00 50 */	fneg f2, f0
/* 800D1CCC  48 19 59 A9 */	bl cM_atan2s__Fff
/* 800D1CD0  7C 7D 1B 78 */	mr r29, r3
/* 800D1CD4  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 800D1CD8  FC 40 F8 90 */	fmr f2, f31
/* 800D1CDC  48 19 59 99 */	bl cM_atan2s__Fff
/* 800D1CE0  7C 64 1B 78 */	mr r4, r3
/* 800D1CE4  38 61 00 24 */	addi r3, r1, 0x24
/* 800D1CE8  7F A5 EB 78 */	mr r5, r29
/* 800D1CEC  38 C0 00 00 */	li r6, 0
/* 800D1CF0  48 19 57 05 */	bl __ct__5csXyzFsss
/* 800D1CF4  2C 1C 00 05 */	cmpwi r28, 5
/* 800D1CF8  41 82 00 0C */	beq lbl_800D1D04
/* 800D1CFC  2C 1C 00 0E */	cmpwi r28, 0xe
/* 800D1D00  40 82 00 0C */	bne lbl_800D1D0C
lbl_800D1D04:
/* 800D1D04  3B 80 07 52 */	li r28, 0x752
/* 800D1D08  48 00 00 3C */	b lbl_800D1D44
lbl_800D1D0C:
/* 800D1D0C  2C 1C 00 08 */	cmpwi r28, 8
/* 800D1D10  40 82 00 0C */	bne lbl_800D1D1C
/* 800D1D14  3B 80 0A E3 */	li r28, 0xae3
/* 800D1D18  48 00 00 2C */	b lbl_800D1D44
lbl_800D1D1C:
/* 800D1D1C  3B 80 03 2E */	li r28, 0x32e
/* 800D1D20  C0 1E 1B 78 */	lfs f0, 0x1b78(r30)
/* 800D1D24  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800D1D28  C0 1E 1B 7C */	lfs f0, 0x1b7c(r30)
/* 800D1D2C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800D1D30  C0 1E 1B 80 */	lfs f0, 0x1b80(r30)
/* 800D1D34  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800D1D38  38 61 00 38 */	addi r3, r1, 0x38
/* 800D1D3C  38 80 00 02 */	li r4, 2
/* 800D1D40  48 0D 67 45 */	bl dKy_SordFlush_set__F4cXyzi
lbl_800D1D44:
/* 800D1D44  38 DE 1B 78 */	addi r6, r30, 0x1b78
/* 800D1D48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D1D4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D1D50  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800D1D54  38 80 00 00 */	li r4, 0
/* 800D1D58  90 81 00 08 */	stw r4, 8(r1)
/* 800D1D5C  38 00 FF FF */	li r0, -1
/* 800D1D60  90 01 00 0C */	stw r0, 0xc(r1)
/* 800D1D64  90 81 00 10 */	stw r4, 0x10(r1)
/* 800D1D68  90 81 00 14 */	stw r4, 0x14(r1)
/* 800D1D6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 800D1D70  38 80 00 00 */	li r4, 0
/* 800D1D74  7F 85 E3 78 */	mr r5, r28
/* 800D1D78  38 E0 00 00 */	li r7, 0
/* 800D1D7C  39 01 00 24 */	addi r8, r1, 0x24
/* 800D1D80  39 20 00 00 */	li r9, 0
/* 800D1D84  39 40 00 FF */	li r10, 0xff
/* 800D1D88  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800D1D8C  4B F7 AD 05 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_800D1D90:
/* 800D1D90  88 7E 12 A0 */	lbz r3, 0x12a0(r30)
/* 800D1D94  28 03 00 0E */	cmplwi r3, 0xe
/* 800D1D98  40 82 00 0C */	bne lbl_800D1DA4
/* 800D1D9C  3F A0 00 04 */	lis r29, 4
/* 800D1DA0  48 00 00 10 */	b lbl_800D1DB0
lbl_800D1DA4:
/* 800D1DA4  38 80 00 00 */	li r4, 0
/* 800D1DA8  4B FB 28 09 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 800D1DAC  7C 7D 1B 78 */	mr r29, r3
lbl_800D1DB0:
/* 800D1DB0  38 7E 1B 5C */	addi r3, r30, 0x1b5c
/* 800D1DB4  48 0D 97 0D */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 800D1DB8  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 800D1DBC  38 7E 2C A8 */	addi r3, r30, 0x2ca8
/* 800D1DC0  7F A4 EB 78 */	mr r4, r29
/* 800D1DC4  38 C0 00 00 */	li r6, 0
/* 800D1DC8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800D1DCC  48 1F 2A 49 */	bl startHitItemSE__14Z2CreatureLinkFUlUlP14Z2SoundObjBasef
/* 800D1DD0  7F C3 F3 78 */	mr r3, r30
/* 800D1DD4  7F E4 FB 78 */	mr r4, r31
/* 800D1DD8  48 00 22 91 */	bl procCutReverseInit__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800D1DDC  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800D1DE0  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800D1DE4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800D1DE8  48 00 00 14 */	b lbl_800D1DFC
lbl_800D1DEC:
/* 800D1DEC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800D1DF0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800D1DF4  90 01 00 6C */	stw r0, 0x6c(r1)
lbl_800D1DF8:
/* 800D1DF8  38 60 00 00 */	li r3, 0
lbl_800D1DFC:
/* 800D1DFC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 800D1E00  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 800D1E04  39 61 00 80 */	addi r11, r1, 0x80
/* 800D1E08  48 29 04 1D */	bl _restgpr_28
/* 800D1E0C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800D1E10  7C 08 03 A6 */	mtlr r0
/* 800D1E14  38 21 00 90 */	addi r1, r1, 0x90
/* 800D1E18  4E 80 00 20 */	blr 

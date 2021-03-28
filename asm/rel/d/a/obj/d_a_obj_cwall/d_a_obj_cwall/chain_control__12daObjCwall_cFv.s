lbl_80BD7AD4:
/* 80BD7AD4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80BD7AD8  7C 08 02 A6 */	mflr r0
/* 80BD7ADC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80BD7AE0  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80BD7AE4  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80BD7AE8  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80BD7AEC  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80BD7AF0  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80BD7AF4  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80BD7AF8  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80BD7AFC  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 80BD7B00  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80BD7B04  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 80BD7B08  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 80BD7B0C  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 80BD7B10  39 61 00 80 */	addi r11, r1, 0x80
/* 80BD7B14  4B 78 A6 AC */	b _savegpr_22
/* 80BD7B18  7C 79 1B 78 */	mr r25, r3
/* 80BD7B1C  3C 80 80 BE */	lis r4, l_wallBmd@ha
/* 80BD7B20  3B C4 9F A4 */	addi r30, r4, l_wallBmd@l
/* 80BD7B24  3B B9 0E 94 */	addi r29, r25, 0xe94
/* 80BD7B28  83 63 0E 8C */	lwz r27, 0xe8c(r3)
/* 80BD7B2C  7F A4 EB 78 */	mr r4, r29
/* 80BD7B30  4B FF FC 59 */	bl getChainBasePos__12daObjCwall_cFP4cXyz
/* 80BD7B34  7F BC EB 78 */	mr r28, r29
/* 80BD7B38  C3 7E 00 98 */	lfs f27, 0x98(r30)
/* 80BD7B3C  3B 40 00 01 */	li r26, 1
/* 80BD7B40  3B 00 00 04 */	li r24, 4
/* 80BD7B44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD7B48  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80BD7B4C  C3 9E 00 A4 */	lfs f28, 0xa4(r30)
/* 80BD7B50  C3 BE 00 64 */	lfs f29, 0x64(r30)
/* 80BD7B54  C3 DE 00 B0 */	lfs f30, 0xb0(r30)
/* 80BD7B58  C3 FE 00 B4 */	lfs f31, 0xb4(r30)
/* 80BD7B5C  3B BD 00 0C */	addi r29, r29, 0xc
lbl_80BD7B60:
/* 80BD7B60  88 19 0E 90 */	lbz r0, 0xe90(r25)
/* 80BD7B64  28 00 00 00 */	cmplwi r0, 0
/* 80BD7B68  41 82 00 4C */	beq lbl_80BD7BB4
/* 80BD7B6C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80BD7B70  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BD7B74  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80BD7B78  7D 89 03 A6 */	mtctr r12
/* 80BD7B7C  4E 80 04 21 */	bctrl 
/* 80BD7B80  2C 03 00 00 */	cmpwi r3, 0
/* 80BD7B84  40 82 00 30 */	bne lbl_80BD7BB4
/* 80BD7B88  C0 39 0F 50 */	lfs f1, 0xf50(r25)
/* 80BD7B8C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80BD7B90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD7B94  41 81 00 10 */	bgt lbl_80BD7BA4
/* 80BD7B98  88 19 0F 58 */	lbz r0, 0xf58(r25)
/* 80BD7B9C  28 00 00 00 */	cmplwi r0, 0
/* 80BD7BA0  41 82 00 10 */	beq lbl_80BD7BB0
lbl_80BD7BA4:
/* 80BD7BA4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80BD7BA8  EF 7B 00 32 */	fmuls f27, f27, f0
/* 80BD7BAC  48 00 00 08 */	b lbl_80BD7BB4
lbl_80BD7BB0:
/* 80BD7BB0  C3 7E 00 98 */	lfs f27, 0x98(r30)
lbl_80BD7BB4:
/* 80BD7BB4  3A F8 0E E8 */	addi r23, r24, 0xee8
/* 80BD7BB8  7F 79 BD 2E */	stfsx f27, r25, r23
/* 80BD7BBC  C3 5D 00 04 */	lfs f26, 4(r29)
/* 80BD7BC0  7C 19 BC 2E */	lfsx f0, r25, r23
/* 80BD7BC4  EC 1A 00 2A */	fadds f0, f26, f0
/* 80BD7BC8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BD7BCC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BD7BD0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BD7BD4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80BD7BD8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80BD7BDC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80BD7BE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BD7BE4  EC 01 E0 2A */	fadds f0, f1, f28
/* 80BD7BE8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BD7BEC  38 00 00 00 */	li r0, 0
/* 80BD7BF0  7E D9 D2 14 */	add r22, r25, r26
/* 80BD7BF4  98 16 0F 04 */	stb r0, 0xf04(r22)
/* 80BD7BF8  38 61 00 48 */	addi r3, r1, 0x48
/* 80BD7BFC  4B 44 60 C0 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80BD7C00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD7C04  41 82 00 34 */	beq lbl_80BD7C38
/* 80BD7C08  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80BD7C0C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80BD7C10  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80BD7C14  EC 21 00 2A */	fadds f1, f1, f0
/* 80BD7C18  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BD7C1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD7C20  40 81 00 18 */	ble lbl_80BD7C38
/* 80BD7C24  D0 3D 00 04 */	stfs f1, 4(r29)
/* 80BD7C28  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80BD7C2C  7C 19 BD 2E */	stfsx f0, r25, r23
/* 80BD7C30  38 00 00 01 */	li r0, 1
/* 80BD7C34  98 16 0F 04 */	stb r0, 0xf04(r22)
lbl_80BD7C38:
/* 80BD7C38  88 16 0F 04 */	lbz r0, 0xf04(r22)
/* 80BD7C3C  28 00 00 00 */	cmplwi r0, 0
/* 80BD7C40  40 82 00 54 */	bne lbl_80BD7C94
/* 80BD7C44  88 16 0F 03 */	lbz r0, 0xf03(r22)
/* 80BD7C48  28 00 00 00 */	cmplwi r0, 0
/* 80BD7C4C  41 82 00 1C */	beq lbl_80BD7C68
/* 80BD7C50  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80BD7C54  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BD7C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD7C5C  4C 41 13 82 */	cror 2, 1, 2
/* 80BD7C60  40 82 00 08 */	bne lbl_80BD7C68
/* 80BD7C64  D3 5D 00 04 */	stfs f26, 4(r29)
lbl_80BD7C68:
/* 80BD7C68  2C 1A 00 06 */	cmpwi r26, 6
/* 80BD7C6C  40 80 00 28 */	bge lbl_80BD7C94
/* 80BD7C70  88 16 0F 05 */	lbz r0, 0xf05(r22)
/* 80BD7C74  28 00 00 00 */	cmplwi r0, 0
/* 80BD7C78  41 82 00 1C */	beq lbl_80BD7C94
/* 80BD7C7C  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 80BD7C80  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BD7C84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD7C88  4C 41 13 82 */	cror 2, 1, 2
/* 80BD7C8C  40 82 00 08 */	bne lbl_80BD7C94
/* 80BD7C90  D3 5D 00 04 */	stfs f26, 4(r29)
lbl_80BD7C94:
/* 80BD7C94  38 61 00 30 */	addi r3, r1, 0x30
/* 80BD7C98  7F A4 EB 78 */	mr r4, r29
/* 80BD7C9C  7F 85 E3 78 */	mr r5, r28
/* 80BD7CA0  4B 68 EE 94 */	b __mi__4cXyzCFRC3Vec
/* 80BD7CA4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BD7CA8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BD7CAC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BD7CB0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BD7CB4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BD7CB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BD7CBC  38 61 00 3C */	addi r3, r1, 0x3c
/* 80BD7CC0  4B 76 F4 78 */	b PSVECSquareMag
/* 80BD7CC4  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80BD7CC8  40 81 00 58 */	ble lbl_80BD7D20
/* 80BD7CCC  FC 00 08 34 */	frsqrte f0, f1
/* 80BD7CD0  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80BD7CD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD7CD8  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80BD7CDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD7CE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD7CE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD7CE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD7CEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD7CF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD7CF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD7CF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD7CFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD7D00  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD7D04  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD7D08  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD7D0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD7D10  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD7D14  FF 41 00 32 */	fmul f26, f1, f0
/* 80BD7D18  FF 40 D0 18 */	frsp f26, f26
/* 80BD7D1C  48 00 00 90 */	b lbl_80BD7DAC
lbl_80BD7D20:
/* 80BD7D20  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80BD7D24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD7D28  40 80 00 10 */	bge lbl_80BD7D38
/* 80BD7D2C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD7D30  C3 43 0A E0 */	lfs f26, __float_nan@l(r3)
/* 80BD7D34  48 00 00 78 */	b lbl_80BD7DAC
lbl_80BD7D38:
/* 80BD7D38  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BD7D3C  80 81 00 08 */	lwz r4, 8(r1)
/* 80BD7D40  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD7D44  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD7D48  7C 03 00 00 */	cmpw r3, r0
/* 80BD7D4C  41 82 00 14 */	beq lbl_80BD7D60
/* 80BD7D50  40 80 00 40 */	bge lbl_80BD7D90
/* 80BD7D54  2C 03 00 00 */	cmpwi r3, 0
/* 80BD7D58  41 82 00 20 */	beq lbl_80BD7D78
/* 80BD7D5C  48 00 00 34 */	b lbl_80BD7D90
lbl_80BD7D60:
/* 80BD7D60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD7D64  41 82 00 0C */	beq lbl_80BD7D70
/* 80BD7D68  38 00 00 01 */	li r0, 1
/* 80BD7D6C  48 00 00 28 */	b lbl_80BD7D94
lbl_80BD7D70:
/* 80BD7D70  38 00 00 02 */	li r0, 2
/* 80BD7D74  48 00 00 20 */	b lbl_80BD7D94
lbl_80BD7D78:
/* 80BD7D78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD7D7C  41 82 00 0C */	beq lbl_80BD7D88
/* 80BD7D80  38 00 00 05 */	li r0, 5
/* 80BD7D84  48 00 00 10 */	b lbl_80BD7D94
lbl_80BD7D88:
/* 80BD7D88  38 00 00 03 */	li r0, 3
/* 80BD7D8C  48 00 00 08 */	b lbl_80BD7D94
lbl_80BD7D90:
/* 80BD7D90  38 00 00 04 */	li r0, 4
lbl_80BD7D94:
/* 80BD7D94  2C 00 00 01 */	cmpwi r0, 1
/* 80BD7D98  40 82 00 10 */	bne lbl_80BD7DA8
/* 80BD7D9C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD7DA0  C3 43 0A E0 */	lfs f26, __float_nan@l(r3)
/* 80BD7DA4  48 00 00 08 */	b lbl_80BD7DAC
lbl_80BD7DA8:
/* 80BD7DA8  FF 40 08 90 */	fmr f26, f1
lbl_80BD7DAC:
/* 80BD7DAC  38 61 00 24 */	addi r3, r1, 0x24
/* 80BD7DB0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80BD7DB4  4B 68 F1 94 */	b normalizeZP__4cXyzFv
/* 80BD7DB8  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80BD7DBC  2C 1A 00 06 */	cmpwi r26, 6
/* 80BD7DC0  40 82 00 08 */	bne lbl_80BD7DC8
/* 80BD7DC4  C0 3E 00 9C */	lfs f1, 0x9c(r30)
lbl_80BD7DC8:
/* 80BD7DC8  EC 01 F0 28 */	fsubs f0, f1, f30
/* 80BD7DCC  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 80BD7DD0  4C 40 13 82 */	cror 2, 0, 2
/* 80BD7DD4  40 82 00 08 */	bne lbl_80BD7DDC
/* 80BD7DD8  FF 40 00 90 */	fmr f26, f0
lbl_80BD7DDC:
/* 80BD7DDC  FC 1A 08 40 */	fcmpo cr0, f26, f1
/* 80BD7DE0  40 81 00 08 */	ble lbl_80BD7DE8
/* 80BD7DE4  FF 40 08 90 */	fmr f26, f1
lbl_80BD7DE8:
/* 80BD7DE8  38 61 00 18 */	addi r3, r1, 0x18
/* 80BD7DEC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80BD7DF0  FC 20 D0 90 */	fmr f1, f26
/* 80BD7DF4  4B 68 ED 90 */	b __ml__4cXyzCFf
/* 80BD7DF8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BD7DFC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BD7E00  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BD7E04  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BD7E08  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BD7E0C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BD7E10  38 61 00 0C */	addi r3, r1, 0xc
/* 80BD7E14  7F 84 E3 78 */	mr r4, r28
/* 80BD7E18  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80BD7E1C  4B 68 EC C8 */	b __pl__4cXyzCFRC3Vec
/* 80BD7E20  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BD7E24  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80BD7E28  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BD7E2C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BD7E30  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BD7E34  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80BD7E38  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80BD7E3C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BD7E40  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD7E44  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BD7E48  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80BD7E4C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80BD7E50  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BD7E54  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD7E58  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BD7E5C  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80BD7E60  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80BD7E64  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80BD7E68  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD7E6C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BD7E70  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 80BD7E74  7F BC EB 78 */	mr r28, r29
/* 80BD7E78  3B 5A 00 01 */	addi r26, r26, 1
/* 80BD7E7C  2C 1A 00 07 */	cmpwi r26, 7
/* 80BD7E80  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BD7E84  3B 18 00 04 */	addi r24, r24, 4
/* 80BD7E88  3B 7B 00 10 */	addi r27, r27, 0x10
/* 80BD7E8C  41 80 FC D4 */	blt lbl_80BD7B60
/* 80BD7E90  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80BD7E94  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80BD7E98  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80BD7E9C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80BD7EA0  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80BD7EA4  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80BD7EA8  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 80BD7EAC  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80BD7EB0  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 80BD7EB4  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 80BD7EB8  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 80BD7EBC  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 80BD7EC0  39 61 00 80 */	addi r11, r1, 0x80
/* 80BD7EC4  4B 78 A3 48 */	b _restgpr_22
/* 80BD7EC8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80BD7ECC  7C 08 03 A6 */	mtlr r0
/* 80BD7ED0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80BD7ED4  4E 80 00 20 */	blr 

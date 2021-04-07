lbl_804C2AB8:
/* 804C2AB8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804C2ABC  7C 08 02 A6 */	mflr r0
/* 804C2AC0  90 01 00 74 */	stw r0, 0x74(r1)
/* 804C2AC4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804C2AC8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804C2ACC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 804C2AD0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 804C2AD4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 804C2AD8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 804C2ADC  39 61 00 40 */	addi r11, r1, 0x40
/* 804C2AE0  4B E9 F6 ED */	bl _savegpr_25
/* 804C2AE4  7C 7E 1B 78 */	mr r30, r3
/* 804C2AE8  7C 99 23 78 */	mr r25, r4
/* 804C2AEC  7C BA 2B 78 */	mr r26, r5
/* 804C2AF0  7C DB 33 78 */	mr r27, r6
/* 804C2AF4  3C 60 80 4C */	lis r3, lit_3777@ha /* 0x804C64C8@ha */
/* 804C2AF8  3B E3 64 C8 */	addi r31, r3, lit_3777@l /* 0x804C64C8@l */
/* 804C2AFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C2B00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C2B04  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 804C2B08  8B 9E 08 4C */	lbz r28, 0x84c(r30)
/* 804C2B0C  C3 BE 08 CC */	lfs f29, 0x8cc(r30)
/* 804C2B10  C3 DE 08 D0 */	lfs f30, 0x8d0(r30)
/* 804C2B14  C0 3F 04 2C */	lfs f1, 0x42c(r31)
/* 804C2B18  4B DA 4E 3D */	bl cM_rndF__Ff
/* 804C2B1C  C0 1F 04 E0 */	lfs f0, 0x4e0(r31)
/* 804C2B20  EC 00 08 2A */	fadds f0, f0, f1
/* 804C2B24  FC 00 00 1E */	fctiwz f0, f0
/* 804C2B28  D8 01 00 08 */	stfd f0, 8(r1)
/* 804C2B2C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804C2B30  98 1E 08 4C */	stb r0, 0x84c(r30)
/* 804C2B34  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 804C2B38  D0 3E 08 CC */	stfs f1, 0x8cc(r30)
/* 804C2B3C  D0 3E 08 D0 */	stfs f1, 0x8d0(r30)
/* 804C2B40  28 19 00 00 */	cmplwi r25, 0
/* 804C2B44  41 82 00 4C */	beq lbl_804C2B90
/* 804C2B48  C0 7F 04 E4 */	lfs f3, 0x4e4(r31)
/* 804C2B4C  7F 40 07 34 */	extsh r0, r26
/* 804C2B50  C8 5F 00 C0 */	lfd f2, 0xc0(r31)
/* 804C2B54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C2B58  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C2B5C  3C 60 43 30 */	lis r3, 0x4330
/* 804C2B60  90 61 00 08 */	stw r3, 8(r1)
/* 804C2B64  C8 01 00 08 */	lfd f0, 8(r1)
/* 804C2B68  EC 00 10 28 */	fsubs f0, f0, f2
/* 804C2B6C  EC 03 00 32 */	fmuls f0, f3, f0
/* 804C2B70  7F 60 07 34 */	extsh r0, r27
/* 804C2B74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C2B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C2B7C  90 61 00 10 */	stw r3, 0x10(r1)
/* 804C2B80  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 804C2B84  EC 21 10 28 */	fsubs f1, f1, f2
/* 804C2B88  EC A3 00 72 */	fmuls f5, f3, f1
/* 804C2B8C  48 00 01 5C */	b lbl_804C2CE8
lbl_804C2B90:
/* 804C2B90  C0 5D 33 F4 */	lfs f2, 0x33f4(r29)
/* 804C2B94  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 804C2B98  40 82 00 10 */	bne lbl_804C2BA8
/* 804C2B9C  C0 1D 33 F8 */	lfs f0, 0x33f8(r29)
/* 804C2BA0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C2BA4  41 82 00 10 */	beq lbl_804C2BB4
lbl_804C2BA8:
/* 804C2BA8  FC 00 10 90 */	fmr f0, f2
/* 804C2BAC  C0 BD 33 F8 */	lfs f5, 0x33f8(r29)
/* 804C2BB0  48 00 01 38 */	b lbl_804C2CE8
lbl_804C2BB4:
/* 804C2BB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C2BB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C2BBC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 804C2BC0  28 00 00 00 */	cmplwi r0, 0
/* 804C2BC4  40 82 01 18 */	bne lbl_804C2CDC
/* 804C2BC8  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 804C2BCC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804C2BD0  41 82 01 0C */	beq lbl_804C2CDC
/* 804C2BD4  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 804C2BD8  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 804C2BDC  40 82 01 00 */	bne lbl_804C2CDC
/* 804C2BE0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804C2BE4  FC 00 02 10 */	fabs f0, f0
/* 804C2BE8  FC 40 00 18 */	frsp f2, f0
/* 804C2BEC  C0 1F 04 CC */	lfs f0, 0x4cc(r31)
/* 804C2BF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804C2BF4  40 80 00 E8 */	bge lbl_804C2CDC
/* 804C2BF8  28 1C 00 00 */	cmplwi r28, 0
/* 804C2BFC  41 82 00 18 */	beq lbl_804C2C14
/* 804C2C00  38 1C FF FF */	addi r0, r28, -1
/* 804C2C04  98 1E 08 4C */	stb r0, 0x84c(r30)
/* 804C2C08  D3 BE 08 CC */	stfs f29, 0x8cc(r30)
/* 804C2C0C  D3 DE 08 D0 */	stfs f30, 0x8d0(r30)
/* 804C2C10  48 00 00 C0 */	b lbl_804C2CD0
lbl_804C2C14:
/* 804C2C14  FC 01 E8 00 */	fcmpu cr0, f1, f29
/* 804C2C18  40 82 00 0C */	bne lbl_804C2C24
/* 804C2C1C  FC 01 F0 00 */	fcmpu cr0, f1, f30
/* 804C2C20  41 82 00 7C */	beq lbl_804C2C9C
lbl_804C2C24:
/* 804C2C24  4B DA 4C 49 */	bl cM_rnd__Fv
/* 804C2C28  C0 1F 04 64 */	lfs f0, 0x464(r31)
/* 804C2C2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C2C30  40 80 00 14 */	bge lbl_804C2C44
/* 804C2C34  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804C2C38  D0 1E 08 CC */	stfs f0, 0x8cc(r30)
/* 804C2C3C  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 804C2C40  48 00 00 90 */	b lbl_804C2CD0
lbl_804C2C44:
/* 804C2C44  C0 3E 08 CC */	lfs f1, 0x8cc(r30)
/* 804C2C48  C0 5E 08 D0 */	lfs f2, 0x8d0(r30)
/* 804C2C4C  4B DA 4A 29 */	bl cM_atan2s__Fff
/* 804C2C50  7C 7D 1B 78 */	mr r29, r3
/* 804C2C54  C0 3F 04 20 */	lfs f1, 0x420(r31)
/* 804C2C58  4B DA 4C FD */	bl cM_rndF__Ff
/* 804C2C5C  FC 00 08 1E */	fctiwz f0, f1
/* 804C2C60  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804C2C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C2C68  54 03 68 24 */	slwi r3, r0, 0xd
/* 804C2C6C  38 03 60 00 */	addi r0, r3, 0x6000
/* 804C2C70  7C 00 07 34 */	extsh r0, r0
/* 804C2C74  7C 1D 02 14 */	add r0, r29, r0
/* 804C2C78  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804C2C7C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804C2C80  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804C2C84  7C 03 04 2E */	lfsx f0, r3, r0
/* 804C2C88  D0 1E 08 CC */	stfs f0, 0x8cc(r30)
/* 804C2C8C  7C 63 02 14 */	add r3, r3, r0
/* 804C2C90  C0 03 00 04 */	lfs f0, 4(r3)
/* 804C2C94  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 804C2C98  48 00 00 38 */	b lbl_804C2CD0
lbl_804C2C9C:
/* 804C2C9C  C0 3F 04 E8 */	lfs f1, 0x4e8(r31)
/* 804C2CA0  4B DA 4C B5 */	bl cM_rndF__Ff
/* 804C2CA4  FC 00 08 1E */	fctiwz f0, f1
/* 804C2CA8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804C2CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C2CB0  54 00 6C 24 */	rlwinm r0, r0, 0xd, 0x10, 0x12
/* 804C2CB4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804C2CB8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804C2CBC  7C 03 04 2E */	lfsx f0, r3, r0
/* 804C2CC0  D0 1E 08 CC */	stfs f0, 0x8cc(r30)
/* 804C2CC4  7C 63 02 14 */	add r3, r3, r0
/* 804C2CC8  C0 03 00 04 */	lfs f0, 4(r3)
/* 804C2CCC  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
lbl_804C2CD0:
/* 804C2CD0  C0 BE 08 CC */	lfs f5, 0x8cc(r30)
/* 804C2CD4  C0 1E 08 D0 */	lfs f0, 0x8d0(r30)
/* 804C2CD8  48 00 00 10 */	b lbl_804C2CE8
lbl_804C2CDC:
/* 804C2CDC  7F C3 F3 78 */	mr r3, r30
/* 804C2CE0  4B FF FD 89 */	bl clearEyeMove__9daMidna_cFv
/* 804C2CE4  48 00 01 A8 */	b lbl_804C2E8C
lbl_804C2CE8:
/* 804C2CE8  3C 60 80 4C */	lis r3, struct_804C6CD8+0x1@ha /* 0x804C6CD9@ha */
/* 804C2CEC  88 03 6C D9 */	lbz r0, struct_804C6CD8+0x1@l(r3)  /* 0x804C6CD9@l */
/* 804C2CF0  28 00 00 00 */	cmplwi r0, 0
/* 804C2CF4  40 82 01 98 */	bne lbl_804C2E8C
/* 804C2CF8  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 804C2CFC  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 804C2D00  40 81 00 0C */	ble lbl_804C2D0C
/* 804C2D04  FC A0 08 90 */	fmr f5, f1
/* 804C2D08  48 00 00 14 */	b lbl_804C2D1C
lbl_804C2D0C:
/* 804C2D0C  C0 3F 03 98 */	lfs f1, 0x398(r31)
/* 804C2D10  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 804C2D14  40 80 00 08 */	bge lbl_804C2D1C
/* 804C2D18  FC A0 08 90 */	fmr f5, f1
lbl_804C2D1C:
/* 804C2D1C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 804C2D20  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804C2D24  40 81 00 0C */	ble lbl_804C2D30
/* 804C2D28  FC 00 08 90 */	fmr f0, f1
/* 804C2D2C  48 00 00 14 */	b lbl_804C2D40
lbl_804C2D30:
/* 804C2D30  C0 3F 03 98 */	lfs f1, 0x398(r31)
/* 804C2D34  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804C2D38  40 80 00 08 */	bge lbl_804C2D40
/* 804C2D3C  FC 00 08 90 */	fmr f0, f1
lbl_804C2D40:
/* 804C2D40  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 804C2D44  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 804C2D48  40 81 00 18 */	ble lbl_804C2D60
/* 804C2D4C  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 804C2D50  EC 21 01 72 */	fmuls f1, f1, f5
/* 804C2D54  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 804C2D58  EF E2 01 72 */	fmuls f31, f2, f5
/* 804C2D5C  48 00 00 14 */	b lbl_804C2D70
lbl_804C2D60:
/* 804C2D60  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 804C2D64  EC 21 01 72 */	fmuls f1, f1, f5
/* 804C2D68  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 804C2D6C  EF E2 01 72 */	fmuls f31, f2, f5
lbl_804C2D70:
/* 804C2D70  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 804C2D74  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804C2D78  40 81 00 10 */	ble lbl_804C2D88
/* 804C2D7C  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 804C2D80  EF C2 00 32 */	fmuls f30, f2, f0
/* 804C2D84  48 00 00 0C */	b lbl_804C2D90
lbl_804C2D88:
/* 804C2D88  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 804C2D8C  EF C2 00 32 */	fmuls f30, f2, f0
lbl_804C2D90:
/* 804C2D90  FF A0 F0 90 */	fmr f29, f30
/* 804C2D94  EC 65 01 72 */	fmuls f3, f5, f5
/* 804C2D98  EC 40 00 32 */	fmuls f2, f0, f0
/* 804C2D9C  EC 83 10 2A */	fadds f4, f3, f2
/* 804C2DA0  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 804C2DA4  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 804C2DA8  40 81 00 0C */	ble lbl_804C2DB4
/* 804C2DAC  FC 40 20 34 */	frsqrte f2, f4
/* 804C2DB0  EC 82 01 32 */	fmuls f4, f2, f4
lbl_804C2DB4:
/* 804C2DB4  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 804C2DB8  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 804C2DBC  40 81 00 58 */	ble lbl_804C2E14
/* 804C2DC0  EC 65 00 32 */	fmuls f3, f5, f0
/* 804C2DC4  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 804C2DC8  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 804C2DCC  40 80 00 28 */	bge lbl_804C2DF4
/* 804C2DD0  FC 40 2A 10 */	fabs f2, f5
/* 804C2DD4  FC 40 10 18 */	frsp f2, f2
/* 804C2DD8  EC 42 20 24 */	fdivs f2, f2, f4
/* 804C2DDC  EF FF 00 B2 */	fmuls f31, f31, f2
/* 804C2DE0  FC 00 02 10 */	fabs f0, f0
/* 804C2DE4  FC 00 00 18 */	frsp f0, f0
/* 804C2DE8  EC 00 20 24 */	fdivs f0, f0, f4
/* 804C2DEC  EF BD 00 32 */	fmuls f29, f29, f0
/* 804C2DF0  48 00 00 24 */	b lbl_804C2E14
lbl_804C2DF4:
/* 804C2DF4  FC 40 2A 10 */	fabs f2, f5
/* 804C2DF8  FC 40 10 18 */	frsp f2, f2
/* 804C2DFC  EC 42 20 24 */	fdivs f2, f2, f4
/* 804C2E00  EC 21 00 B2 */	fmuls f1, f1, f2
/* 804C2E04  FC 00 02 10 */	fabs f0, f0
/* 804C2E08  FC 00 00 18 */	frsp f0, f0
/* 804C2E0C  EC 00 20 24 */	fdivs f0, f0, f4
/* 804C2E10  EF DE 00 32 */	fmuls f30, f30, f0
lbl_804C2E14:
/* 804C2E14  38 00 00 01 */	li r0, 1
/* 804C2E18  3C 60 80 4C */	lis r3, struct_804C6CD8+0x0@ha /* 0x804C6CD8@ha */
/* 804C2E1C  98 03 6C D8 */	stb r0, struct_804C6CD8+0x0@l(r3)  /* 0x804C6CD8@l */
/* 804C2E20  80 7E 06 F0 */	lwz r3, 0x6f0(r30)
/* 804C2E24  38 63 00 FC */	addi r3, r3, 0xfc
/* 804C2E28  C0 5F 04 64 */	lfs f2, 0x464(r31)
/* 804C2E2C  C0 7F 04 C4 */	lfs f3, 0x4c4(r31)
/* 804C2E30  C0 9F 04 F4 */	lfs f4, 0x4f4(r31)
/* 804C2E34  4B DA CB 49 */	bl cLib_addCalc__FPfffff
/* 804C2E38  80 7E 06 F4 */	lwz r3, 0x6f4(r30)
/* 804C2E3C  38 63 00 FC */	addi r3, r3, 0xfc
/* 804C2E40  FC 20 F8 90 */	fmr f1, f31
/* 804C2E44  C0 5F 04 64 */	lfs f2, 0x464(r31)
/* 804C2E48  C0 7F 04 C4 */	lfs f3, 0x4c4(r31)
/* 804C2E4C  C0 9F 04 F4 */	lfs f4, 0x4f4(r31)
/* 804C2E50  4B DA CB 2D */	bl cLib_addCalc__FPfffff
/* 804C2E54  80 7E 06 F0 */	lwz r3, 0x6f0(r30)
/* 804C2E58  38 63 01 00 */	addi r3, r3, 0x100
/* 804C2E5C  FC 20 F0 90 */	fmr f1, f30
/* 804C2E60  C0 5F 04 64 */	lfs f2, 0x464(r31)
/* 804C2E64  C0 7F 04 C4 */	lfs f3, 0x4c4(r31)
/* 804C2E68  C0 9F 04 F4 */	lfs f4, 0x4f4(r31)
/* 804C2E6C  4B DA CB 11 */	bl cLib_addCalc__FPfffff
/* 804C2E70  80 7E 06 F4 */	lwz r3, 0x6f4(r30)
/* 804C2E74  38 63 01 00 */	addi r3, r3, 0x100
/* 804C2E78  FC 20 E8 90 */	fmr f1, f29
/* 804C2E7C  C0 5F 04 64 */	lfs f2, 0x464(r31)
/* 804C2E80  C0 7F 04 C4 */	lfs f3, 0x4c4(r31)
/* 804C2E84  C0 9F 04 F4 */	lfs f4, 0x4f4(r31)
/* 804C2E88  4B DA CA F5 */	bl cLib_addCalc__FPfffff
lbl_804C2E8C:
/* 804C2E8C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804C2E90  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804C2E94  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 804C2E98  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 804C2E9C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 804C2EA0  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 804C2EA4  39 61 00 40 */	addi r11, r1, 0x40
/* 804C2EA8  4B E9 F3 71 */	bl _restgpr_25
/* 804C2EAC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804C2EB0  7C 08 03 A6 */	mtlr r0
/* 804C2EB4  38 21 00 70 */	addi r1, r1, 0x70
/* 804C2EB8  4E 80 00 20 */	blr 

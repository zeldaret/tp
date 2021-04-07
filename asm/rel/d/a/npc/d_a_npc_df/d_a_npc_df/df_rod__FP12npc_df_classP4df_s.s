lbl_809A59DC:
/* 809A59DC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 809A59E0  7C 08 02 A6 */	mflr r0
/* 809A59E4  90 01 00 94 */	stw r0, 0x94(r1)
/* 809A59E8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 809A59EC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 809A59F0  39 61 00 80 */	addi r11, r1, 0x80
/* 809A59F4  4B 9B C7 E5 */	bl _savegpr_28
/* 809A59F8  7C 7C 1B 78 */	mr r28, r3
/* 809A59FC  7C 9D 23 78 */	mr r29, r4
/* 809A5A00  3C 60 80 9A */	lis r3, lit_3748@ha /* 0x809A68A4@ha */
/* 809A5A04  3B E3 68 A4 */	addi r31, r3, lit_3748@l /* 0x809A68A4@l */
/* 809A5A08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A5A0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A5A10  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 809A5A14  3C 60 80 9A */	lis r3, lrl@ha /* 0x809A6A50@ha */
/* 809A5A18  38 83 6A 50 */	addi r4, r3, lrl@l /* 0x809A6A50@l */
/* 809A5A1C  80 04 00 00 */	lwz r0, 0(r4)
/* 809A5A20  28 00 00 00 */	cmplwi r0, 0
/* 809A5A24  40 82 00 B4 */	bne lbl_809A5AD8
/* 809A5A28  38 00 00 01 */	li r0, 1
/* 809A5A2C  98 1D 00 74 */	stb r0, 0x74(r29)
/* 809A5A30  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 809A5A34  4B 8C 1F 59 */	bl cM_rndFX__Ff
/* 809A5A38  FC 00 08 1E */	fctiwz f0, f1
/* 809A5A3C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 809A5A40  80 61 00 54 */	lwz r3, 0x54(r1)
/* 809A5A44  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 809A5A48  7C 00 1A 14 */	add r0, r0, r3
/* 809A5A4C  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 809A5A50  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 809A5A54  4B 8C 1F 01 */	bl cM_rndF__Ff
/* 809A5A58  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 809A5A5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A5A60  FC 00 00 1E */	fctiwz f0, f0
/* 809A5A64  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 809A5A68  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 809A5A6C  B0 1D 00 4A */	sth r0, 0x4a(r29)
/* 809A5A70  B0 1D 00 44 */	sth r0, 0x44(r29)
/* 809A5A74  38 00 00 01 */	li r0, 1
/* 809A5A78  98 1D 00 75 */	stb r0, 0x75(r29)
/* 809A5A7C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 809A5A80  4B 8C 1E D5 */	bl cM_rndF__Ff
/* 809A5A84  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 809A5A88  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5A8C  FC 00 00 1E */	fctiwz f0, f0
/* 809A5A90  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809A5A94  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809A5A98  98 1D 00 78 */	stb r0, 0x78(r29)
/* 809A5A9C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 809A5AA0  4B 8C 1E B5 */	bl cM_rndF__Ff
/* 809A5AA4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 809A5AA8  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5AAC  D0 1D 00 54 */	stfs f0, 0x54(r29)
/* 809A5AB0  D0 1D 00 50 */	stfs f0, 0x50(r29)
/* 809A5AB4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 809A5AB8  4B 8C 1E 9D */	bl cM_rndF__Ff
/* 809A5ABC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 809A5AC0  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5AC4  FC 00 00 1E */	fctiwz f0, f0
/* 809A5AC8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 809A5ACC  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 809A5AD0  98 1D 00 79 */	stb r0, 0x79(r29)
/* 809A5AD4  48 00 06 0C */	b lbl_809A60E0
lbl_809A5AD8:
/* 809A5AD8  C3 FF 00 7C */	lfs f31, 0x7c(r31)
/* 809A5ADC  88 7D 00 75 */	lbz r3, 0x75(r29)
/* 809A5AE0  7C 60 07 75 */	extsb. r0, r3
/* 809A5AE4  40 82 01 08 */	bne lbl_809A5BEC
/* 809A5AE8  38 00 00 01 */	li r0, 1
/* 809A5AEC  98 1D 00 75 */	stb r0, 0x75(r29)
/* 809A5AF0  80 64 00 00 */	lwz r3, 0(r4)
/* 809A5AF4  A8 03 0F 7C */	lha r0, 0xf7c(r3)
/* 809A5AF8  2C 00 00 00 */	cmpwi r0, 0
/* 809A5AFC  40 82 00 28 */	bne lbl_809A5B24
/* 809A5B00  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 809A5B04  4B 8C 1E 51 */	bl cM_rndF__Ff
/* 809A5B08  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809A5B0C  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5B10  FC 00 00 1E */	fctiwz f0, f0
/* 809A5B14  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 809A5B18  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 809A5B1C  98 1D 00 7B */	stb r0, 0x7b(r29)
/* 809A5B20  48 00 00 24 */	b lbl_809A5B44
lbl_809A5B24:
/* 809A5B24  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 809A5B28  4B 8C 1E 2D */	bl cM_rndF__Ff
/* 809A5B2C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 809A5B30  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5B34  FC 00 00 1E */	fctiwz f0, f0
/* 809A5B38  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 809A5B3C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 809A5B40  98 1D 00 7B */	stb r0, 0x7b(r29)
lbl_809A5B44:
/* 809A5B44  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 809A5B48  4B 8C 1E 0D */	bl cM_rndF__Ff
/* 809A5B4C  D0 3D 00 64 */	stfs f1, 0x64(r29)
/* 809A5B50  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 809A5B54  4B 8C 1E 01 */	bl cM_rndF__Ff
/* 809A5B58  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 809A5B5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A5B60  40 80 00 10 */	bge lbl_809A5B70
/* 809A5B64  38 00 80 00 */	li r0, -32768
/* 809A5B68  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 809A5B6C  48 00 00 0C */	b lbl_809A5B78
lbl_809A5B70:
/* 809A5B70  38 00 00 00 */	li r0, 0
/* 809A5B74  B0 1D 00 6E */	sth r0, 0x6e(r29)
lbl_809A5B78:
/* 809A5B78  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 809A5B7C  4B 8C 1E 11 */	bl cM_rndFX__Ff
/* 809A5B80  D0 3D 00 2C */	stfs f1, 0x2c(r29)
/* 809A5B84  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 809A5B88  4B 8C 1E 05 */	bl cM_rndFX__Ff
/* 809A5B8C  D0 3D 00 34 */	stfs f1, 0x34(r29)
/* 809A5B90  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 809A5B94  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 809A5B98  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 809A5B9C  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 809A5BA0  3C 60 80 9A */	lis r3, lrl@ha /* 0x809A6A50@ha */
/* 809A5BA4  80 83 6A 50 */	lwz r4, lrl@l(r3)  /* 0x809A6A50@l */
/* 809A5BA8  88 1D 00 7B */	lbz r0, 0x7b(r29)
/* 809A5BAC  1C 60 00 0C */	mulli r3, r0, 0xc
/* 809A5BB0  38 63 05 A4 */	addi r3, r3, 0x5a4
/* 809A5BB4  7C 64 1A 14 */	add r3, r4, r3
/* 809A5BB8  C0 03 00 00 */	lfs f0, 0(r3)
/* 809A5BBC  D0 1D 00 08 */	stfs f0, 8(r29)
/* 809A5BC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A5BC4  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 809A5BC8  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A5BCC  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 809A5BD0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 809A5BD4  4B 8C 1D 81 */	bl cM_rndF__Ff
/* 809A5BD8  FC 00 08 50 */	fneg f0, f1
/* 809A5BDC  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 809A5BE0  38 00 00 00 */	li r0, 0
/* 809A5BE4  98 1D 00 78 */	stb r0, 0x78(r29)
/* 809A5BE8  48 00 01 40 */	b lbl_809A5D28
lbl_809A5BEC:
/* 809A5BEC  7C 60 07 74 */	extsb r0, r3
/* 809A5BF0  2C 00 00 01 */	cmpwi r0, 1
/* 809A5BF4  40 82 00 FC */	bne lbl_809A5CF0
/* 809A5BF8  C3 FF 00 48 */	lfs f31, 0x48(r31)
/* 809A5BFC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 809A5C00  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 809A5C04  88 1D 00 79 */	lbz r0, 0x79(r29)
/* 809A5C08  28 00 00 00 */	cmplwi r0, 0
/* 809A5C0C  40 82 00 3C */	bne lbl_809A5C48
/* 809A5C10  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 809A5C14  4B 8C 1D 79 */	bl cM_rndFX__Ff
/* 809A5C18  D0 3D 00 38 */	stfs f1, 0x38(r29)
/* 809A5C1C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 809A5C20  4B 8C 1D 6D */	bl cM_rndFX__Ff
/* 809A5C24  D0 3D 00 40 */	stfs f1, 0x40(r29)
/* 809A5C28  C0 3F 00 04 */	lfs f1, 4(r31)
/* 809A5C2C  4B 8C 1D 29 */	bl cM_rndF__Ff
/* 809A5C30  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 809A5C34  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5C38  FC 00 00 1E */	fctiwz f0, f0
/* 809A5C3C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 809A5C40  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 809A5C44  98 1D 00 79 */	stb r0, 0x79(r29)
lbl_809A5C48:
/* 809A5C48  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 809A5C4C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 809A5C50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A5C54  40 80 00 34 */	bge lbl_809A5C88
/* 809A5C58  38 7D 00 46 */	addi r3, r29, 0x46
/* 809A5C5C  3C 80 80 9A */	lis r4, lrl@ha /* 0x809A6A50@ha */
/* 809A5C60  38 84 6A 50 */	addi r4, r4, lrl@l /* 0x809A6A50@l */
/* 809A5C64  80 84 00 00 */	lwz r4, 0(r4)
/* 809A5C68  A8 84 06 C4 */	lha r4, 0x6c4(r4)
/* 809A5C6C  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 809A5C70  7C 04 02 14 */	add r0, r4, r0
/* 809A5C74  7C 04 07 34 */	extsh r4, r0
/* 809A5C78  38 A0 00 04 */	li r5, 4
/* 809A5C7C  38 C0 04 00 */	li r6, 0x400
/* 809A5C80  4B 8C A9 89 */	bl cLib_addCalcAngleS2__FPssss
/* 809A5C84  48 00 00 50 */	b lbl_809A5CD4
lbl_809A5C88:
/* 809A5C88  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 809A5C8C  FC 00 12 10 */	fabs f0, f2
/* 809A5C90  FC 00 00 18 */	frsp f0, f0
/* 809A5C94  C0 3F 00 04 */	lfs f1, 4(r31)
/* 809A5C98  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809A5C9C  40 81 00 38 */	ble lbl_809A5CD4
/* 809A5CA0  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 809A5CA4  FC 60 02 10 */	fabs f3, f0
/* 809A5CA8  FC 60 18 18 */	frsp f3, f3
/* 809A5CAC  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 809A5CB0  40 81 00 24 */	ble lbl_809A5CD4
/* 809A5CB4  FC 20 10 50 */	fneg f1, f2
/* 809A5CB8  FC 40 00 50 */	fneg f2, f0
/* 809A5CBC  4B 8C 19 B9 */	bl cM_atan2s__Fff
/* 809A5CC0  7C 64 1B 78 */	mr r4, r3
/* 809A5CC4  38 7D 00 46 */	addi r3, r29, 0x46
/* 809A5CC8  38 A0 00 04 */	li r5, 4
/* 809A5CCC  38 C0 04 00 */	li r6, 0x400
/* 809A5CD0  4B 8C A9 39 */	bl cLib_addCalcAngleS2__FPssss
lbl_809A5CD4:
/* 809A5CD4  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 809A5CD8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809A5CDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A5CE0  40 80 00 48 */	bge lbl_809A5D28
/* 809A5CE4  38 00 00 02 */	li r0, 2
/* 809A5CE8  98 1D 00 75 */	stb r0, 0x75(r29)
/* 809A5CEC  48 00 00 3C */	b lbl_809A5D28
lbl_809A5CF0:
/* 809A5CF0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809A5CF4  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 809A5CF8  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 809A5CFC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 809A5D00  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 809A5D04  38 7D 00 46 */	addi r3, r29, 0x46
/* 809A5D08  80 84 00 00 */	lwz r4, 0(r4)
/* 809A5D0C  A8 84 06 C4 */	lha r4, 0x6c4(r4)
/* 809A5D10  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 809A5D14  7C 04 02 14 */	add r0, r4, r0
/* 809A5D18  7C 04 07 34 */	extsh r4, r0
/* 809A5D1C  38 A0 00 02 */	li r5, 2
/* 809A5D20  38 C0 08 00 */	li r6, 0x800
/* 809A5D24  4B 8C A8 E5 */	bl cLib_addCalcAngleS2__FPssss
lbl_809A5D28:
/* 809A5D28  88 BD 00 7B */	lbz r5, 0x7b(r29)
/* 809A5D2C  3C 60 80 9A */	lis r3, lrl@ha /* 0x809A6A50@ha */
/* 809A5D30  80 C3 6A 50 */	lwz r6, lrl@l(r3)  /* 0x809A6A50@l */
/* 809A5D34  38 61 00 34 */	addi r3, r1, 0x34
/* 809A5D38  38 05 00 01 */	addi r0, r5, 1
/* 809A5D3C  1C 80 00 0C */	mulli r4, r0, 0xc
/* 809A5D40  38 84 05 A4 */	addi r4, r4, 0x5a4
/* 809A5D44  7C 86 22 14 */	add r4, r6, r4
/* 809A5D48  1C A5 00 0C */	mulli r5, r5, 0xc
/* 809A5D4C  38 A5 05 A4 */	addi r5, r5, 0x5a4
/* 809A5D50  7C A6 2A 14 */	add r5, r6, r5
/* 809A5D54  4B 8C 0D E1 */	bl __mi__4cXyzCFRC3Vec
/* 809A5D58  38 61 00 28 */	addi r3, r1, 0x28
/* 809A5D5C  38 81 00 34 */	addi r4, r1, 0x34
/* 809A5D60  C0 3D 00 64 */	lfs f1, 0x64(r29)
/* 809A5D64  4B 8C 0E 21 */	bl __ml__4cXyzCFf
/* 809A5D68  38 61 00 1C */	addi r3, r1, 0x1c
/* 809A5D6C  3C 80 80 9A */	lis r4, lrl@ha /* 0x809A6A50@ha */
/* 809A5D70  80 A4 6A 50 */	lwz r5, lrl@l(r4)  /* 0x809A6A50@l */
/* 809A5D74  88 1D 00 7B */	lbz r0, 0x7b(r29)
/* 809A5D78  1C 80 00 0C */	mulli r4, r0, 0xc
/* 809A5D7C  38 84 05 A4 */	addi r4, r4, 0x5a4
/* 809A5D80  7C 85 22 14 */	add r4, r5, r4
/* 809A5D84  38 A1 00 28 */	addi r5, r1, 0x28
/* 809A5D88  4B 8C 0D 5D */	bl __pl__4cXyzCFRC3Vec
/* 809A5D8C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809A5D90  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809A5D94  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809A5D98  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809A5D9C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809A5DA0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809A5DA4  38 61 00 10 */	addi r3, r1, 0x10
/* 809A5DA8  38 9C 0D 34 */	addi r4, r28, 0xd34
/* 809A5DAC  3C A0 80 9A */	lis r5, lrl@ha /* 0x809A6A50@ha */
/* 809A5DB0  38 A5 6A 50 */	addi r5, r5, lrl@l /* 0x809A6A50@l */
/* 809A5DB4  80 A5 00 00 */	lwz r5, 0(r5)
/* 809A5DB8  38 A5 06 04 */	addi r5, r5, 0x604
/* 809A5DBC  4B 8C 0D 79 */	bl __mi__4cXyzCFRC3Vec
/* 809A5DC0  38 61 00 10 */	addi r3, r1, 0x10
/* 809A5DC4  4B 9A 13 75 */	bl PSVECSquareMag
/* 809A5DC8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809A5DCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A5DD0  40 81 00 58 */	ble lbl_809A5E28
/* 809A5DD4  FC 00 08 34 */	frsqrte f0, f1
/* 809A5DD8  C8 9F 00 A0 */	lfd f4, 0xa0(r31)
/* 809A5DDC  FC 44 00 32 */	fmul f2, f4, f0
/* 809A5DE0  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 809A5DE4  FC 00 00 32 */	fmul f0, f0, f0
/* 809A5DE8  FC 01 00 32 */	fmul f0, f1, f0
/* 809A5DEC  FC 03 00 28 */	fsub f0, f3, f0
/* 809A5DF0  FC 02 00 32 */	fmul f0, f2, f0
/* 809A5DF4  FC 44 00 32 */	fmul f2, f4, f0
/* 809A5DF8  FC 00 00 32 */	fmul f0, f0, f0
/* 809A5DFC  FC 01 00 32 */	fmul f0, f1, f0
/* 809A5E00  FC 03 00 28 */	fsub f0, f3, f0
/* 809A5E04  FC 02 00 32 */	fmul f0, f2, f0
/* 809A5E08  FC 44 00 32 */	fmul f2, f4, f0
/* 809A5E0C  FC 00 00 32 */	fmul f0, f0, f0
/* 809A5E10  FC 01 00 32 */	fmul f0, f1, f0
/* 809A5E14  FC 03 00 28 */	fsub f0, f3, f0
/* 809A5E18  FC 02 00 32 */	fmul f0, f2, f0
/* 809A5E1C  FC 21 00 32 */	fmul f1, f1, f0
/* 809A5E20  FC 20 08 18 */	frsp f1, f1
/* 809A5E24  48 00 00 88 */	b lbl_809A5EAC
lbl_809A5E28:
/* 809A5E28  C8 1F 00 B0 */	lfd f0, 0xb0(r31)
/* 809A5E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A5E30  40 80 00 10 */	bge lbl_809A5E40
/* 809A5E34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A5E38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809A5E3C  48 00 00 70 */	b lbl_809A5EAC
lbl_809A5E40:
/* 809A5E40  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809A5E44  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809A5E48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809A5E4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 809A5E50  7C 03 00 00 */	cmpw r3, r0
/* 809A5E54  41 82 00 14 */	beq lbl_809A5E68
/* 809A5E58  40 80 00 40 */	bge lbl_809A5E98
/* 809A5E5C  2C 03 00 00 */	cmpwi r3, 0
/* 809A5E60  41 82 00 20 */	beq lbl_809A5E80
/* 809A5E64  48 00 00 34 */	b lbl_809A5E98
lbl_809A5E68:
/* 809A5E68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A5E6C  41 82 00 0C */	beq lbl_809A5E78
/* 809A5E70  38 00 00 01 */	li r0, 1
/* 809A5E74  48 00 00 28 */	b lbl_809A5E9C
lbl_809A5E78:
/* 809A5E78  38 00 00 02 */	li r0, 2
/* 809A5E7C  48 00 00 20 */	b lbl_809A5E9C
lbl_809A5E80:
/* 809A5E80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A5E84  41 82 00 0C */	beq lbl_809A5E90
/* 809A5E88  38 00 00 05 */	li r0, 5
/* 809A5E8C  48 00 00 10 */	b lbl_809A5E9C
lbl_809A5E90:
/* 809A5E90  38 00 00 03 */	li r0, 3
/* 809A5E94  48 00 00 08 */	b lbl_809A5E9C
lbl_809A5E98:
/* 809A5E98  38 00 00 04 */	li r0, 4
lbl_809A5E9C:
/* 809A5E9C  2C 00 00 01 */	cmpwi r0, 1
/* 809A5EA0  40 82 00 0C */	bne lbl_809A5EAC
/* 809A5EA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A5EA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_809A5EAC:
/* 809A5EAC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 809A5EB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A5EB4  41 81 00 28 */	bgt lbl_809A5EDC
/* 809A5EB8  3C 60 80 9A */	lis r3, lrl@ha /* 0x809A6A50@ha */
/* 809A5EBC  38 63 6A 50 */	addi r3, r3, lrl@l /* 0x809A6A50@l */
/* 809A5EC0  80 63 00 00 */	lwz r3, 0(r3)
/* 809A5EC4  C0 43 06 B0 */	lfs f2, 0x6b0(r3)
/* 809A5EC8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 809A5ECC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809A5ED0  EC 01 00 2A */	fadds f0, f1, f0
/* 809A5ED4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 809A5ED8  40 81 00 B4 */	ble lbl_809A5F8C
lbl_809A5EDC:
/* 809A5EDC  38 00 00 01 */	li r0, 1
/* 809A5EE0  98 1D 00 74 */	stb r0, 0x74(r29)
/* 809A5EE4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 809A5EE8  4B 8C 1A A5 */	bl cM_rndFX__Ff
/* 809A5EEC  FC 00 08 1E */	fctiwz f0, f1
/* 809A5EF0  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 809A5EF4  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 809A5EF8  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 809A5EFC  7C 00 1A 14 */	add r0, r0, r3
/* 809A5F00  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 809A5F04  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 809A5F08  4B 8C 1A 4D */	bl cM_rndF__Ff
/* 809A5F0C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 809A5F10  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A5F14  FC 00 00 1E */	fctiwz f0, f0
/* 809A5F18  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809A5F1C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809A5F20  B0 1D 00 4A */	sth r0, 0x4a(r29)
/* 809A5F24  B0 1D 00 44 */	sth r0, 0x44(r29)
/* 809A5F28  38 00 00 01 */	li r0, 1
/* 809A5F2C  98 1D 00 75 */	stb r0, 0x75(r29)
/* 809A5F30  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 809A5F34  4B 8C 1A 21 */	bl cM_rndF__Ff
/* 809A5F38  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 809A5F3C  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5F40  FC 00 00 1E */	fctiwz f0, f0
/* 809A5F44  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 809A5F48  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 809A5F4C  98 1D 00 78 */	stb r0, 0x78(r29)
/* 809A5F50  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 809A5F54  4B 8C 1A 01 */	bl cM_rndF__Ff
/* 809A5F58  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 809A5F5C  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5F60  D0 1D 00 54 */	stfs f0, 0x54(r29)
/* 809A5F64  D0 1D 00 50 */	stfs f0, 0x50(r29)
/* 809A5F68  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 809A5F6C  4B 8C 19 E9 */	bl cM_rndF__Ff
/* 809A5F70  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 809A5F74  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5F78  FC 00 00 1E */	fctiwz f0, f0
/* 809A5F7C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 809A5F80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809A5F84  98 1D 00 79 */	stb r0, 0x79(r29)
/* 809A5F88  48 00 01 58 */	b lbl_809A60E0
lbl_809A5F8C:
/* 809A5F8C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 809A5F90  D0 1D 00 08 */	stfs f0, 8(r29)
/* 809A5F94  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 809A5F98  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 809A5F9C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 809A5FA0  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 809A5FA4  38 7D 00 2C */	addi r3, r29, 0x2c
/* 809A5FA8  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 809A5FAC  FC 40 F8 90 */	fmr f2, f31
/* 809A5FB0  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 809A5FB4  4B 8C 9A 89 */	bl cLib_addCalc2__FPffff
/* 809A5FB8  38 7D 00 30 */	addi r3, r29, 0x30
/* 809A5FBC  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 809A5FC0  FC 40 F8 90 */	fmr f2, f31
/* 809A5FC4  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 809A5FC8  4B 8C 9A 75 */	bl cLib_addCalc2__FPffff
/* 809A5FCC  38 7D 00 34 */	addi r3, r29, 0x34
/* 809A5FD0  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 809A5FD4  FC 40 F8 90 */	fmr f2, f31
/* 809A5FD8  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 809A5FDC  4B 8C 9A 61 */	bl cLib_addCalc2__FPffff
/* 809A5FE0  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 809A5FE4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 809A5FE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A5FEC  40 80 00 B8 */	bge lbl_809A60A4
/* 809A5FF0  88 1D 00 78 */	lbz r0, 0x78(r29)
/* 809A5FF4  28 00 00 00 */	cmplwi r0, 0
/* 809A5FF8  40 82 00 6C */	bne lbl_809A6064
/* 809A5FFC  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 809A6000  4B 8C 19 55 */	bl cM_rndF__Ff
/* 809A6004  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 809A6008  EC 00 08 2A */	fadds f0, f0, f1
/* 809A600C  FC 00 00 1E */	fctiwz f0, f0
/* 809A6010  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 809A6014  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 809A6018  98 1D 00 78 */	stb r0, 0x78(r29)
/* 809A601C  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 809A6020  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 809A6024  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A6028  40 81 00 0C */	ble lbl_809A6034
/* 809A602C  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 809A6030  48 00 00 34 */	b lbl_809A6064
lbl_809A6034:
/* 809A6034  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809A6038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A603C  40 81 00 0C */	ble lbl_809A6048
/* 809A6040  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 809A6044  48 00 00 20 */	b lbl_809A6064
lbl_809A6048:
/* 809A6048  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 809A604C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A6050  40 81 00 0C */	ble lbl_809A605C
/* 809A6054  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 809A6058  48 00 00 0C */	b lbl_809A6064
lbl_809A605C:
/* 809A605C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 809A6060  D0 1D 00 60 */	stfs f0, 0x60(r29)
lbl_809A6064:
/* 809A6064  38 7D 00 5C */	addi r3, r29, 0x5c
/* 809A6068  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 809A606C  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 809A6070  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 809A6074  4B 8C 99 C9 */	bl cLib_addCalc2__FPffff
/* 809A6078  38 00 02 55 */	li r0, 0x255
/* 809A607C  B0 01 00 08 */	sth r0, 8(r1)
/* 809A6080  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 809A6084  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 809A6088  38 81 00 08 */	addi r4, r1, 8
/* 809A608C  4B 67 37 6D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 809A6090  28 03 00 00 */	cmplwi r3, 0
/* 809A6094  41 82 00 4C */	beq lbl_809A60E0
/* 809A6098  38 00 00 0A */	li r0, 0xa
/* 809A609C  98 03 07 B8 */	stb r0, 0x7b8(r3)
/* 809A60A0  48 00 00 40 */	b lbl_809A60E0
lbl_809A60A4:
/* 809A60A4  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 809A60A8  A8 1D 00 6C */	lha r0, 0x6c(r29)
/* 809A60AC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 809A60B0  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 809A60B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A60B8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 809A60BC  3C 00 43 30 */	lis r0, 0x4330
/* 809A60C0  90 01 00 68 */	stw r0, 0x68(r1)
/* 809A60C4  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 809A60C8  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A60CC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 809A60D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A60D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 809A60D8  EC 02 00 2A */	fadds f0, f2, f0
/* 809A60DC  D0 1D 00 5C */	stfs f0, 0x5c(r29)
lbl_809A60E0:
/* 809A60E0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 809A60E4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 809A60E8  39 61 00 80 */	addi r11, r1, 0x80
/* 809A60EC  4B 9B C1 39 */	bl _restgpr_28
/* 809A60F0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 809A60F4  7C 08 03 A6 */	mtlr r0
/* 809A60F8  38 21 00 90 */	addi r1, r1, 0x90
/* 809A60FC  4E 80 00 20 */	blr 

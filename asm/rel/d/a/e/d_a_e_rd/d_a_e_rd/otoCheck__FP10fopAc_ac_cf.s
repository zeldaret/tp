lbl_80505A94:
/* 80505A94  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80505A98  7C 08 02 A6 */	mflr r0
/* 80505A9C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80505AA0  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80505AA4  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80505AA8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80505AAC  4B E5 C7 31 */	bl _savegpr_29
/* 80505AB0  7C 7E 1B 78 */	mr r30, r3
/* 80505AB4  FF E0 08 90 */	fmr f31, f1
/* 80505AB8  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 80505ABC  3B A3 85 84 */	addi r29, r3, lit_4208@l /* 0x80518584@l */
/* 80505AC0  4B CA 29 B5 */	bl dKy_Sound_get__Fv
/* 80505AC4  7C 7F 1B 78 */	mr r31, r3
/* 80505AC8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80505ACC  3C 03 00 01 */	addis r0, r3, 1
/* 80505AD0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80505AD4  41 82 01 DC */	beq lbl_80505CB0
/* 80505AD8  28 1E 00 00 */	cmplwi r30, 0
/* 80505ADC  41 82 00 0C */	beq lbl_80505AE8
/* 80505AE0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80505AE4  48 00 00 08 */	b lbl_80505AEC
lbl_80505AE8:
/* 80505AE8  38 00 FF FF */	li r0, -1
lbl_80505AEC:
/* 80505AEC  7C 03 00 40 */	cmplw r3, r0
/* 80505AF0  41 82 01 C0 */	beq lbl_80505CB0
/* 80505AF4  38 61 00 0C */	addi r3, r1, 0xc
/* 80505AF8  7F E4 FB 78 */	mr r4, r31
/* 80505AFC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80505B00  4B D6 10 35 */	bl __mi__4cXyzCFRC3Vec
/* 80505B04  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80505B08  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80505B0C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80505B10  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80505B14  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80505B18  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80505B1C  38 61 00 30 */	addi r3, r1, 0x30
/* 80505B20  4B E4 16 19 */	bl PSVECSquareMag
/* 80505B24  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80505B28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80505B2C  40 81 00 58 */	ble lbl_80505B84
/* 80505B30  FC 00 08 34 */	frsqrte f0, f1
/* 80505B34  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 80505B38  FC 44 00 32 */	fmul f2, f4, f0
/* 80505B3C  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 80505B40  FC 00 00 32 */	fmul f0, f0, f0
/* 80505B44  FC 01 00 32 */	fmul f0, f1, f0
/* 80505B48  FC 03 00 28 */	fsub f0, f3, f0
/* 80505B4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80505B50  FC 44 00 32 */	fmul f2, f4, f0
/* 80505B54  FC 00 00 32 */	fmul f0, f0, f0
/* 80505B58  FC 01 00 32 */	fmul f0, f1, f0
/* 80505B5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80505B60  FC 02 00 32 */	fmul f0, f2, f0
/* 80505B64  FC 44 00 32 */	fmul f2, f4, f0
/* 80505B68  FC 00 00 32 */	fmul f0, f0, f0
/* 80505B6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80505B70  FC 03 00 28 */	fsub f0, f3, f0
/* 80505B74  FC 02 00 32 */	fmul f0, f2, f0
/* 80505B78  FC 21 00 32 */	fmul f1, f1, f0
/* 80505B7C  FC 20 08 18 */	frsp f1, f1
/* 80505B80  48 00 00 88 */	b lbl_80505C08
lbl_80505B84:
/* 80505B84  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 80505B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80505B8C  40 80 00 10 */	bge lbl_80505B9C
/* 80505B90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80505B94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80505B98  48 00 00 70 */	b lbl_80505C08
lbl_80505B9C:
/* 80505B9C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80505BA0  80 81 00 08 */	lwz r4, 8(r1)
/* 80505BA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80505BA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80505BAC  7C 03 00 00 */	cmpw r3, r0
/* 80505BB0  41 82 00 14 */	beq lbl_80505BC4
/* 80505BB4  40 80 00 40 */	bge lbl_80505BF4
/* 80505BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80505BBC  41 82 00 20 */	beq lbl_80505BDC
/* 80505BC0  48 00 00 34 */	b lbl_80505BF4
lbl_80505BC4:
/* 80505BC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80505BC8  41 82 00 0C */	beq lbl_80505BD4
/* 80505BCC  38 00 00 01 */	li r0, 1
/* 80505BD0  48 00 00 28 */	b lbl_80505BF8
lbl_80505BD4:
/* 80505BD4  38 00 00 02 */	li r0, 2
/* 80505BD8  48 00 00 20 */	b lbl_80505BF8
lbl_80505BDC:
/* 80505BDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80505BE0  41 82 00 0C */	beq lbl_80505BEC
/* 80505BE4  38 00 00 05 */	li r0, 5
/* 80505BE8  48 00 00 10 */	b lbl_80505BF8
lbl_80505BEC:
/* 80505BEC  38 00 00 03 */	li r0, 3
/* 80505BF0  48 00 00 08 */	b lbl_80505BF8
lbl_80505BF4:
/* 80505BF4  38 00 00 04 */	li r0, 4
lbl_80505BF8:
/* 80505BF8  2C 00 00 01 */	cmpwi r0, 1
/* 80505BFC  40 82 00 0C */	bne lbl_80505C08
/* 80505C00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80505C04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80505C08:
/* 80505C08  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80505C0C  40 80 00 A4 */	bge lbl_80505CB0
/* 80505C10  38 61 00 3C */	addi r3, r1, 0x3c
/* 80505C14  4B B7 20 55 */	bl __ct__11dBgS_LinChkFv
/* 80505C18  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80505C1C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80505C20  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80505C24  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80505C28  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80505C2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80505C30  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80505C34  EC 01 10 2A */	fadds f0, f1, f2
/* 80505C38  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80505C3C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80505C40  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80505C44  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80505C48  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80505C4C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80505C50  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80505C54  EC 01 10 2A */	fadds f0, f1, f2
/* 80505C58  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80505C5C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80505C60  38 81 00 24 */	addi r4, r1, 0x24
/* 80505C64  38 A1 00 18 */	addi r5, r1, 0x18
/* 80505C68  7F C6 F3 78 */	mr r6, r30
/* 80505C6C  4B B7 20 F9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80505C70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80505C74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80505C78  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80505C7C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80505C80  4B B6 E7 35 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80505C84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80505C88  40 82 00 1C */	bne lbl_80505CA4
/* 80505C8C  83 BF 00 0C */	lwz r29, 0xc(r31)
/* 80505C90  38 61 00 3C */	addi r3, r1, 0x3c
/* 80505C94  38 80 FF FF */	li r4, -1
/* 80505C98  4B B7 20 45 */	bl __dt__11dBgS_LinChkFv
/* 80505C9C  7F A3 EB 78 */	mr r3, r29
/* 80505CA0  48 00 00 14 */	b lbl_80505CB4
lbl_80505CA4:
/* 80505CA4  38 61 00 3C */	addi r3, r1, 0x3c
/* 80505CA8  38 80 FF FF */	li r4, -1
/* 80505CAC  4B B7 20 31 */	bl __dt__11dBgS_LinChkFv
lbl_80505CB0:
/* 80505CB0  38 60 00 00 */	li r3, 0
lbl_80505CB4:
/* 80505CB4  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80505CB8  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80505CBC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80505CC0  4B E5 C5 69 */	bl _restgpr_29
/* 80505CC4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80505CC8  7C 08 03 A6 */	mtlr r0
/* 80505CCC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80505CD0  4E 80 00 20 */	blr 
